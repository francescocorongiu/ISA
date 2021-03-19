library IEEE;
use IEEE.std_logic_1164.all; --  libreria IEEE con definizione tipi standard logic

ENTITY mux21 is
    GENERIC (nBit: integer:= 24);
	PORT (
	  A: 	IN	std_logic_vector (nBit-1 downto 0);
	  B: 	IN	std_logic_vector (nBit-1 downto 0);
	  Sel:	IN	std_logic;		 	-- selector
	  En:	IN	std_logic;			-- enable (if '0' => Y=0)
	  Y: 	OUT std_logic_vector (nBit-1 downto 0));
END mux21;

ARCHITECTURE beh OF mux21 IS

BEGIN
  PROCESS(Sel, En, A, B)
  BEGIN
	IF En = '1' THEN
	  CASE SEL IS
		WHEN '0' 	=> Y <= A;
		WHEN '1' 	=> Y <= B;
		WHEN others => Y <= (others=>'X');
	  END CASE;
	ELSE
	  Y <= (others => '0');
	END IF;
  END PROCESS;

END beh;