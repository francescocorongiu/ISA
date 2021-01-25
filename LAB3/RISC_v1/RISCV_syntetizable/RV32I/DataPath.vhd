library ieee;
use ieee.std_logic_1164.all;
use work.mytypes.all;

entity DATAPATH is
  generic(
	I_SIZE      : integer := 32;
    PC_SIZE     : integer := 32;
	WORD_SIZE	: integer := 32);
  port(
	CLK:				in std_logic;
	RST:				in std_logic;
	IR_LATCH_EN_CU:		in std_logic;
	PC_WR_EN_CU:		in std_logic;
	PC_LATCH_EN_CU:		in std_logic;
	IRAM_Dout:			in std_logic_vector(I_SIZE-1 downto 0);
	JMP_SEL_CU:			in std_logic;
	NPC_SEL_CU:			in std_logic_vector(1 downto 0);
	PC_ID_LATCH_EN_CU:	in std_logic;
	RF_WE_CU:			in std_logic;
	IMM_TYPE_CU:		in std_logic_vector(1 downto 0);
	PC_SEL_CU:			in std_logic;
	IMM_SEL_CU:			in std_logic;
	RF_RD1_DATA:		in std_logic_vector(WORD_SIZE-1 downto 0);
	RF_RD2_DATA:		in std_logic_vector(WORD_SIZE-1 downto 0);
	ALUOPCODE_CU:		in aluOp;
	BRANCH_EN_CU:		in std_logic;
	RF_WE_MEM_CU:		in std_logic;
	WB_MUX_SEL_MEM_CU:	in std_logic;
	DRAM_DOUT:			in std_logic_vector(WORD_SIZE-1 downto 0);
	WB_MUXSEL_CU:		in std_logic;
	IRAM_ADD:			out std_logic_vector(PC_SIZE-1 downto 0);
	RF_RD1_ADD:			out std_logic_vector(4 downto 0);
	RF_RD2_ADD:			out std_logic_vector(4 downto 0);
	RF_WR_ADD:			out std_logic_vector(4 downto 0);
	RF_WR_DATA:			out std_logic_vector(WORD_SIZE-1 downto 0);
	DRAM_DIN:			out std_logic_vector(WORD_SIZE-1 downto 0);
	DRAM_ADD:			out std_logic_vector(WORD_SIZE-1 downto 0);
	BRANCH_FLAG_CU:		out std_logic
	);
end DATAPATH;

architecture STRUCTURAL of DATAPATH is

component FETCH is
  generic(
	INST_SIZE: integer := 32;
	PC_SIZE: integer := 32
  );
  port(
	CLK : in std_logic;
	RST: in std_logic;
	IR_LATCH_EN: in std_logic;
	PC_WR_EN	: in std_logic;
	PC_LATCH_EN: in std_logic;
	PC_in: in std_logic_vector(PC_SIZE-1 downto 0);		-- PC register input
	IR_LATCH_in: in std_logic_vector(INST_SIZE-1 downto 0);	-- instruction read from IRAM
	MEM_ADD: out std_logic_vector(PC_SIZE-1 downto 0);		-- PC  sent to IRAM
	PC4_out: out std_logic_vector(PC_SIZE-1 downto 0);		-- PC4 output signal
	LATCH_PC_out: out std_logic_vector(PC_SIZE-1 downto 0);	-- pipelined PC output
	IR_LATCH_out: out std_logic_vector(INST_SIZE-1 downto 0)
	);
end component;

