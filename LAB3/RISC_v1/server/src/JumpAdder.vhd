library ieee; 
use ieee.std_logic_1164.all;

entity J_ADDER is
  generic(
	NBIT: integer := 32);
  port (
	A: in std_logic_vector(NBIT-1 downto 0);
	B: in std_logic_vector(NBIT-1 downto 0);
	Cin: in std_logic;
	S : out std_logic_vector(NBIT-1 downto 0);
	Cout : out std_logic;
	C_n1: out std_logic);
end J_ADDER;

architecture STRUCTURAL of J_ADDER is

component CARRY_GENERATOR is
  generic(
	NBIT :		integer := 32;
	NBIT_PER_BLOCK: integer := 4);
  port (
	A: in std_logic_vector(NBIT-1 downto 0);
	B: in std_logic_vector(NBIT-1 downto 0);
	Cin: in std_logic;
	Co: out std_logic_vector((NBIT/NBIT_PER_BLOCK)-1 downto 0));
end component;

component SUM_GENERATOR is
  generic(
	NBIT:	integer := 32;
	NBLOCK:	integer := 8);
  port(
	A: in std_logic_vector(NBIT-1 downto 0);
	B: in std_logic_vector(NBIT-1 downto 0);
	Ci: in std_logic_vector(NBLOCK downto 0);
	S: out std_logic_vector(NBIT-1 downto 0);
	Co: out std_logic;
	C_n1: out std_logic);
end component;

constant NBIT_PER_BLOCK : natural := 4;
constant NBLOCK: natural := NBIT/NBIT_PER_BLOCK;

signal carry_gen_cout: std_logic_vector (NBLOCK-1 downto 0);	-- carry out of the carry generator block
signal sum_gen_cin: std_logic_vector (NBLOCK downto 0);			-- input carry vector of sum generator

begin

	CARRY: CARRY_GENERATOR generic map (NBIT, NBIT_PER_BLOCK)
						   port map (A, B, Cin, carry_gen_cout);

	SUM: SUM_GENERATOR generic map (NBIT, NBLOCK)
					   port map (A, B, sum_gen_cin, S, Cout, C_n1);

	sum_gen_cin <= carry_gen_cout(NBLOCK-1 downto 0) & Cin;	-- internal carries of the sum generator block

end architecture STRUCTURAL;

