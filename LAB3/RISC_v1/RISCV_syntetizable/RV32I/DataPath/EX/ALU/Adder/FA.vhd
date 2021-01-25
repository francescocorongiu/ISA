library ieee; 
use ieee.std_logic_1164.all; 

entity FA is 
	Port (	A:	In	std_logic;
		B:	In	std_logic;
		Ci:	In	std_logic;
		S:	Out	std_logic;
		Co:	Out	std_logic);
end FA; 

architecture STRUCTURAL of FA is

begin

  S <= A xor B xor Ci;
  Co <= (A and B) or (B and Ci) or (A and Ci);
  
end STRUCTURAL;