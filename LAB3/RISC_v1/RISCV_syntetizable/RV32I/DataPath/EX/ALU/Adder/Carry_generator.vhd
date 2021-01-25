library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;

entity CARRY_GENERATOR is
	generic (
		NBIT : integer;
		NBIT_PER_BLOCK: integer);
	port (
		A :		in	std_logic_vector(NBIT-1 downto 0);
		B :		in	std_logic_vector(NBIT-1 downto 0);
		Cin :	in	std_logic;
		Co :	out	std_logic_vector((NBIT/NBIT_PER_BLOCK)-1 downto 0));
end CARRY_GENERATOR;

architecture STRUCTURAL of CARRY_GENERATOR is

component gen_G is
	port(	Gik:	In std_logic;
			Pik:	In std_logic;
			Gk_1j:	In std_logic;
			Gij:	Out std_logic);
end component;

component gen_PG is
	port(Gik:	In std_logic;
		Pik:	In std_logic;
		Gk_1j:	In std_logic;
		Pk_1j:	In std_logic;
		Gij:	Out std_logic;
		Pij:	Out std_logic);
end component;

component PGBLOCK is
	port(A:	In std_logic;
		B:	In std_logic;
		P:	Out std_logic;
		G:	Out std_logic);
end component;

constant nRows: integer := 5; -- integer(log2(real(NBIT)))

type SignalMatrix is array(nRows downto 0) of std_logic_vector(NBIT-1 downto 0);
signal PMatrix:	SignalMatrix;
signal GMatrix:	SignalMatrix;

signal p0, g0:	std_logic;
begin

	PGNetwork: for col in 0 to NBIT-1 generate				-- instantiating the PG network
	begin
		last_block_PGN: if (col = 0) generate				-- generating the LSB block of the PG network
			PGN: PGBLOCK 	port map (A(col), B(col), p0, g0);
			G1:  gen_G	port map (g0, p0, Cin, GMatrix(0)(col));
		end generate last_block_PGN;

		blocks_PGN:	 if (col > 0) generate					-- generating all the others blocks of the PG network
			PGNI: PGBLOCK	port map (A(col), B(col), PMatrix(0)(col), GMatrix(0)(col));
		end generate blocks_PGN;
	end generate PGNetwork;

	--going along the rows
	L1: for row in 1 to nRows generate
	begin
		--going along the bit columns
		L2: for col in NBIT-1 downto 0 generate
			--defining the columns at which must generate the blocks like a binary tree
			L3: if ((col mod(2**row)) = ((2**row)-1)) generate
				--defining the PG blocks
				L4_a: if (col > ((2**row)-1)) generate
					PG_Block: gen_PG port map (GMatrix(row-1)(col), PMatrix(row-1)(col), GMatrix(row-1)(col-(2**(row-1))),
							  				   PMatrix(row-1)(col-(2**(row-1))),GMatrix(row)(col), PMatrix(row)(col));
					--forwarding the signals in the first row where there are empty carry columns
					L5_a1: if ((2**(row-1)) = NBIT_PER_BLOCK) generate
						GMatrix(row)(col - NBIT_PER_BLOCK) <= GMatrix(row-1)(col- NBIT_PER_BLOCK);
						PMatrix(row)(col - NBIT_PER_BLOCK) <= PMatrix(row-1)(col - NBIT_PER_BLOCK);
					end generate L5_a1;
					--defining the addictioning PG blocks to generate carries every constant range of bits					
					L5_a2: if ((2**(row-1)) > NBIT_PER_BLOCK) generate			-- 2**(row-1) is the #bits between two PG blocks in the row
						--generating the quantity of the additional PG blocks
						L6_a1: for i in 1 to ((2**(row-1))/NBIT_PER_BLOCK - 1) generate 
							PG_add_block: gen_PG port map (GMatrix(row-1)(col- i*NBIT_PER_BLOCK), PMatrix(row-1)(col - i*NBIT_PER_BLOCK),
													GMatrix(row-1)(col-(2**(row-1))), PMatrix(row-1)(col-(2**(row-1))),
													GMatrix(row)(col - i*NBIT_PER_BLOCK), PMatrix(row)(col - i*NBIT_PER_BLOCK));
						end generate L6_a1;
						--forwarding the signals from row to row in the empty carry columns
						L6_a2: for i in (2**(row-1))/NBIT_PER_BLOCK to (2**row)/NBIT_PER_BLOCK-1 generate
							GMatrix(row)(col - i*NBIT_PER_BLOCK) <= GMatrix(row-1)(col- i*NBIT_PER_BLOCK);
							PMatrix(row)(col - i*NBIT_PER_BLOCK) <= PMatrix(row-1)(col - i*NBIT_PER_BLOCK);
						end generate L6_a2;
					end generate L5_a2;
				end generate L4_a;

				--defining the last block of the row, the G one
				L4_b : if (col = ((2**row)-1)) generate
					G: gen_G port map (GMatrix(row-1)(col), PMatrix(row-1)(col), GMatrix(row-1)(col-(2**(row-1))), GMatrix(row)(col));
					--report the carry to the output
					REPC: if (col>=NBIT_PER_BLOCK-1) generate
						Co(col/NBIT_PER_BLOCK) <= GMatrix(row)(col);
					end generate REPC;
					--forwarding the signal in the first row where there is an empty carry column
					L5_b1: if ((2**(row-1)) = NBIT_PER_BLOCK) generate
						GMatrix(row)(col - NBIT_PER_BLOCK) <= GMatrix(row-1)(col- NBIT_PER_BLOCK);
						PMatrix(row)(col - NBIT_PER_BLOCK) <= PMatrix(row-1)(col - NBIT_PER_BLOCK);
					end generate L5_b1;
					--defining the addictioning G blocks to generate carries every constant range of bits
					L5_b2: if ((2**(row-1)) > NBIT_PER_BLOCK) generate			-- 2**(row-1) is the #bits between two PG in the binary tree at current row
						--generating the quantity of the additional PG blocks
						L6_b1: for i in 1 to ((2**(row-1))/NBIT_PER_BLOCK - 1) generate 
							G_add_block: gen_G port map (GMatrix(row-1)(col- i*NBIT_PER_BLOCK), PMatrix(row-1)(col - i*NBIT_PER_BLOCK),
													GMatrix(row-1)(col-(2**(row-1))), GMatrix(row)(col - i*NBIT_PER_BLOCK));
							--report the carry to the output
							Co(col/NBIT_PER_BLOCK-i) <= GMatrix(row)(col - i*NBIT_PER_BLOCK);
						end generate L6_b1;
						--forwarding the signals from row to row in the empty columns
						L6_b2: for i in (2**(row-1))/NBIT_PER_BLOCK to (2**row)/NBIT_PER_BLOCK-1 generate
							GMatrix(row)(col - i*NBIT_PER_BLOCK) <= GMatrix(row-1)(col- i*NBIT_PER_BLOCK);
							PMatrix(row)(col - i*NBIT_PER_BLOCK) <= PMatrix(row-1)(col - i*NBIT_PER_BLOCK);
						end generate L6_b2;
					end generate L5_b2;
				end generate L4_b;
			end generate L3;
		end generate L2;
	end generate L1;

end architecture STRUCTURAL;
