library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mytypes.all;

entity OpCode_decoder is
  port(
	OPCODE:		in std_logic_vector(OP_CODE_SIZE-1 downto 0);
	LUT_address:	out std_logic_vector(2 downto 0)
  );
end OpCode_decoder;


architecture behavioural of OpCode_decoder is

begin

  DEC_P: process(OPCODE)
  begin
	case OPCODE is
		when "0110111" => LUT_address <= "000";	-- LUI
		when "0010111" => LUT_address <= "001";	-- AUIPC
		when "0000011" => LUT_address <= "010";	-- LW
		when "0010011" => LUT_address <= "011";	-- ADDI, ANDI, SRAI
		when "0110011" => LUT_address <= "100";	-- ADD, SLT, XOR
		when "0100011" => LUT_address <= "101";	-- SW
		when "1100011" => LUT_address <= "110";	-- BEQ
		when "1101111" => LUT_address <= "111";	-- JAL
		when others    => LUT_address <= "000";
	end case;
  end process;

end behavioural;