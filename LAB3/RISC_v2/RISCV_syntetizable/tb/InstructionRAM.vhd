library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

entity IRAM is
  generic (
    I_SIZE : integer := 32);
  port (
    Rst  : in  std_logic;	-- Active Low
    Addr : in  std_logic_vector(I_SIZE - 1 downto 0);
    Dout : out std_logic_vector(I_SIZE - 1 downto 0)
    );
end IRAM;

architecture IRam_Bhe of IRAM is

  constant RAM_DEPTH : integer := 200;

  type RAMtype is array (0 to RAM_DEPTH - 1) of std_logic_vector(I_SIZE - 1 downto 0); 

  signal IRAM_mem : RAMtype := (others => (others => '0' ));

begin

	Dout <= IRAM_mem(to_integer((unsigned(Addr)) - 16#400000#)/4); -- the address is normalized of the offset and it is right shifted to address 32-bit width cells

  -- purpose: This process is in charge of filling the Instruction RAM with the firmware
  -- type   : combinational
  FILL_MEM_P: process (Rst, Addr)
  
    file mem_fp: text;
    variable file_line : line;
    variable index : integer := 0;
    variable tmp_data_u : std_logic_vector(I_SIZE-1 downto 0);
  begin  -- process FILL_MEM_P
    if (Rst = '0') then
      file_open(mem_fp,"binary.txt",READ_MODE);
      while (not endfile(mem_fp)) loop
        readline(mem_fp,file_line);
        read(file_line,tmp_data_u);
        IRAM_mem(index) <= tmp_data_u;       
        index := index + 1;
      end loop;
	  file_close(mem_fp);
    end if;

  end process FILL_MEM_P;

end IRam_Bhe;