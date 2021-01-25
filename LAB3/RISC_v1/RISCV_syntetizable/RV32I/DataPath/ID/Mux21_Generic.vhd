library IEEE;
use IEEE.std_logic_1164.all;

entity MUX21_GENERIC is
  generic(N: Integer:= 32);
  port(
	A: in std_logic_vector(N-1 downto 0);
	B: in std_logic_vector(N-1 downto 0);
	S: in std_logic;	-- selector
	Y: out std_logic_vector(N-1 downto 0)
  );
end MUX21_GENERIC;

architecture BEHAVIORAL of MUX21_GENERIC is
begin
  Y <= A when S='0'
  else B;
end BEHAVIORAL;