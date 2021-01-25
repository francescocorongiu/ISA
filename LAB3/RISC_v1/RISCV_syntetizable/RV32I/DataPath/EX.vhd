	library ieee;
use ieee.std_logic_1164.all;
use work.mytypes.all;

entity EX is
  generic(
	PC_SIZE: integer := 32;
	WORD_SIZE: integer := 32
	);
  port(
	CLK: 		in std_logic;
	REGA:		in std_logic_vector(WORD_SIZE-1 downto 0);
	REGB:		in std_logic_vector(WORD_SIZE-1 downto 0);
	PC_in:		in std_logic_vector(PC_SIZE-1 downto 0);
	IMMEDIATE:	in std_logic_vector(WORD_SIZE-1 downto 0);
	WB_MUX_DATA:in std_logic_vector(WORD_SIZE-1 downto 0);
	MUX_A_SEL:	in std_logic_vector(1 downto 0);
	MUX_B_SEL:	in std_logic_vector(1 downto 0);
	BRANCH_EN:	in std_logic;
	ALU_OPCODE: in aluOp;
	BR_FLAG:	out std_logic;
	ALU_out:	out std_logic_vector (WORD_SIZE-1 downto 0);
	B_FORWARD_out:	out std_logic_vector (WORD_SIZE-1 downto 0)
  );
end EX;

architecture STRUCTURAL of EX is

component MUX41_GENERIC is
  generic(N: Integer:= 32);
  port(
	A: in std_logic_vector(N-1 downto 0);
	B: in std_logic_vector(N-1 downto 0);
	C: in std_logic_vector(N-1 downto 0);
	D: in std_logic_vector(N-1 downto 0);
	S: in std_logic_vector(1 downto 0);	-- selector
	Y: out std_logic_vector(N-1 downto 0)
  );
end component;

component ALU is
  generic(
	WORD_SIZE: integer := 32);
  port(
	OPCODE: in aluOp;
	OP1: in std_logic_vector (WORD_SIZE-1 downto 0);
	OP2: in std_logic_vector (WORD_SIZE-1 downto 0);
	OUT_DATA: out std_logic_vector (WORD_SIZE-1 downto 0);
	ZERO_out: out std_logic
);
end component;

-- signal declarations
	signal ALU_IN1, ALU_IN2, ALU_out_i, ALU_OUT_MEM: std_logic_vector(WORD_SIZE-1 downto 0);
	signal ZERO_flag: std_logic;
begin

  -- Branch selection bit function
  BR_FLAG <= BRANCH_EN AND ZERO_flag;
  ALU_out <= ALU_OUT_MEM;

  ALU1: ALU
		  generic map(WORD_SIZE)
		  port map(OPCODE => ALU_OPCODE, OP1 => ALU_IN1, OP2 => ALU_IN2, OUT_DATA => ALU_out_i, ZERO_out => ZERO_flag);
		 
  MUXA: MUX41_GENERIC
		  generic map(WORD_SIZE)
		  port map(A => WB_MUX_DATA, B => ALU_OUT_MEM, C => PC_in, D => REGA, Y => ALU_IN1, S => MUX_A_SEL);
	
  MUXB: MUX41_GENERIC
		  generic map(WORD_SIZE)
		  port map(A => WB_MUX_DATA, B => ALU_OUT_MEM, C => IMMEDIATE, D => REGB, Y => ALU_IN2, S => MUX_B_SEL);
				   				  
  -- purpose: Pipeline
  -- type   : sequential
  process(clk)
	begin
	if RISING_EDGE(clk) THEN
		ALU_OUT_MEM <= ALU_out_i;
		B_FORWARD_out <= REGB;
	end if;
  end process;
   
end STRUCTURAL;