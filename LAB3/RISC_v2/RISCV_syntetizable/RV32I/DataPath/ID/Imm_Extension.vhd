library IEEE;
use IEEE.std_logic_1164.all;


entity imm_extension is
	generic (N: integer := 32);
	port (
		INST_in:	in std_logic_vector(31 downto 7);
		IMM_TYPE:	in std_logic_vector(1 downto 0);
		IMM_ext:	out std_logic_vector(N-1 downto 0)
	);
end imm_extension;

architecture BEHAVIORAL of imm_extension is

  --signal declaration
  signal imm_sign: std_logic_vector(19 downto 0);  
  signal I_immediate, S_immediate, U_immediate: std_logic_vector(N-1 downto 0);
  
  begin
  
  imm_sign <= (others => INST_in(31));
  
  I_immediate(31 downto 12) <= imm_sign;
  I_immediate(11 downto 0) <= INST_in(31 downto 20);
  
  S_immediate(31 downto 12) <= imm_sign;
  S_immediate(11 downto 5) <= INST_in(31 downto 25);
  S_immediate(4 downto 0) <= INST_in(11 downto 7);
  
  U_immediate(31 downto 12) <= INST_in(31 downto 12);
  U_immediate(11 downto 0) <= (others => '0');
  
  -- purpose: immediate extension
  -- type   : combinational
  -- inputs : INST_in
  -- outputs: imm_extended
  process(IMM_TYPE, U_immediate, S_immediate, I_immediate)
	begin
	case IMM_TYPE is
		when "00" => IMM_ext <= I_immediate;
		when "01" => IMM_ext <= S_immediate;
		when "10" => IMM_ext <= U_immediate;
		when others => IMM_ext <= (others => '0');
	end case;
  end process;
end BEHAVIORAL;