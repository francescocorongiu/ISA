library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use work.mytypes.all;

entity riscv_cu is
  generic (IR_SIZE : integer := 32);  -- Instruction Register Size
  port (
    Clk				: in  std_logic;  -- Clock
    Rst				: in  std_logic;  -- Reset:Active-Low
	BR_FLAG			: in  std_logic;  -- Active if a branch is taken
	
	
    -- Instruction Register
    IR_IN			: in  std_logic_vector(IR_SIZE - 1 downto 0);
    
    -- IF Control Signal
    IR_LATCH_EN		: out std_logic; 	-- Instruction Register Enable
	PC_WR_EN		: out std_logic;	-- ProgramCounter Register Enable
    PC_IF_LATCH_EN	: out std_logic;	-- Forwarded ProgramCounter Register Enable

    -- ID Control Signals
    NPC_SEL     	: out std_logic_vector(1 downto 0);	-- Selects the address for the new program counter (00=>PC_4, 01=>BR_Target, 11=>J_target)
	JUMP_SEL		: out std_logic;					-- Selects the offset format in case of branch/jump instructions (0=>BR_offset, 1=>J_offset)
	PC_ID_LATCH_EN	: out std_logic;					-- Forwarded ProgramCounter Register enable (ID phase)
	IMM_TYPE		: out std_logic_vector(1 downto 0);	-- Chooses the correct format for the immediate (00=>I-type, 01=>S-type, 10=>U-type)
	RegA_RD_EN      : out std_logic;					-- Register A Latch Enable
    RegB_RD_EN      : out std_logic;					-- Register B Latch Enable
	
    -- EX Control Signals
	PC_SEL			: out std_logic; 	-- Flag entering the FU to select the PC signal as ALUOP1
	IMM_SEL         : out std_logic;	-- Flag entering the FU to select the IMM signal as ALUOP2
	RF_WE_MEM       : out std_logic;	-- RF_WE signal pipelined only until the MEM stage
	WB_MUX_SEL_MEM  : out std_logic;	-- WB_MUX_SEL signal pipelined only until the MEM stage
	BRANCH_EN		: out std_logic;  	-- Branch enable signal (1 in case of branch instructions)

    -- ALU Operation Code
    ALU_OPCODE         : out aluOp;		 -- ALU operations control word
    
    -- MEM Control Signals
    DRAM_WE            : out std_logic;  -- Data RAM Write Enable
    DRAM_RE       : out std_logic;  	 -- Data RAM Read Enable

    -- WB Control signals
    WB_MUX_SEL         : out std_logic;  -- Write Back MUX Sel
    RF_WE              : out std_logic); -- Register File Write Enable
end riscv_cu;

architecture riscv_cu_hw of riscv_cu is

  constant CW_SIZE: integer := 18;
  type mem_array is array (integer range 0 to 7) of std_logic_vector(CW_SIZE - 1 downto 0);
 
  component OpCode_decoder is
	port(
	  OPCODE:		in std_logic_vector(OP_CODE_SIZE-1 downto 0);
	  LUT_address:	out std_logic_vector(2 downto 0)
	);
  end component;

 --##### LUT ######
  constant cw_mem : mem_array := ("110000010000100011", --LUI
								"111000110001100011", --AUIPC
								"110000000100100101", --LW
								"110000000100100011", --I.Type (ADDI, ANDI, SRAI, ABSI)
								"110000000110000011", --R.Type (ADD, SLT, XOR)
								"110000001110101000", --SW
								"111000000110010000", --BEQ
								"101111000000000000" --JAL
								);
 --##### LUT ######

  -- signals declaration
  signal IR_opcode	: std_logic_vector(OP_CODE_SIZE-1 downto 0);	-- OpCode field of INSTRUCTION word
  signal IR_func3	: std_logic_vector(2 downto 0);					-- Func3 field of INSTRUCTION word
  signal LUT_index	: std_logic_vector(2 downto 0);					-- output word from the LUT decoder
  
  signal cw_LUT : std_logic_vector(CW_SIZE - 1 downto 0);			-- control word at the output of the Look Up Table

  -- control word is shifted to the correct stage
  signal cw1 : std_logic_vector(CW_SIZE - 1 downto 0);
  signal cw2, cw2_i : std_logic_vector(CW_SIZE - 4 downto 0); -- ID stage
  signal cw3 : std_logic_vector(CW_SIZE - 12 downto 0); -- EX stage
  signal cw4 : std_logic_vector(CW_SIZE - 15 downto 0); -- MEM stage
  signal cw5 : std_logic_vector(CW_SIZE - 17 downto 0); -- WB stage

  signal aluOpcode1: aluOp; -- ALUOP IF stage
  signal aluOpcode2: aluOp;	-- ALUOP ID stage
  signal aluOpcode3: aluOp;	-- ALUOP EX stage

  -- FSM state signal
  type stateType is (normal_flow, wait_1, id_flush, ex_flush);
  signal state_var: stateType;

