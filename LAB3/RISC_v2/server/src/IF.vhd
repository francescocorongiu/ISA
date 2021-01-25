library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mytypes.all;

entity FETCH is
  generic(
	INST_SIZE: integer := 32;
	PC_SIZE: integer := 32
  );
  port(
	CLK :       	in std_logic;
	RST: 			in std_logic;
	IR_LATCH_EN: 	in std_logic;
	PC_WR_EN	: 	in std_logic;
	PC_LATCH_EN: 	in std_logic;
	PC_in: 			in std_logic_vector(PC_SIZE-1 downto 0);		-- PC register input
	IR_LATCH_in: 	in std_logic_vector(INST_SIZE-1 downto 0);	-- instruction read from IRAM
	MEM_ADD: 		out std_logic_vector(PC_SIZE-1 downto 0);		-- PC  sent to IRAM
	PC4_out:		out std_logic_vector(PC_SIZE-1 downto 0);		-- NPC output signal
	LATCH_PC_out: 	out std_logic_vector(PC_SIZE-1 downto 0);	-- pipelined PC output
	IR_LATCH_out: 	out std_logic_vector(INST_SIZE-1 downto 0)
	);
end FETCH;

architecture STRUCTURAL of FETCH is

component PC_ADDER is
  generic(
	NBIT :	integer := 32);
  port(
	A : in	std_logic_vector(NBIT-1 downto 0);
	S :	out	std_logic_vector(NBIT-1 downto 0)
	);
end component;

  signal PC_4, PC: std_logic_vector(PC_SIZE-1 downto 0);

  begin

  MEM_ADD <= PC;
  PC4_out <= PC_4;
			 
  ADDER: PC_ADDER generic map(PC_SIZE)
		 port map(A=> PC, S => PC_4);
		 
    
  -- purpose: Pipeline
  -- type   : sequential
  process(clk)
	begin			
	  if RISING_EDGE(clk) then
		if (RST = '1') then
		  if (IR_LATCH_EN = '1') then
			IR_LATCH_out <= IR_LATCH_in;
		  end if;
		  if (PC_LATCH_EN = '1') then
			LATCH_PC_out <= PC;
		  end if;
		  if (PC_WR_EN = '1') then
			PC <= PC_in;
		  end if;
		else
		  IR_LATCH_out <= (others => '0');
		  LATCH_PC_out <= (others => '0');
		  PC <= std_logic_vector(to_unsigned(16#400000#, PC_SIZE));
		end if;
	  end if;
  end process;

end STRUCTURAL;