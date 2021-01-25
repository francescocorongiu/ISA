library ieee;
use ieee.std_logic_1164.all;
use work.mytypes.all;

entity MEM is
  generic(
	WORD_SIZE: integer := 32
  );
  port(
	CLK:		in std_logic;
	ALUOUT_in:	in std_logic_vector (WORD_SIZE-1 downto 0);
	LMD_in:		in std_logic_vector(WORD_SIZE-1 downto 0);
	LMD_out:	out std_logic_vector (WORD_SIZE-1 downto 0);
	ALU_FORWARD_out: out std_logic_vector(WORD_SIZE-1 downto 0)
  );
end MEM;

architecture STRUCTURAL of MEM is

component REG is
  generic (N: integer := 32);
  port(
	D: in std_logic_vector(N-1 downto 0);
	CK: in std_logic;
	EN: in std_logic;
	RESET: in std_logic;
	Q: out std_logic_vector(N-1 downto 0) 
  );
end component;

  begin
  
  -- purpose: Pipeline
  -- type   : sequential
  process(clk)
	begin
	if RISING_EDGE(clk) THEN
		LMD_out <= LMD_in;
		ALU_FORWARD_out <= ALUOUT_in;	
	end if;
  end process;		   

end STRUCTURAL;