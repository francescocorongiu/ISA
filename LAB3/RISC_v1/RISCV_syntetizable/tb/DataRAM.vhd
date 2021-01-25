library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

entity DRAM is
  generic (
	DATA_SIZE: integer := 32);
  port (
    RST: in std_logic;
    Addr: in std_logic_vector(31 downto 0);
	Din: in std_logic_vector(31 downto 0);
	WR_EN: in std_logic;
	RD_EN: in std_logic;
    Dout: out std_logic_vector(31 downto 0)
    );
end DRAM;

architecture BEHAVIOR of DRAM is

  constant RAM_DEPTH : integer := 4096;
  
  type RAMtype is array (0 to RAM_DEPTH-1) of std_logic_vector(7 downto 0);

  signal DRAM_mem : RAMtype := (others => (others => '0'));
  signal Addr_i : std_logic_vector(31 downto 0);
  
begin

-- purpose: Initialize the memory at reset and perform asynchronous read/write operations
-- type   : combinational
RD_P: process(Addr, WR_EN, RD_EN, Rst, Din)

  variable Address : integer;
  variable Dout_temp : std_logic_vector(31 downto 0);
  file mem_fp: text;
  variable file_line : line;
  variable index : integer := 0;
  variable tmp_data_u : std_logic_vector(DATA_SIZE-1 downto 0);

  begin
    if (Rst = '0') then
	  file_open(mem_fp,"data.txt",READ_MODE);
      while (index<1024) loop
        readline(mem_fp,file_line);
        read(file_line,tmp_data_u);
        DRAM_mem(index*4) <= tmp_data_u(DATA_SIZE-25 downto 0);       
        DRAM_mem(index*4+1) <= tmp_data_u(DATA_SIZE-17 downto DATA_SIZE-24);       
        DRAM_mem(index*4+2) <= tmp_data_u(DATA_SIZE-9 downto DATA_SIZE-16);       
        DRAM_mem(index*4+3) <= tmp_data_u(DATA_SIZE-1 downto DATA_SIZE-8);       
        index := index + 1;
      end loop;
	  file_close(mem_fp);

	else
	  Address := to_integer(unsigned(Addr)) - 16#10010000#;

	  if Address < 0 then 
		Address := 0;
	  end if;

	  if WR_EN='1' then								-- WRITE ENABLE active high
		DRAM_mem(Address+3) <= Din(31 downto 24);
		DRAM_mem(Address+2) <= Din(23 downto 16);
		DRAM_mem(Address+1) <= Din(15 downto 8);
		DRAM_mem(Address) <= Din(7 downto 0);		-- LSByte in the smaller address (because LittleEndian)
	  end if;
	  
	  if RD_EN='1' then
		Dout_temp(7 downto 0)   := DRAM_mem(Address);	-- LSByte from the smaller address (because LittleEndian)
		Dout_temp(15 downto 8)  := DRAM_mem(Address+1);
		Dout_temp(23 downto 16) := DRAM_mem(Address+2);
		Dout_temp(31 downto 24) := DRAM_mem(Address+1);
		
		Dout <= Dout_temp;
	  end if;
	end if;

end process;

end BEHAVIOR;