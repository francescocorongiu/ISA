library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.and_reduce;
use work.mytypes.all;

entity ALU is
  generic(
	WORD_SIZE: integer := 32);
  port(
	OPCODE: in aluOp;
	OP1: in std_logic_vector (WORD_SIZE-1 downto 0);
	OP2: in std_logic_vector (WORD_SIZE-1 downto 0);
	OUT_DATA: out std_logic_vector (WORD_SIZE-1 downto 0);
	ZERO_out: out std_logic
);
end ALU;

architecture STRUCTURAL of ALU is

  component ADDER is
	generic(
	  NBIT: integer := 32);	--NBIT is the parallelism of the P4_ADDER which is identical for the SUM_GENERATOR and the CARRY_GENERATOR
	port(
	  A: in std_logic_vector(NBIT-1 downto 0);
	  B: in std_logic_vector(NBIT-1 downto 0);
	  Cin: in std_logic;
	  S: out std_logic_vector(NBIT-1 downto 0);
	  Cout: out std_logic;
	  C_n1: out std_logic);
  end component;

  -- signal declaration
  signal SUB, ADD_Cout, ADD_C_n1, EQ_signal: std_logic;
  signal ADD_OUT, ADD_op2, SUB_vector, LT_v: std_logic_vector(WORD_SIZE-1 downto 0);

  begin

  ADD_SUB: ADDER generic map(WORD_SIZE)
				 port map(A => OP1, B => ADD_op2, Cin => SUB, S => ADD_OUT, Cout => ADD_Cout, C_n1 => ADD_C_n1);

  SUB_vector <= (others => SUB);
  ADD_op2 <= OP2 XOR SUB_vector;
  
  -- if LT is ran, the output should be "0...01" or "0...0"
  LT_v(31 downto 1) <= (others => '0');
  LT_v(0) <= ADD_Cout XOR ADD_C_n1 XOR ADD_OUT(WORD_SIZE-1);
  
  EQ_signal <= AND_REDUCE(OP1 XNOR OP2);
	
				 
  -- output selection among the results of Functional Units
  with OPCODE select
	OUT_DATA <= ADD_OUT when ADDS,
				LT_v	when LT,
				OP1 and OP2 when ANDD,
				OP1 xor OP2 when EXOR,
				to_StdLogicVector((to_bitvector(OP1)) sra (conv_integer(OP2(5 downto 0)))) when ARS,
				OP2 	when LUI,
				ADD_OUT when others;
  
  with OPCODE select
	ZERO_out <= EQ_signal when EQ,
				'0'		  when others;

  -- subctraction is needed only with a EQ or LT opcode				
  with OPCODE select
	SUB <= '1' when EQ | LT,
		   '0' when others;

end structural;
