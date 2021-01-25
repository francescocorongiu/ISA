library ieee;
use ieee.std_logic_1164.all;
use work.mytypes.all;

entity WB is
  generic(
	WORD_SIZE: integer := 32);
  port(
	WB_MUX_SEL: in std_logic;
	ALU_FORWARD: in std_logic_vector(WORD_SIZE-1 downto 0);
	LMD_DATA: in std_logic_vector(WORD_SIZE-1 downto 0);
	WB_MUX_out: out std_logic_vector(WORD_SIZE-1 downto 0)
  );
end WB;

architecture STRUCTURAL of WB is

component MUX21_GENERIC is
  generic(N: Integer:= 32);
  port(
	A: in std_logic_vector(N-1 downto 0);
	B: in std_logic_vector(N-1 downto 0);
	S: in std_logic;	-- selector
	Y: out std_logic_vector(N-1 downto 0)
  );
end component;

begin

  WB_MUX: MUX21_GENERIC 
			generic map(WORD_SIZE)
			port map(A => LMD_DATA, B => ALU_FORWARD, Y => WB_MUX_Out, S => WB_MUX_SEL);

end STRUCTURAL;