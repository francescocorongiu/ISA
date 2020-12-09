library ieee; 
use ieee.std_logic_1164.all; 

ENTITY HA IS
  PORT(
	A:	IN	std_logic;
	B:	IN	std_logic;
	S:	OUT	std_logic;
	Co:	OUT	std_logic
  );
END HA;

ARCHITECTURE beh OF HA IS

BEGIN

  S <= A xor B;
  Co <= A and B;

END beh;