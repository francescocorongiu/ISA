library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.all;

entity forwarding_unit is 
	port (
		PC_SEL : in std_logic;									-- flag proveniente dalla CU. 1->seleziona PC su MUXA
		IMM_SEL : in std_logic;									-- flag proveniente dalla CU. 1->seleziona IMM su MUXB

		RF_RD1_ADD_ID_EXE : in std_logic_vector(4 downto 0);	-- read address 1 del RF presente in EX stage
		RF_RD2_ADD_ID_EXE : in std_logic_vector(4 downto 0);	-- read address 2 del RF presente in EX stage

		RF_WE_EX_MEM : in std_logic;							-- write enable presente in MEM stage
		RF_WR_ADD_EX_MEM : in std_logic_vector(4 downto 0);		-- write address del RF presente in MEM stage
		WB_MUX_SEL_EX_MEM : in std_logic;						-- selettore WB MUX presente in MEM stage

		RF_WE_MEM_WB : in std_logic;							-- write enable presente in WB stage
		RF_WR_ADD_MEM_WB : in std_logic_vector(4 downto 0);		-- write address del RF presente in WB stage
		

		FORWARD_MUXA_SEL : out std_logic_vector(1 downto 0);	-- selettore MUXA
		FORWARD_MUXB_SEL : out std_logic_vector(1 downto 0)		-- selettore MUXB
	);
end forwarding_unit;

architecture structural of forwarding_unit is

	signal forward_muxa_sel_int : std_logic_vector(1 downto 0);
	signal forward_muxb_sel_int : std_logic_vector(1 downto 0);

begin

	forward_1 : process (RF_RD1_ADD_ID_EXE, RF_WE_EX_MEM, RF_WE_MEM_WB, RF_WR_ADD_EX_MEM, RF_WR_ADD_MEM_WB, WB_MUX_SEL_EX_MEM, PC_SEL)
	begin
		if (WB_MUX_SEL_EX_MEM = '1') and (RF_WE_EX_MEM = '1') and (RF_RD1_ADD_ID_EXE = RF_WR_ADD_EX_MEM) and (RF_RD1_ADD_ID_EXE /= "00000") then
			forward_muxa_sel_int <= "01";		-- seleziona ALUOUT del MEM stage nel MUXA

		elsif (RF_WE_MEM_WB = '1') and (RF_RD1_ADD_ID_EXE = RF_WR_ADD_MEM_WB) and (RF_RD1_ADD_ID_EXE /= "00000") then
			forward_muxa_sel_int <= "00";		-- seleziona MUX_DATA del WB stage nel MUXA 

		elsif (PC_SEL = '1') then
			forward_muxa_sel_int <= "10";		-- seleziona PC del ID stage nel MUXA
		else
			forward_muxa_sel_int <= "11";		-- seleziona REGA del ID stage nel MUXA
			
		end if;
	end process;

	forward_2 : process (RF_RD2_ADD_ID_EXE, RF_WE_EX_MEM, RF_WE_MEM_WB, RF_WR_ADD_EX_MEM, RF_WR_ADD_MEM_WB, WB_MUX_SEL_EX_MEM, IMM_SEL)
	begin
		if (WB_MUX_SEL_EX_MEM = '1') and (RF_WE_EX_MEM = '1') and (RF_RD2_ADD_ID_EXE = RF_WR_ADD_EX_MEM) and (RF_RD2_ADD_ID_EXE /= "00000") then
			forward_muxb_sel_int <= "01";		-- seleziona ALUOUT del MEM stage nel MUXB

		elsif (RF_WE_MEM_WB = '1') and (RF_RD2_ADD_ID_EXE = RF_WR_ADD_MEM_WB) and (RF_RD2_ADD_ID_EXE /= "00000") then
			forward_muxb_sel_int <= "00";		-- seleziona MUX_DATA del WB stage nel MUXB

		elsif (IMM_SEL = '1') then
			forward_muxb_sel_int <= "10";		-- seleziona IMM del ID stage nel MUXB
		else
			forward_muxb_sel_int <= "11";		-- seleziona REGB del ID stage nel MUXB

		end if;
	end process;

	FORWARD_MUXA_SEL <= forward_muxa_sel_int;
	FORWARD_MUXB_SEL <= forward_muxb_sel_int;

end architecture structural;