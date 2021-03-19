library ieee; 
use ieee.std_logic_1164.all; 

ENTITY FA IS
  PORT(
	A:	IN	std_logic;
	B:	IN	std_logic;
	Ci:	IN	std_logic;
	S:	OUT	std_logic;
	Co:	OUT	std_logic
  );
END FA;

ARCHITECTURE beh OF FA IS

BEGIN

  S <= A xor B xor Ci;
  Co <= (A and B) or (B and Ci) or (A and Ci);
  
END beh;