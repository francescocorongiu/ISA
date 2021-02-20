library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity PGBLOCK is
	port(	A:	In std_logic;
			B:	In std_logic;
			P:	Out std_logic;
			G:	Out std_logic);
end PGBLOCK;

architecture BEHAVIORAL of PGBLOCK is

begin 

	P <= A xor B;
	G <= A and B;

end BEHAVIORAL;
