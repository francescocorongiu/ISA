library ieee; 
use ieee.std_logic_1164.all;

entity PC_ADDER is
  generic(
	NBIT :	integer := 32);
  port(
	A : in	std_logic_vector(NBIT-1 downto 0);
	S :	out	std_logic_vector(NBIT-1 downto 0));
end PC_ADDER;

architecture STRUCTURAL of PC_ADDER is

  component HA is 
  port(
	A:	in std_logic;
	Ci: in std_logic;
	S:	out std_logic;
	Co: out std_logic);
  end component;

  signal Carry: std_logic_vector(NBIT-2 downto 2);

  begin
  S(1 downto 0) <= A(1 downto 0);
  S(2) <= NOT A(2);
  Carry(2) <= A(2);

  ADD: for I in 3 to NBIT-2 generate
	HA_i: HA port map(A(i), Carry(i-1), S(i), Carry(i));
  end generate;

  S(NBIT-1) <= Carry(NBIT-2) XOR A(NBIT-1);

end architecture STRUCTURAL;