library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity gen_PG is				--block implementing the generic PG function
	port(Gik:	In std_logic;
		Pik:	In std_logic;
		Gk_1j:	In std_logic;
		Pk_1j:	In std_logic;
		Gij:	Out std_logic;
		Pij:	Out std_logic);
end gen_PG;

architecture BEHAVIORAL of gen_PG is

begin

	Gij <= Gik or (Pik and Gk_1j);
	Pij <= Pik and Pk_1j;

end BEHAVIORAL;
