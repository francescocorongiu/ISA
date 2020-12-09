LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY D_FF IS
  PORT (
    D		: IN std_logic;
	Clock	: IN std_logic;
	Q		: OUT std_logic
  );
END D_FF;

ARCHITECTURE Behavior OF D_FF IS

BEGIN

  PROCESS (Clock)
  BEGIN
	IF (Clock'EVENT AND Clock = '1') THEN
	  Q <= D;
	END IF;
  END PROCESS;

END Behavior;