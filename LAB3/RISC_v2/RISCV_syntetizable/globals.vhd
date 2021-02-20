library ieee;
use ieee.std_logic_1164.all;
use IEEE.math_real.all;

package mytypes is
	
	function log_2( i : integer) return integer;
	
	type aluOp is (ADDS, SUBS, ANDD, LUI, EXOR, LT, EQ, ARS, ABSI);

	-- Control unit input sizes
	constant FUNC3_SIZE		: integer := 3;
    constant OP_CODE_SIZE	: integer := 7;		-- OPCODE field size

	-- U-Type instruction -> OPCODE field
	constant UTYPE_LUI	: std_logic_vector(OP_CODE_SIZE-1 downto 0) := "0110111";	--[0x37] R[RD] <-- U-imm20
    constant UTYPE_AUIPC: std_logic_vector(OP_CODE_SIZE-1 downto 0) := "0010111";	--[0x17] R[RD] <-- PC + U-imm20

	-- I-Type instruction -> OPCODE field
	constant ITYPE_LW	: std_logic_vector(OP_CODE_SIZE-1 downto 0) := "0000011";	--[0x03] R[RD] <-- M[imm12 + R[RS1]]
	constant ITYPE_ADDI	: std_logic_vector(OP_CODE_SIZE-1 downto 0) := "0010011";	--[0x24] R[RD] <-- R[RS1] + imm12
	constant ITYPE_ANDI	: std_logic_vector(OP_CODE_SIZE-1 downto 0) := "0010011";	--[0x24] R[RD] <-- R[RS1] AND uimm12
	constant ITYPE_SRAI	: std_logic_vector(OP_CODE_SIZE-1 downto 0) := "0010011";	--[0x24] R[RD] <-- (R[RS1]_31)^ imm5 ## (R[RS1]>> imm5)
	constant ITYPE_ABSI	: std_logic_vector(OP_CODE_SIZE-1 downto 0) := "0010011";	--[0x24] R[RD] <-- |R[RS1]|

	-- R-Type instruction -> OPCODE field
	constant RTYPE_ADD	: std_logic_vector(OP_CODE_SIZE-1 downto 0) := "0110011";	--[0x33] R[RD] <-- R[RS1] + R[RS2]
	constant RTYPE_SLT	: std_logic_vector(OP_CODE_SIZE-1 downto 0) := "0110011";	--[0x33] R[RD] <-- R[RS1] + R[RS2]
	constant RTYPE_XOR	: std_logic_vector(OP_CODE_SIZE-1 downto 0) := "0110011";	--[0x33] R[RD] <-- R[RS1] XOR R[RS2]

	-- S-Type instruction -> OPCODE field
	constant STYPE_SW	: std_logic_vector(OP_CODE_SIZE-1 downto 0) := "0100011";	--[0x43] M[imm12 + R[RS1]] <-- R[RS2]

	-- SB-Type instruction -> OPCODE field
	constant BTYPE_BEQ	: std_logic_vector(OP_CODE_SIZE-1 downto 0) := "1100011";	--[0x63] if (R[RS1] = R[RS2]) PC <-- PC + imm12<<1

	-- UJ-Type instruction -> OPCODE field
	constant JTYPE_JAL	: std_logic_vector(OP_CODE_SIZE-1 downto 0) := "1101111";	--[0x6F] R[R1](i.e. LR) <-- PC + 4; PC <-- PC + imm20<<1

	-- I-type instruction -> FUNC3 field
	constant LW_FUNC3 	: std_logic_vector(2 downto 0) := "010";
	constant ADDI_FUNC3	: std_logic_vector(2 downto 0) := "000";
	constant ANDI_FUNC3	: std_logic_vector(2 downto 0) := "111";
	constant SRAI_FUNC3	: std_logic_vector(2 downto 0) := "101";
	constant ABSI_FUNC3	: std_logic_vector(2 downto 0) := "011"; 

	-- R-type instruction -> FUNC3 field
	constant ADD_FUNC3	: std_logic_vector(2 downto 0) := "000";
	constant SLT_FUNC3	: std_logic_vector(2 downto 0) := "010";
	constant XOR_FUNC3	: std_logic_vector(2 downto 0) := "100";

	-- S-Type instruction -> FUNC3 field
	constant SW_FUNC3	: std_logic_vector(2 downto 0) := "010";

	-- SB-Type instruction -> FUNC3 field
	constant BEQ_FUNC3	: std_logic_vector(2 downto 0) := "000";

end package mytypes;

package body mytypes is


	function log_2( i : integer) return integer is
	variable ret_val: integer;
	begin
		ret_val:= integer(ceil(log2(real(i))));
		return ret_val;
	end function log_2;
	
end package body mytypes;