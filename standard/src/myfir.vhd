library ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY myfir IS
  GENERIC(NB: integer:= 9);
  PORT(
	CLK, RST_n, VIN: IN STD_LOGIC;
	DIN: IN SIGNED(NB-1 downto 0);
	b0: IN SIGNED(NB-1  downto 0);
	b1: IN SIGNED(NB-1  downto 0);
	b2: IN SIGNED(NB-1  downto 0);
	b3: IN SIGNED(NB-1  downto 0);
	b4: IN SIGNED(NB-1  downto 0);
	VOUT: OUT STD_LOGIC;
	DOUT: OUT SIGNED(NB-1 downto 0)
  );
END myfir;

ARCHITECTURE struct OF myfir IS

COMPONENT regn_synch IS
  GENERIC(N: integer:= 8);
  PORT(
	R: IN SIGNED(N-1 downto 0);
	Clock, Resetn,Enable: IN STD_LOGIC;
	Q: OUT SIGNED(N-1 downto 0));
END COMPONENT;

COMPONENT D_FF IS
PORT (
	D: IN STD_LOGIC;
	Clock: IN STD_LOGIC;
	Resetn : IN STD_LOGIC;
	Q : OUT STD_LOGIC);
END COMPONENT;

type vector_of_9_sign is array(8 downto 0) of signed(Nb-1 downto 0);
type vector_of_9_ext is array(8 downto 0) of signed(Nb downto 0);
type vector_of_4_sign is array(3 downto 0) of signed(Nb downto 0);
type vector_of_5_sign is array(4 downto 0) of signed(Nb-1 downto 0);
type vector_of_5 is array(4 downto 0) of std_logic_vector(2*Nb downto 0);

signal x_k: vector_of_9_sign;
signal s_1, sum: vector_of_4_sign;
signal b: vector_of_5_sign;
signal p: vector_of_5;
signal VIN_d: std_logic; -- this signal enables the load of DOUT in Reg_dout
signal x_ext: vector_of_9_ext;

signal res: signed(Nb-1 downto 0);

BEGIN

-- input interface
Reg_din: regn_synch generic map(9)
		   port map(DIN, CLK, RST_n, VIN, x_k(0));
Reg_b0: regn_synch generic map(9)
		   port map(b0, CLK, RST_n, '1', b(0));
Reg_b1: regn_synch generic map(9)
		   port map(b1, CLK, RST_n, '1', b(1));
Reg_b2: regn_synch generic map(9)
		   port map(b2, CLK, RST_n, '1', b(2));
Reg_b3: regn_synch generic map(9)
		   port map(b3, CLK, RST_n, '1', b(3));
Reg_b4: regn_synch generic map(9)
		   port map(b4, CLK, RST_n, '1', b(4));

-- output interface
Reg_dout: regn_synch generic map(9)
		   port map(res, CLK, RST_n, VIN_d, DOUT);

-- DELAY REGISTERS OF THE INPUTS
G1: for i in 0 to 7 generate
  Reg_xi: regn_synch generic map(9)
				  port map(x_k(i), CLK, RST_n, VIN, x_k(i+1));
END GENERATE;

-- DELAY FFs of VIN
FF1: D_FF port map(VIN, CLK, RST_n, VIN_d);
FF2: D_FF port map(VIN_d, CLK, RST_n, VOUT);

--sign extension
x_ext(0) <= x_k(0)(Nb-1) & x_k(0)(Nb-1 downto 0);
x_ext(1) <= x_k(1)(Nb-1) & x_k(1)(Nb-1 downto 0);
x_ext(2) <= x_k(2)(Nb-1) & x_k(2)(Nb-1 downto 0);
x_ext(3) <= x_k(3)(Nb-1) & x_k(3)(Nb-1 downto 0);
x_ext(4) <= x_k(4)(Nb-1) & x_k(4)(Nb-1 downto 0);
x_ext(5) <= x_k(5)(Nb-1) & x_k(5)(Nb-1 downto 0);
x_ext(6) <= x_k(6)(Nb-1) & x_k(6)(Nb-1 downto 0);
x_ext(7) <= x_k(7)(Nb-1) & x_k(7)(Nb-1 downto 0);
x_ext(8) <= x_k(8)(Nb-1) & x_k(8)(Nb-1 downto 0);

-- first stage adders
s_1(0) <= x_ext(0) + x_ext(8);
s_1(1) <= x_ext(1) + x_ext(7);
s_1(2) <= x_ext(2) + x_ext(6);
s_1(3) <= x_ext(3) + x_ext(5);

-- multipliers
p(0) <= std_logic_vector(b(0) * s_1(0));
p(1) <= std_logic_vector(b(1) * s_1(1));
p(2) <= std_logic_vector(b(2) * s_1(2));
p(3) <= std_logic_vector(b(3) * s_1(3));
p(4)(2*Nb-1 downto 0) <= std_logic_vector(b4 * x_k(4));

-- second stage adders
sum(0) <= signed(p(0) (2*Nb-1 downto Nb-1)) + signed(p(1) (2*Nb-1 downto Nb-1));
sum(1) <= signed(sum(0) (Nb downto 0)) + signed(p(2) (2*Nb-1 downto Nb-1));
sum(2) <= signed(sum(1) (Nb downto 0)) + signed(p(3) (2*Nb-1 downto Nb-1));
sum(3) <= signed(sum(2) (Nb downto 0)) + signed(p(4) (2*Nb-1 downto Nb-1));

res <= sum(3)(Nb-1 downto 0);

end struct;
