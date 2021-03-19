library ieee;
use ieee.std_logic_1164.all;

ENTITY enc3X3 IS
	PORT(
	  S_in:	IN std_logic_vector (2 downto 0);
	  Non0:	OUT std_logic;
	  Two:	OUT std_logic;
	  Neg:	OUT std_logic);
END enc3X3;

ARCHITECTURE beh OF enc3X3 IS

  signal S_out: std_logic_vector(2 downto 0);
  
BEGIN

  Non0 <= S_out(0);
  Two  <= S_out(1);
  Neg  <= S_out(2);

  PROCESS(S_in)
  BEGIN
	CASE S_in IS
	  WHEN "000"|"111"	=>	S_out <= "000";				-- select 0		
	  WHEN "001"|"010"	=>	S_out <= "001";				-- select a
	  WHEN "011"		=>	S_out <= "011";				-- select 2a
	  WHEN "100"		=>	S_out <= "111";				-- select -2a
	  WHEN "101"|"110"	=>	S_out <= "101";				-- select -a
	  WHEN others		=>	S_out<= (others => 'X');	--in case of errors
	END CASE;
  END PROCESS;

end beh;