component ID is
  generic(
	PC_SIZE: integer := 32;
	INST_SIZE: integer := 32;
	WORD_SIZE: integer := 32
	);
  port(
	CLK:			in std_logic;
	RST:			in std_logic; 
	INST_in:		in std_logic_vector (INST_SIZE-1 downto 0);
	PC_in:			in std_logic_vector(PC_SIZE-1 downto 0);
	PC_4_in:		in std_logic_vector(PC_SIZE-1 downto 0);
	JUMP_SEL:		in std_logic;
	NPC_SEL:		in std_logic_vector(1 downto 0);
	PC_LATCH_EN:	in std_logic;
	IMM_TYPE:		in std_logic_vector(1 downto 0);	-- 00 -> I-type, 01 -> S-type, 10 -> U-type
	RF_WR_ADD:		out std_logic_vector(4 downto 0);
	RF_ADD_RD1_EX:	out std_logic_vector(4 downto 0);
	RF_ADD_RD2_EX:	out std_logic_vector(4 downto 0);
	RF_WR_ADD_MEM:	out std_logic_vector(4 downto 0);
	NPC_out:		out std_logic_vector(PC_SIZE-1 downto 0);
	PC_out:			out std_logic_vector (PC_SIZE-1 downto 0);
	IMM_out:		out std_logic_vector (PC_SIZE-1 downto 0)
  );
end component;

component EX is
  generic(
	PC_SIZE: integer := 32;
	WORD_SIZE: integer := 32
	);
  port(
	CLK: 		 in std_logic;
	REGA:		 in std_logic_vector(WORD_SIZE-1 downto 0);
	REGB:		 in std_logic_vector(WORD_SIZE-1 downto 0);
	PC_in:		 in std_logic_vector(PC_SIZE-1 downto 0);
	IMMEDIATE:	 in std_logic_vector(WORD_SIZE-1 downto 0);
	WB_MUX_DATA: in std_logic_vector(WORD_SIZE-1 downto 0);
	MUX_A_SEL:	 in std_logic_vector(1 downto 0);
	MUX_B_SEL:	 in std_logic_vector(1 downto 0);
	BRANCH_EN:	 in std_logic;
	ALU_OPCODE:  in aluOp;
	BR_FLAG:	out std_logic;
	ALU_out:	out std_logic_vector (WORD_SIZE-1 downto 0);
	B_FORWARD_out:		out std_logic_vector (WORD_SIZE-1 downto 0)
  );
end component;

component MEM is
  generic(
	WORD_SIZE: integer := 32
  );
  port(
	CLK:		in std_logic;
	ALUOUT_in:	in std_logic_vector (WORD_SIZE-1 downto 0);
	LMD_in:		in std_logic_vector(WORD_SIZE-1 downto 0);
	LMD_out:	out std_logic_vector (WORD_SIZE-1 downto 0);
	ALU_FORWARD_out: out std_logic_vector(WORD_SIZE-1 downto 0)
  );
end component;


component WB is
  generic(
	WORD_SIZE: integer := 32);
  port(
	WB_MUX_SEL: in std_logic;
	ALU_FORWARD: in std_logic_vector(WORD_SIZE-1 downto 0);
	LMD_DATA: in std_logic_vector(WORD_SIZE-1 downto 0);
	WB_MUX_out: out std_logic_vector(WORD_SIZE-1 downto 0)
  );
end component;

component forwarding_unit is 
  port (
	PC_SEL : in std_logic;
	IMM_SEL : in std_logic;
	RF_RD1_ADD_ID_EXE : in std_logic_vector(4 downto 0);
	RF_RD2_ADD_ID_EXE : in std_logic_vector(4 downto 0);
	RF_WE_EX_MEM : in std_logic;						
	RF_WR_ADD_EX_MEM : in std_logic_vector(4 downto 0);	
	WB_MUX_SEL_EX_MEM : in std_logic;					
	RF_WE_MEM_WB : in std_logic;						
	RF_WR_ADD_MEM_WB : in std_logic_vector(4 downto 0);	
	FORWARD_MUXA_SEL : out std_logic_vector(1 downto 0);
	FORWARD_MUXB_SEL : out std_logic_vector(1 downto 0)	
  );
end component;

-- signal declaration
signal INSTR, PC4, PC_seq0, PC_seq1, NEXT_PC_FB: std_logic_vector(PC_SIZE-1 downto 0);
signal WB_DATA_FB, B_FORWARD, IMM, ALUOUT_Data0, ALUOUT_Data1, LMD_DATA: std_logic_vector(WORD_SIZE-1 downto 0);
signal RD1_ADD_EXE_i, RD2_ADD_EXE_i, RF_WR_ADD_i, WR_ADD_MEM_fu: std_logic_vector(4 downto 0);
signal MUXA_SEL_fu, MUXB_SEL_fu: std_logic_vector(1 downto 0);

