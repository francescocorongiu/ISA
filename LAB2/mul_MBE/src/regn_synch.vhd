-- REGISTRO N BIT SINCRONO CON ENABLE
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY regn_synch IS
  GENERIC (
	N		: integer := 8);
  PORT (
	R		: IN	std_logic_vector (N-1 DOWNTO 0);
	Clock	: IN	std_logic;
	Q		: OUT	std_logic_vector (N-1 DOWNTO 0)
  );
END regn_synch;

ARCHITECTURE Behavior OF regn_synch IS
BEGIN

PROCESS (Clock)
BEGIN
  IF (Clock'EVENT AND Clock = '1') THEN
	Q <= R;			
  END IF;
END PROCESS;

END Behavior;