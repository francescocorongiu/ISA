library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity gen_G is						--block implementing the generic G function
	port(	Gik:	In std_logic;
			Pik:	In std_logic;
			Gk_1j:	In std_logic;
			Gij:	Out std_logic);
end gen_G;

architecture BEHAVIORAL of gen_G is

begin

	Gij <= Gik or (Pik and Gk_1j);

end BEHAVIORAL;
