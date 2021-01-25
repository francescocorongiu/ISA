library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity CARRY_SELECT_BLOCK is
	generic (numBit: Integer := 4);
	port (A:	In std_logic_vector(numBit-1 downto 0);
		  B:	In std_logic_vector(numBit-1 downto 0);
		  Ci:	In std_logic;
		  S:	Out std_logic_vector(numBit-1 downto 0));
end CARRY_SELECT_BLOCK;

architecture STRUCTURAL of CARRY_SELECT_BLOCK is

component RCA_GENERIC_ADD is 
	generic (N: integer :=4);
	Port (A: in std_logic_vector(N-1 downto 0);
		B: in std_logic_vector(N-1 downto 0);
		Ci: in std_logic;
		S: out std_logic_vector(N-1 downto 0);
		Co: out std_logic;
		C_n1: out std_logic);
end component;

component MUX21_GENERIC is
	generic (N: Integer := 4);
	port (A:In	std_logic_vector(N-1 downto 0);
		B:	In	std_logic_vector(N-1 downto 0);
		S:	In	std_logic;						 -- select port
		Y:	Out	std_logic_vector(N-1 downto 0)); -- output port
end component;

signal sum0, sum1:	std_logic_vector(numBit-1 downto 0);

begin

	RCA0: RCA_GENERIC_ADD	generic map (numBit)
						port map (A, B, '0', sum0);

	RCA1: RCA_GENERIC_ADD	generic map (numBit)
						port map (A, B, '1', sum1);

	MUX1: MUX21_GENERIC	generic map (numBit)
						port map  (sum0, sum1, Ci, S);

end STRUCTURAL;