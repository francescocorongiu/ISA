library IEEE;
use IEEE.std_logic_1164.all;

entity MUX41_GENERIC is
  generic(N: Integer:= 32);
  port(
	A: in std_logic_vector(N-1 downto 0);
	B: in std_logic_vector(N-1 downto 0);
	C: in std_logic_vector(N-1 downto 0);
	D: in std_logic_vector(N-1 downto 0);
	S: in std_logic_vector(1 downto 0);	-- selector
	Y: out std_logic_vector(N-1 downto 0)
  );
end MUX41_GENERIC;

architecture BEHAVIORAL of MUX41_GENERIC is
begin
  Y <= A when S = "00" else
	   B when S = "01" else
	   C when S = "10" else
	   D when S = "11" else A;
end BEHAVIORAL;