begin

  IR_opcode <= IR_IN(OP_CODE_SIZE-1 downto 0);
  IR_func3 <= IR_IN(14 downto 12);

  DEC_1: OpCode_decoder port map(OPCODE => IR_opcode, LUT_address => LUT_index);

  cw_LUT <= cw_mem(to_integer(unsigned(LUT_index)));

  -- stage one control signals
  IR_LATCH_EN  	 <= cw1(CW_SIZE - 1);
  PC_WR_EN 		 <= cw1(CW_SIZE - 2);
  PC_IF_LATCH_EN <= cw1(CW_SIZE - 3);
  
  -- stage two control signals
  NPC_SEL			<= cw2(CW_SIZE - 4 downto CW_SIZE - 5);
  JUMP_SEL			<= cw2(CW_SIZE - 6);
  PC_ID_LATCH_EN	<= cw2(CW_SIZE - 7);
  IMM_TYPE			<= cw2(CW_SIZE - 8 downto CW_SIZE - 9);
  RegA_RD_EN		<= cw2(CW_SIZE - 10);
  RegB_RD_EN		<= cw2(CW_SIZE - 11);
  
  -- stage three control signals
  PC_SEL      		<= cw3(CW_SIZE - 12);
  IMM_SEL     		<= cw3(CW_SIZE - 13);
  BRANCH_EN			<= cw3(CW_SIZE - 14);
  
  -- stage four control signals
  DRAM_WE			<= cw4(CW_SIZE - 15);
  DRAM_RE			<= cw4(CW_SIZE - 16);
  WB_MUX_SEL_MEM    <= cw4(CW_SIZE - 17);
  RF_WE_MEM 		<= cw4(CW_SIZE - 18);
  
  -- stage five control signals
  WB_MUX_SEL 		<= cw5(CW_SIZE - 17);
  RF_WE      		<= cw5(CW_SIZE - 18);


  -- purpose: Pipeline the Control Signals
  -- type   : Sequential
  -- inputs : cw1, aluOpcode1
  -- outputs: cw2, cw3, cw4, cw5, aluOpcode2, aluOpcode3
  CW_PIPE: process (Clk, Rst)
  begin  -- process Clk
    if Rst = '0' then			-- asynchronous reset (active low)
      cw2_i <= (others => '0');
      cw3 <= (others => '0');
      cw4 <= (others => '0');
      cw5 <= (others => '0');
    elsif Clk'event and Clk = '1' then  -- rising clock edge
	  cw2_i <= cw1(CW_SIZE - 4 downto 0);
      cw3 <= cw2(CW_SIZE - 12 downto 0);
      cw4 <= cw3(CW_SIZE - 15 downto 0);
      cw5 <= cw4(CW_SIZE - 17 downto 0);

      aluOpcode2 <= aluOpcode1;
      aluOpcode3 <= aluOpcode2;
    end if;
  end process CW_PIPE;

  ALU_OPCODE <= aluOpcode3;


  -- purpose: Stall the pipeline in case of hazards
  -- type   : FSM
  -- inputs : state_var, IR_opcode
  -- outputs: cw1
  FSM_TRANS: process (Clk, Rst)
  begin
    if Rst = '0' then				-- active low asynchronous reset
	  state_var <= normal_flow;
	elsif (Clk'event AND Clk='1') then
      case state_var is
	  
		when normal_flow | ex_flush =>
		  case IR_opcode is
			when BTYPE_BEQ =>
			  state_var <= wait_1;
			when JTYPE_JAL =>
			  state_var <= id_flush;
			when others =>
			  state_var <= normal_flow;
		  end case;

		when wait_1 =>
			state_var <= ex_flush;

		when others =>				-- it includes ex_flush and id_flush states
			state_var <= normal_flow;

	  end case;
	end if;
  end process FSM_TRANS;
  
  FSM_OUTPUT: process (cw2_i, cw_LUT, state_var, BR_FLAG)
  begin
	case state_var is

	  when ex_flush =>
		if (BR_FLAG = '1') then			-- if the branch is taken, flush the instructions in stages ID and IF
		  cw2 <= "010000000000000";		-- in ID stage: force NPC_SEL to 01 (BR_target)
		  cw1 <= "010000000000000000";	-- in IF stage: enable only PC_WR_EN 
		else
		  cw1 <= cw_LUT;
		  cw2 <= cw2_i;
		end if;

	  when id_flush =>					-- flush the instruction in stage IF
		cw1 <= "010000000000000000";	-- in IF stage enable only PC_WR_EN; in ID stage set NPC_SEL to 00 (PC+4)
		cw2 <= cw2_i;

	  when normal_flow | wait_1 =>
	    cw1 <= cw_LUT;
		cw2 <= cw2_i;
	end case;
  end process FSM_OUTPUT;
  
  -- purpose: Generation of ALU OpCode
  -- type   : combinational
  -- inputs : IR_i
  -- outputs: aluOpcode
  ALU_OPCODE_P: process (IR_opcode, IR_func3)
  begin  -- process ALU_OP_CODE_P
	case IR_opcode is
	    
		-- opcodes of ADDI, ANDI, SRAI, ABSI are the same, need to see func3
		when ITYPE_ADDI =>
			case IR_func3 is
				when ANDI_FUNC3 => aluOpcode1 <= ANDD;
				when SRAI_FUNC3 => aluOpcode1 <= ARS;
				when ABSI_FUNC3 => aluOpcode1 <= ABSI;
				when others => aluOpcode1 <= ADDS; -- it includes the case of ADDI
			end case;
			
		-- opcodes of ADD, SLT, XOR are the same, need to see func3
		when RTYPE_ADD =>
			case IR_func3 is
				when SLT_FUNC3 => aluOpcode1 <= LT;
				when XOR_FUNC3 => aluOpcode1 <= EXOR;
				when others => aluOpcode1 <= ADDS;
			end case;
		
		when UTYPE_LUI => aluOpcode1 <= LUI;		
		
		when BTYPE_BEQ => aluOpcode1 <= EQ;
		
		when others => aluOpcode1 <= ADDS; -- it includes the case of ADD, AUIPC, JAL, SW, LW
	end case;

  end process ALU_OPCODE_P;

end riscv_cu_hw;
