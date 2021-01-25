library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity EXT_CSB is
	generic (numBit: Integer := 4);
	port (A: in std_logic_vector(numBit-1 downto 0);
		  B: in std_logic_vector(numBit-1 downto 0);
		  Ci: in std_logic;
		  S: out std_logic_vector(numBit-1 downto 0);
		  C_n1: out std_logic);
end EXT_CSB;

architecture STRUCTURAL of EXT_CSB is

component RCA_GENERIC_ADD 
	generic (N : Integer :=4);
	port (A: in	std_logic_vector(N-1 downto 0);
		B: in std_logic_vector(N-1 downto 0);
		Ci:	in std_logic;
		S: out std_logic_vector(N-1 downto 0);
		Co: out std_logic;
		C_n1: out std_logic);
end component;

component MUX21_GENERIC is
  generic (N: Integer := 4);
  port (
	A: in	std_logic_vector(N-1 downto 0);
	B: in std_logic_vector(N-1 downto 0);
	S: in std_logic;						 -- select port
	Y: out std_logic_vector(N-1 downto 0)); -- output port
end component;

signal sum0, sum1:	std_logic_vector(numBit-1 downto 0);
signal c_n1_1, c_n1_0, c_n1_out: std_logic_vector(0 downto 0);	-- using vectors of 1 element because the mux accepts only vectors

begin

	RCA0: RCA_GENERIC_ADD	generic map (numBit)
						port map (A => A, B => B, Ci => '0', S => sum0, C_n1 => c_n1_0(0));

	RCA1: RCA_GENERIC_ADD	generic map (numBit)
						port map (A => A, B => B, Ci => '1', S => sum1, C_n1 => c_n1_1(0));

	MUX_SUM: MUX21_GENERIC	generic map (numBit)
							port map (sum0, sum1, Ci, S);

	MUX_CN_1: MUX21_GENERIC	generic map (1)
							port map (c_n1_0, c_n1_1, Ci, c_n1_out);
							
	C_n1 <= c_n1_out(0);

end STRUCTURAL;