library ieee; 
use ieee.std_logic_1164.all; 

entity HA is 
  port (	A:	In	std_logic;
	Ci:	In	std_logic;
	S:	Out	std_logic;
	Co:	Out	std_logic);
end HA;

architecture BEHAVIORAL of HA is

begin

  S <= A xor Ci;
  Co <= A and Ci;
  
end BEHAVIORAL;