library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity SUM_GENERATOR is
  generic(
	NBIT:	integer := 32;
	NBLOCK:	integer := 8);
  port(
	A: in std_logic_vector(NBIT-1 downto 0);
	B: in std_logic_vector(NBIT-1 downto 0);
	Ci: in std_logic_vector(NBLOCK downto 0);
	S: out std_logic_vector(NBIT-1 downto 0);
	Co: out std_logic;
	C_n1: out std_logic);
end SUM_GENERATOR;

architecture STRUCTURAL of SUM_GENERATOR is

component CARRY_SELECT_BLOCK is
	generic (numBit: integer := 4);
	port (A:	In std_logic_vector(numBit-1 downto 0);
		  B:	In std_logic_vector(numBit-1 downto 0);
		  Ci:	In std_logic;
		  S:	Out std_logic_vector(numBit-1 downto 0));
end component;

component EXT_CSB is
	generic (numBit: Integer := 4);
	port (A: in std_logic_vector(numBit-1 downto 0);
		  B: in std_logic_vector(numBit-1 downto 0);
		  Ci: in std_logic;
		  S: out std_logic_vector(numBit-1 downto 0);
		  C_n1: out std_logic);
end component;

constant NBIT_PER_BLOCK: integer := NBIT/NBLOCK;

begin

	Sum_Gen: for I in 0 to NBLOCK-2 generate
      CS_Block: CARRY_SELECT_BLOCK generic map (NBIT_PER_BLOCK)
								   port map (A(((I+1)*NBIT_PER_BLOCK-1) downto (I*NBIT_PER_BLOCK)), B(((I+1)*NBIT_PER_BLOCK-1)
											 downto (I*NBIT_PER_BLOCK)), Ci(I), S(((I+1)*NBIT_PER_BLOCK-1) downto (I*NBIT_PER_BLOCK)));
  	end generate Sum_Gen;
	
	Last_Block: EXT_CSB generic map (NBIT_PER_BLOCK)
					  port map (A((NBLOCK*NBIT_PER_BLOCK-1) downto ((NBLOCK-1)*NBIT_PER_BLOCK)), B((NBLOCK*NBIT_PER_BLOCK-1) downto ((NBLOCK-1)*NBIT_PER_BLOCK)),
								Ci(NBLOCK-1), S((NBLOCK*NBIT_PER_BLOCK-1) downto ((NBLOCK-1)*NBIT_PER_BLOCK)), C_n1);
	
	Co <= Ci(NBLOCK);
end STRUCTURAL;