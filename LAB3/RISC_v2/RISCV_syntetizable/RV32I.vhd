library ieee;
use ieee.std_logic_1164.all;
use work.mytypes.all;

entity RV32I is
  generic(
    IR_SIZE      : integer := 32;       -- Instruction Register Size
    PC_SIZE      : integer := 32;       -- Program Counter Size
	DATA_SIZE	 : integer := 32		-- Data Word Size
	);
  port (
    Clk:		in std_logic;
    Rst:		in std_logic;
	IRAM_DOUT:	in std_logic_vector(IR_SIZE-1 downto 0);
	RF_RD1_DATA:in std_logic_vector(DATA_SIZE-1 downto 0);
	RF_RD2_DATA:in std_logic_vector(DATA_SIZE-1 downto 0);
	DRAM_DOUT:	in std_logic_vector(DATA_SIZE-1 downto 0);
	IRAM_ADD:	out std_logic_vector(PC_SIZE-1 downto 0);
	RF_RD1_EN:	out std_logic;
	RF_RD2_EN:	out std_logic;
	RF_WR_EN:	out std_logic;
	RF_RD1_ADD:	out std_logic_vector(4 downto 0);
	RF_RD2_ADD:	out std_logic_vector(4 downto 0);
	RF_WR_ADD:	out std_logic_vector(4 downto 0);
	RF_WR_DATA:	out std_logic_vector(DATA_SIZE-1 downto 0);
	DRAM_WE:	out std_logic;
	DRAM_RE:	out std_logic;
	DRAM_ADD:	out std_logic_vector(DATA_SIZE-1 downto 0);
	DRAM_DIN:	out std_logic_vector(DATA_SIZE-1 downto 0)
	);
end RV32I;

architecture RV32I_rtl of RV32I is

 --------------------------------------------------------------------
 -- Components Declaration
 --------------------------------------------------------------------

component riscv_cu is
  generic (IR_SIZE : integer := 32);  
  port (
    Clk				: in  std_logic;  
    Rst				: in  std_logic;  
	BR_FLAG			: in  std_logic;  
    IR_IN			: in  std_logic_vector(IR_SIZE - 1 downto 0);
    IR_LATCH_EN		: out std_logic; 
	PC_WR_EN		: out std_logic;
    PC_IF_LATCH_EN	: out std_logic;
    NPC_SEL     	: out std_logic_vector(1 downto 0);	
	JUMP_SEL		: out std_logic;					
	PC_ID_LATCH_EN	: out std_logic;					
	IMM_TYPE		: out std_logic_vector(1 downto 0);	
	RegA_RD_EN      : out std_logic;					
    RegB_RD_EN      : out std_logic;					
	PC_SEL			: out std_logic; 	
	IMM_SEL         : out std_logic;	
	RF_WE_MEM       : out std_logic;	
	WB_MUX_SEL_MEM  : out std_logic;	
	BRANCH_EN		: out std_logic;  	
    ALU_OPCODE      : out aluOp;		
    DRAM_WE         : out std_logic; 
    DRAM_RE         : out std_logic; 
    WB_MUX_SEL      : out std_logic; 
    RF_WE           : out std_logic);
end component;

component DATAPATH is
  generic(
	I_SIZE:		integer := 32;
    PC_SIZE:	integer := 32;
	WORD_SIZE:	integer := 32);
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
end component;

  ----------------------------------------------------------------
  -- Signals Declaration
  ----------------------------------------------------------------
  
  -- Control Unit Bus signals
  signal IR_LATCH_EN_i:		std_logic;
  signal PC_WR_EN_i:		std_logic;
  signal PC_IF_LATCH_EN_i:	std_logic;
  signal PC_ID_LATCH_EN_i:	std_logic;
  signal NPC_SEL_i:			std_logic_vector(1 downto 0);
  signal IMM_TYPE_i:		std_logic_vector(1 downto 0);
  signal PC_SEL_i:			std_logic;
  signal IMM_SEL_i:			std_logic;
  signal RF_WE_MEM_i:		std_logic;
  signal WB_MUX_SEL_MEM_i:  std_logic;
  signal BR_FLAG_i:			std_logic;
  signal JUMP_SEL_i:		std_logic;
  signal BRANCH_EN_i:		std_logic;
  signal ALU_OPCODE_i:		aluOp;
  signal WB_MUX_SEL_i:		std_logic;
  signal RF_WE_i:			std_logic;

  begin  -- RV32I

  RF_WR_EN <= RF_WE_i;

    -- Control Unit Instantiation
    CU_I: riscv_cu
		generic map(IR_SIZE => IR_SIZE)
		port map(Clk => Clk, Rst => Rst, BR_FLAG => BR_FLAG_i, IR_IN => IRAM_DOUT, IR_LATCH_EN => IR_LATCH_EN_i,
				 PC_WR_EN => PC_WR_EN_i, PC_IF_LATCH_EN => PC_IF_LATCH_EN_i, NPC_SEL => NPC_SEL_i, 
				 JUMP_SEL => JUMP_SEL_i, PC_ID_LATCH_EN => PC_ID_LATCH_EN_i,
				 IMM_TYPE => IMM_TYPE_i, RegA_RD_EN => RF_RD1_EN, RegB_RD_EN => RF_RD2_EN,
				 PC_SEL => PC_SEL_i, IMM_SEL => IMM_SEL_i, RF_WE_MEM => RF_WE_MEM_i,
				 WB_MUX_SEL_MEM => WB_MUX_SEL_MEM_i,
				 BRANCH_EN => BRANCH_EN_i, ALU_OPCODE => ALU_OPCODE_i,
				 DRAM_WE => DRAM_WE, DRAM_RE => DRAM_RE,
				 WB_MUX_SEL => WB_MUX_SEL_i, RF_WE => RF_WE_i);

	DATAPATH_I: DATAPATH
		generic map(I_SIZE => IR_SIZE, PC_SIZE => PC_SIZE, WORD_SIZE => DATA_SIZE)
		port map(CLK => Clk, RST => Rst, IR_LATCH_EN_CU => IR_LATCH_EN_i, PC_WR_EN_CU => PC_WR_EN_i, PC_LATCH_EN_CU => PC_IF_LATCH_EN_i,
				 IRAM_Dout => IRAM_DOUT, JMP_SEL_CU => JUMP_SEL_i, NPC_SEL_CU => NPC_SEL_i, PC_ID_LATCH_EN_CU => PC_ID_LATCH_EN_i,
				 RF_WE_CU => RF_WE_i, IMM_TYPE_CU => IMM_TYPE_i, RF_RD1_DATA => RF_RD1_DATA, RF_RD2_DATA => RF_RD2_DATA, BRANCH_EN_CU => BRANCH_EN_i,
				 ALUOPCODE_CU => ALU_OPCODE_i, PC_SEL_CU => PC_SEL_i, IMM_SEL_CU => IMM_SEL_i, RF_WE_MEM_CU => RF_WE_MEM_i, WB_MUX_SEL_MEM_CU => WB_MUX_SEL_MEM_i,
				 DRAM_DOUT => DRAM_DOUT, WB_MUXSEL_CU => WB_MUX_SEL_i, IRAM_ADD => IRAM_ADD, RF_RD1_ADD => RF_RD1_ADD, RF_RD2_ADD => RF_RD2_ADD,
				 RF_WR_ADD => RF_WR_ADD, RF_WR_DATA => RF_WR_DATA, DRAM_DIN => DRAM_DIN, DRAM_ADD => DRam_Add, BRANCH_FLAG_CU => BR_FLAG_i
				);

end RV32I_rtl;