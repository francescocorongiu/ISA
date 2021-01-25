library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;
use WORK.mytypes.all;

entity register_file is
	 generic (
		nBit_Word:	integer:= 32;
		n_Word:		integer:= 32);
	 port (
		CLK: 		IN std_logic;
		RST_N: 		IN std_logic;
		RD1: 		IN std_logic;
		RD2: 		IN std_logic;
		WR: 		IN std_logic;
		ADD_WR: 	IN std_logic_vector(log_2(n_Word)-1 downto 0);
		ADD_RD1: 	IN std_logic_vector(log_2(n_Word)-1 downto 0);
		ADD_RD2: 	IN std_logic_vector(log_2(n_Word)-1 downto 0);
		DATAIN: 	IN std_logic_vector(nBit_Word-1 downto 0);
		RF_OUT1: 	OUT std_logic_vector(nBit_Word-1 downto 0);
		RF_OUT2: 	OUT std_logic_vector(nBit_Word-1 downto 0));
end register_file;

architecture BEHAVIORAL of register_file is

    subtype REG_ADDR is natural range 0 to n_Word-1;	-- using natural type
	type REG_ARRAY is array(REG_ADDR) of std_logic_vector(nBit_Word-1 downto 0); 
	signal REGISTERS : REG_ARRAY; 

	
begin 
	regRW:process(CLK)
	begin
		if falling_edge(CLK) then	 	-- write operations are negative edge triggered:
			if (RST_N='0') then 		-- synchronous active low reset 
				REGISTERS <= (others=> (others =>'0'));
				RF_OUT1 <= (others=> '0');
				RF_OUT2 <= (others=> '0');
			end if;
				
			if (WR='1') then
				REGISTERS(to_integer(unsigned(ADD_WR))) <= DATAIN;
			end if;
		end if;
		
		if rising_edge(CLK) then		-- read operations are positive edge triggered:
			if (RD1='1') then
				RF_OUT1 <= REGISTERS(to_integer(unsigned(ADD_RD1)));
			else
				RF_OUT1 <= (others => '0');
			end if;
			
			if (RD2='1') then
				RF_OUT2 <= REGISTERS(to_integer(unsigned(ADD_RD2)));
			else
				RF_OUT2 <= (others => '0');
			end if;
		end if;
	end process regRW;

end BEHAVIORAL;