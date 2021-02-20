library ieee;
use ieee.std_logic_1164.all;
use work.mytypes.all;

entity ID is
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
end ID;

architecture STRUCTURAL of ID is

component MUX31_GENERIC is
  generic(N: Integer:= 32);
  port(
	A: in std_logic_vector(N-1 downto 0);
	B: in std_logic_vector(N-1 downto 0);
	C: in std_logic_vector(N-1 downto 0);
	S: in std_logic_vector(1 downto 0);	-- selector
	Y: out std_logic_vector(N-1 downto 0)
  );
end component;

component MUX21_GENERIC is
  generic(N: Integer:= 32);
  port(
	A: in std_logic_vector(N-1 downto 0);
	B: in std_logic_vector(N-1 downto 0);
	S: in std_logic;
	Y: out std_logic_vector(N-1 downto 0)
  );
end component;

component J_ADDER is
  generic(
	NBIT: integer := 32);
  port (
	A: in std_logic_vector(NBIT-1 downto 0);
	B: in std_logic_vector(NBIT-1 downto 0);
	Cin: in std_logic;
	S : out std_logic_vector(NBIT-1 downto 0);
	Cout : out std_logic;
	C_n1: out std_logic);
end component;

component imm_extension is
	generic (N: integer := 32);
	port (
		INST_in:	in std_logic_vector(31 downto 7);
		IMM_TYPE:	in std_logic_vector(1 downto 0);
		IMM_ext:	out std_logic_vector(31 downto 0)
	);
end component;

  signal jump_target, jump_offset, BR_offset, BR_target, BR_J_offset: std_logic_vector(PC_SIZE-1 downto 0); -- the jump target address corresponds to the sum of the jump adder
  signal WRADD_d1, WRADD_d2, WRADD_d3, RF_ADD_RD1, RF_ADD_RD2: std_logic_vector(4 downto 0);
  signal imm_extended: std_logic_vector(WORD_SIZE-1 downto 0);

  begin
  
  -- jump offset from immediate field of J-type instructions (1-left shift)
  jump_offset(31 downto 20) <= (others => INST_in(31));
  jump_offset(19 downto 12) <= INST_in(19 downto 12);
  jump_offset(11) <= INST_in(20);
  jump_offset(10 downto 1) <= INST_in(30 downto 21);
  jump_offset(0) <= '0';
  
  -- BR offset from immediate field of SB-type instructions
  BR_offset(31 downto 12) <= (others => INST_in(31));
  BR_offset(11) <= INST_in(7);
  BR_offset(10 downto 5) <= INST_in(30 downto 25);
  BR_offset(4 downto 1) <= INST_in(11 downto 8);
  BR_offset(0) <= '0';
  
  
  JADD: J_ADDER
		generic map(PC_SIZE)
		port map(A => PC_in, B => BR_J_offset, Cin => '0', S => jump_target);

  MUX_JMP: MUX21_GENERIC
		generic map(PC_SIZE)
		port map(A => BR_offset, B => jump_offset, S => JUMP_SEL, Y => BR_J_offset);

  MUX_NPC: MUX31_GENERIC
		generic map(PC_SIZE)
		port map(A => PC_4_in, B => BR_target, C => jump_target, S => NPC_SEL, Y => NPC_out);
  
  IMM_BLOCK: imm_extension
		generic map(WORD_SIZE)
		port map(INST_in => INST_in(31 downto 7), IMM_TYPE => IMM_TYPE, IMM_ext => imm_extended);
  
  --connecting output ports for forwarding unit 
  RF_ADD_RD1 <= INST_in(19 downto 15);
  RF_ADD_RD2 <= INST_in(24 downto 20);
  RF_WR_ADD_MEM <= WRADD_d2;
  RF_WR_ADD <= WRADD_d3;
  
  -- purpose: Pipeline
  -- type   : sequential
  process(clk)
	begin
	if RISING_EDGE(clk) THEN
		BR_target <= jump_target;
		IMM_out <= imm_extended;
		WRADD_d3 <= WRADD_d2;
		WRADD_d2 <= WRADD_d1;
		WRADD_d1 <= INST_in(11 downto 7);
		RF_ADD_RD1_EX <= RF_ADD_RD1;
		RF_ADD_RD2_EX <= RF_ADD_RD2;
		if (PC_LATCH_EN = '1') then
			PC_out <= PC_in;
		end if;
	end if;
  end process;
   
END STRUCTURAL;