begin

  RF_RD1_ADD <= INSTR(19 downto 15);
  RF_RD2_ADD <= INSTR(24 downto 20);
  RF_WR_DATA <= WB_DATA_FB;
  RF_WR_ADD <= RF_WR_ADD_i;

  DRAM_ADD <= ALUOUT_Data0;
  DRAM_DIN <= B_FORWARD;

  First_st: FETCH
		generic map(INST_SIZE => I_SIZE, PC_SIZE => PC_SIZE)
		port map(
			CLK => CLK, RST => RST, IR_LATCH_EN => IR_LATCH_EN_CU, PC_WR_EN => PC_WR_EN_CU,
			PC_LATCH_EN => PC_LATCH_EN_CU, PC_in=> NEXT_PC_FB,  IR_LATCH_in => IRAM_Dout, MEM_ADD => IRAM_ADD,
			PC4_out => PC4, LATCH_PC_out=>PC_seq0, IR_LATCH_out => INSTR);
			
  Second_st: ID 
		generic map(PC_SIZE => PC_SIZE, INST_SIZE => I_SIZE, WORD_SIZE => WORD_SIZE)
		port map(
			CLK  => CLK, RST => RST, INST_in => INSTR, PC_in => PC_seq0, PC_4_in => PC4, JUMP_SEL => JMP_SEL_CU, NPC_SEL => NPC_SEL_CU,
			PC_LATCH_EN => PC_ID_LATCH_EN_CU, IMM_TYPE => IMM_TYPE_CU, RF_WR_ADD => RF_WR_ADD_i, RF_ADD_RD1_EX => RD1_ADD_EXE_i,
			RF_ADD_RD2_EX => RD2_ADD_EXE_i, RF_WR_ADD_MEM => WR_ADD_MEM_fu,	NPC_out => NEXT_PC_FB, PC_out => PC_seq1, imm_out => IMM);

  Third_st: EX 
		generic map(PC_SIZE => PC_SIZE, WORD_SIZE => WORD_SIZE)
		port map(						
			CLK => CLK, REGA => RF_RD1_DATA, REGB => RF_RD2_DATA, PC_in=>PC_seq1, IMMEDIATE => IMM, WB_MUX_DATA => WB_DATA_FB,
			 MUX_A_SEL => MUXA_SEL_fu, MUX_B_SEL => MUXB_SEL_fu, BRANCH_EN => BRANCH_EN_CU, ALU_OPCODE => ALUOPCODE_CU,
			 BR_FLAG => BRANCH_FLAG_CU, ALU_out => ALUOUT_Data0, B_FORWARD_out => B_FORWARD);

  FWU : forwarding_unit 
		port map(PC_SEL => PC_SEL_CU, IMM_SEL => IMM_SEL_CU, RF_RD1_ADD_ID_EXE => RD1_ADD_EXE_i, RF_RD2_ADD_ID_EXE => RD2_ADD_EXE_i,
			RF_WE_EX_MEM => RF_WE_MEM_CU, RF_WR_ADD_EX_MEM => WR_ADD_MEM_fu, WB_MUX_SEL_EX_MEM => WB_MUX_SEL_MEM_CU, RF_WE_MEM_WB => RF_WE_CU,
			RF_WR_ADD_MEM_WB => RF_WR_ADD_i, FORWARD_MUXA_SEL => MUXA_SEL_fu, FORWARD_MUXB_SEL => MUXB_SEL_fu);

  Fourth_st: MEM generic map(WORD_SIZE)
				 port map(CLK => CLK, ALUOUT_in => ALUOUT_Data0, LMD_in => DRAM_DOUT, LMD_out => LMD_DATA,
						  ALU_FORWARD_out => ALUOUT_Data1);

  Fifth_st: WB generic map(WORD_SIZE)
			   port map(LMD_DATA => LMD_DATA, ALU_FORWARD => ALUOUT_Data1, WB_MUX_SEL => WB_MUXSEL_CU, WB_MUX_out => WB_DATA_FB);

end STRUCTURAL;