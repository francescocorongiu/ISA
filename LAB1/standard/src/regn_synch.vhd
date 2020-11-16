-- REGISTRO N BIT SINCRONO CON ENABLE
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY regn_synch IS
GENERIC    (N        : integer:=8);
PORT       (R        : IN SIGNED(N-1 DOWNTO 0);
Clock, Resetn,Enable : IN STD_LOGIC;
Q : OUT SIGNED(N-1 DOWNTO 0));
END regn_synch;

ARCHITECTURE Behavior OF regn_synch IS
BEGIN

PROCESS (Clock)
BEGIN
	IF (Clock'EVENT AND Clock = '1') THEN
	
		IF (Resetn = '0') THEN
				Q <= (OTHERS => '0');
				
				ELSIF(Enable = '1') THEN
					
					Q <= R;
					
		 END IF;
	END IF;
END PROCESS;

END Behavior;