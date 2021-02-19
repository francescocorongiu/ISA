library IEEE;
use IEEE.std_logic_1164.all;
use WORK.mytypes.all;

entity tb_RV32I is
end tb_RV32I;

architecture TEST of tb_RV32I is

component RV32I is
  port (
    Clk:		in std_logic;
    Rst:		in std_logic;
	IRAM_DOUT:	in std_logic_vector(31 downto 0);
	RF_RD1_DATA:in std_logic_vector(31 downto 0);
	RF_RD2_DATA:in std_logic_vector(31 downto 0);
	DRAM_DOUT:	in std_logic_vector(31 downto 0);
	IRAM_ADD:	out std_logic_vector(31 downto 0);
	RF_RD1_EN:	out std_logic;
	RF_RD2_EN:	out std_logic;
	RF_WR_EN:	out std_logic;
	RF_RD1_ADD:	out std_logic_vector(4 downto 0);
	RF_RD2_ADD:	out std_logic_vector(4 downto 0);
	RF_WR_ADD:	out std_logic_vector(4 downto 0);
	RF_WR_DATA:	out std_logic_vector(31 downto 0);
	DRAM_WE:	out std_logic;
	DRAM_RE:	out std_logic;
	DRAM_ADD:	out std_logic_vector(31 downto 0);
	DRAM_DIN:	out std_logic_vector(31 downto 0)
	);
end component;

component IRAM is
  generic (
    I_SIZE : integer := 32);
  port (
    Rst  : in  std_logic;	-- Active Low
    Addr : in  std_logic_vector(I_SIZE - 1 downto 0);
    Dout : out std_logic_vector(I_SIZE - 1 downto 0)
    );
end component;

component DRAM is
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
end component;

component register_file is
	 generic (
		nBit_Word:	integer:= 32;
		n_Word:		integer:= 32);
	 port (
		CLK: 		in std_logic;
		RST_N: 		in std_logic;
		RD1: 		in std_logic;
		RD2: 		in std_logic;
		WR: 		in std_logic;
		ADD_WR: 	in std_logic_vector(log_2(n_Word)-1 downto 0);
		ADD_RD1: 	in std_logic_vector(log_2(n_Word)-1 downto 0);
		ADD_RD2: 	in std_logic_vector(log_2(n_Word)-1 downto 0);
		DATAIN: 	in std_logic_vector(nBit_Word-1 downto 0);
		RF_OUT1: 	out std_logic_vector(nBit_Word-1 downto 0);
		RF_OUT2: 	out std_logic_vector(nBit_Word-1 downto 0));
end component;

  constant SIZE_IR      : integer := 32;		-- Instruction Register Size
  constant SIZE_PC      : integer := 32;		-- Program Counter Size
  constant SIZE_DATA	: integer := 32;		-- Data Word Size

  signal Clock: std_logic := '0';
  signal Reset: std_logic := '1';
  signal RF_RD1_En_i, RF_RD2_En_i, RF_WR_En_i, DRAM_WR_En_i, DRAM_RD_En_i: std_logic;
  signal RF_RD1_Add_i, RF_RD2_Add_i, RF_WR_Add_i: std_logic_vector(4 downto 0);
  signal IRAM_Add_i: std_logic_vector(SIZE_PC-1 downto 0);
  signal INSTR_i: std_logic_vector(SIZE_IR-1 downto 0);
  signal DRAM_Dout_i, RF_RD1_Data_i, RF_RD2_Data_i, RF_WR_Data_i, DRAM_Add_i, DRAM_Din_i: std_logic_vector(SIZE_DATA-1 downto 0);

begin

  -- instance of RISCV
  U1: RV32I
	  port map(
		Clk => Clock, RST => Reset, IRAM_DOUT => INSTR_i, RF_RD1_DATA => RF_RD1_Data_i, RF_RD2_DATA => RF_RD2_Data_i, DRAM_DOUT => DRAM_Dout_i,
		IRAM_ADD => IRAM_Add_i, RF_RD1_EN => RF_RD1_En_i, RF_RD2_EN => RF_RD2_En_i, RF_WR_EN => RF_WR_En_i, RF_RD1_ADD => RF_RD1_Add_i, RF_RD2_ADD => RF_RD2_Add_i,
		RF_WR_ADD => RF_WR_Add_i, RF_WR_DATA => RF_WR_Data_i, DRAM_WE => DRAM_WR_En_i, DRAM_RE => DRAM_RD_En_i, DRAM_ADD => DRAM_Add_i, DRAM_DIN => DRAM_Din_i
	  );

  RF1: register_file
	  generic map(
		nBit_Word => SIZE_DATA, n_Word => 32)		
	  port map(
		CLK => Clock, RST_N => Reset, RD1 => RF_RD1_En_i, RD2 => RF_RD2_En_i, WR => RF_WR_En_i, ADD_WR => RF_WR_Add_i, ADD_RD1 => RF_RD1_Add_i,
		ADD_RD2 => RF_RD2_Add_i, DATAIN => RF_WR_Data_i, RF_OUT1 => RF_RD1_Data_i, RF_OUT2 => RF_RD2_Data_i);

  IMem: IRAM
	  generic map (SIZE_IR)
      port map(Rst => Reset, Addr => IRAM_Add_i, Dout => INSTR_i);

  DMem: DRAM
	  generic map(SIZE_DATA)
	  port map(RST => Reset, Addr => DRAM_Add_i, Din => DRAM_Din_i, WR_EN => DRAM_WR_En_i, RD_EN => DRAM_RD_En_i, Dout => DRAM_Dout_i);

  PCLOCK: process(Clock)
  begin
	Clock <= not(Clock) after 4.6 ns;
  end process;

  Reset <= '0', '1' after 20 ns;

end TEST;
