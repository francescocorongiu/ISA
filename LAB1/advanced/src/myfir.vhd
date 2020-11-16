library ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY myfir IS
  GENERIC(NB: integer:= 9);
  PORT(
	CLK: IN STD_LOGIC;
	RST_n: IN STD_LOGIC;
	VIN: IN STD_LOGIC;
	DIN_3k: IN SIGNED(NB-1 downto 0);
	DIN_3k1: IN SIGNED(NB-1 downto 0);
	DIN_3k2: IN SIGNED(NB-1 downto 0);
	b0: IN SIGNED(NB-1  downto 0);
	b1: IN SIGNED(NB-1  downto 0);
	b2: IN SIGNED(NB-1  downto 0);
	b3: IN SIGNED(NB-1  downto 0);
	b4: IN SIGNED(NB-1  downto 0);
	DOUT_3k: OUT SIGNED(NB-1 downto 0);
	DOUT_3k1: OUT SIGNED(NB-1 downto 0);
	DOUT_3k2: OUT SIGNED(NB-1 downto 0);
	VOUT: OUT STD_LOGIC
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

type vector_of_4_sign is array(3 downto 0) of signed(Nb-1 downto 0);
type vector_of_4_ext is array(3 downto 0) of signed(Nb downto 0);
type vector_of_sum is array(3 downto 0) of signed(Nb downto 0);
type vector_of_trunc_sum is array(3 downto 0) of signed(Nb/2+1 downto 0);
type vector_of_5_sign is array(4 downto 0) of signed(Nb-1 downto 0);
type vector_of_5_trunc is array(4 downto 0) of signed(Nb/2 downto 0);
type vector_of_prod is array(4 downto 0) of std_logic_vector(Nb+1 downto 0);
type vector_of_prod_sign is array(4 downto 0) of signed(Nb+1 downto 0);

signal x_3k,x_3k2,x_3k1: vector_of_4_sign;
signal x3k_ext, x3k1_ext, x3k2_ext: vector_of_4_ext;
signal s_1, s_2, s_3, s_11, s_21, s_31: vector_of_sum;
signal s_1p, s_2p, s_3p: vector_of_trunc_sum;
signal b: vector_of_5_sign;
signal b_p: vector_of_5_trunc;
signal p_1, p_2, p_3, p_1p, p_2p, p_3p, p_1_p, p_2_p, p_3_p: vector_of_prod_sign;
signal s_11_p, s_21_p, s_31_p: signed(Nb downto 0);
signal p_1s, p_2s, p_3s: vector_of_prod;


signal VIN_d, VIN_d1, VIN_d2, VIN_d3: std_logic; -- the latter enables the load of DOUT in Reg_dout
signal x_3k_p, x_3k1_p, x_3k2_p: signed(Nb/2 downto 0);
signal y_3k,y_3k2,y_3k1: signed(Nb-1 downto 0);

BEGIN

-- pipelined versions of VIN
FF1: D_FF port map(VIN, CLK, RST_n, VIN_d1);
FF2: D_FF port map(VIN_d1, CLK, RST_n, VIN_d2);
FF3: D_FF port map(VIN_d2, CLK, RST_n, VIN_d3);
FF4: D_FF port map(VIN_d3, CLK, RST_n, VIN_d);
FF5: D_FF port map(VIN_d, CLK, RST_n, VOUT);

-- input interface
Reg_x3k: regn_synch generic map(9)
		   port map(DIN_3k, CLK, RST_n, VIN, x_3k(0));
Reg_x3k1: regn_synch generic map(9)
		   port map(DIN_3k1, CLK, RST_n, VIN, x_3k1(0));
Reg_x3k2: regn_synch generic map(9)
		   port map(DIN_3k2, CLK, RST_n, VIN, x_3k2(0));
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
Reg_y3k: regn_synch generic map(9)
		   port map(y_3k, CLK, RST_n, VIN_d, DOUT_3k);
Reg_y3k1: regn_synch generic map(9)
		   port map(y_3k1, CLK, RST_n, VIN_d, DOUT_3k1);
Reg_y3k2: regn_synch generic map(9)
		   port map(y_3k2, CLK, RST_n, VIN_d, DOUT_3k2);

-- DELAY REGISTERS OF THE INPUTS
G1: for i in 0 to 1 GENERATE
  Reg_xi_3k: regn_synch generic map(9)
						port map(x_3k(i), CLK, RST_n, VIN, x_3k(i+1));
  Reg_xi_3k1: regn_synch generic map(9)
						port map(x_3k1(i), CLK, RST_n, VIN, x_3k1(i+1));
  Reg_xi_3k2: regn_synch generic map(9)
						port map(x_3k2(i), CLK, RST_n, VIN, x_3k2(i+1));
END GENERATE;

-- X_3k 3rd delay is not needed
Reg_xi_3k1_1: regn_synch generic map(9)
						port map(x_3k1(2), CLK, RST_n, VIN, x_3k1(3));
Reg_xi_3k2_2: regn_synch generic map(9)
						port map(x_3k2(2), CLK, RST_n, VIN, x_3k2(3));

--sign extension
x3k_ext(0) <= x_3k(0)(Nb-1) & x_3k(0)(Nb-1 downto 0);
x3k_ext(1) <= x_3k(1)(Nb-1) & x_3k(1)(Nb-1 downto 0);
x3k_ext(2) <= x_3k(2)(Nb-1) & x_3k(2)(Nb-1 downto 0);
x3k1_ext(0) <= x_3k1(0)(Nb-1) & x_3k1(0)(Nb-1 downto 0);
x3k1_ext(1) <= x_3k1(1)(Nb-1) & x_3k1(1)(Nb-1 downto 0);
x3k1_ext(2) <= x_3k1(2)(Nb-1) & x_3k1(2)(Nb-1 downto 0);
x3k1_ext(3) <= x_3k1(3)(Nb-1) & x_3k1(3)(Nb-1 downto 0);
x3k2_ext(0) <= x_3k2(0)(Nb-1) & x_3k2(0)(Nb-1 downto 0);
x3k2_ext(1) <= x_3k2(1)(Nb-1) & x_3k2(1)(Nb-1 downto 0);
x3k2_ext(2) <= x_3k2(2)(Nb-1) & x_3k2(2)(Nb-1 downto 0);
x3k2_ext(3) <= x_3k2(3)(Nb-1) & x_3k2(3)(Nb-1 downto 0);

-- 1st addiction stage
s_1(0) <= x3k_ext(0) + x3k1_ext(3);
s_1(1) <= x3k2_ext(1) + x3k2_ext(3);
s_1(2) <= x3k_ext(2) + x3k1_ext(1);
s_1(3) <= x3k_ext(1) + x3k1_ext(2);

s_2(0) <= x3k1_ext(0) + x3k2_ext(3);
s_2(1) <= x3k_ext(0) + x3k_ext(2);
s_2(2) <= x3k1_ext(2) + x3k2_ext(1);
s_2(3) <= x3k2_ext(2) + x3k1_ext(1);

s_3(0) <= x3k_ext(2) + x3k2_ext(0);
s_3(1) <= x3k1_ext(2) + x3k1_ext(0);
s_3(2) <= x3k1_ext(2) + x3k_ext(0);
s_3(3) <= x3k2_ext(1) + x3k_ext(1);

-- 1st pipeline stage..
Reg_xk_p1: regn_synch generic map(5)
		   port map(x_3k2(2)(Nb-1 downto Nb/2), CLK, RST_n, VIN_d1, x_3k2_p);
Reg_xk_p2: regn_synch generic map(5)
		   port map(x_3k(1)(Nb-1 downto Nb/2), CLK, RST_n, VIN_d1, x_3k_p);
Reg_xk_p3: regn_synch generic map(5)
		   port map(x_3k1(1)(Nb-1 downto Nb/2), CLK, RST_n, VIN_d1, x_3k1_p);
Reg_b_p1: regn_synch generic map(5)
		   port map(b(4)(Nb-1 downto Nb/2), CLK, RST_n, VIN_d1, b_p(4));

G2: for i in 0 to 3 GENERATE
	-- ..cnt'd 1st pipeline stage
	Reg_s_p1: regn_synch generic map(6)
			  port map(s_1(i)(Nb downto Nb/2), CLK, RST_n, VIN_d1, s_1p(i));
	Reg_s_p2: regn_synch generic map(6)
			  port map(s_2(i)(Nb downto Nb/2), CLK, RST_n, VIN_d1, s_2p(i));
	Reg_s_p3: regn_synch generic map(6)
			  port map(s_3(i)(Nb downto Nb/2), CLK, RST_n, VIN_d1, s_3p(i));
	Reg_b_p2: regn_synch generic map(5)
			  port map(b(i)(Nb-1 downto Nb/2), CLK, RST_n, VIN_d1, b_p(i));
	
	-- multiplications between 5-bit truncated coefficients and 6-bit truncated 1st stage-sums
	p_1(i) <= b_p(i) * s_1p(i);
	p_2(i) <= b_p(i) * s_2p(i);
	p_3(i) <= b_p(i) * s_3p(i);
end GENERATE;

-- multiplication between 5-bit coefficient and 5-bit pipelined x_3k2(2)
p_1(4) <= signed('0' & std_logic_vector(b_p(4) * x_3k2_p));

-- multiplication between 5-bit coefficient and 5-bit pipelined x_3k(1)
p_2(4) <= signed('0' & std_logic_vector(b_p(4) * x_3k_p));

-- multiplication between 5-bit coefficient and 5-bit pipelined x_3k1(1)
p_3(4) <= signed('0' & std_logic_vector(b_p(4) * x_3k1_p));

G3: for i in 0 to 4 GENERATE
	--2nd pipeline stage
	Reg_p_p1: regn_synch generic map(Nb+2)
			  port map(p_1(i), CLK, RST_n, VIN_d2, p_1p(i));
	Reg_p_p2: regn_synch generic map(Nb+2)
			  port map(p_2(i), CLK, RST_n, VIN_d2, p_2p(i));
	Reg_p_p3: regn_synch generic map(Nb+2)
			  port map(p_3(i), CLK, RST_n, VIN_d2, p_3p(i));
	--convertion to std_logic_vector
	p_1s(i) <= std_logic_vector(p_1_p(i));
	p_2s(i) <= std_logic_vector(p_2_p(i));
	p_3s(i) <= std_logic_vector(p_3_p(i));
end GENERATE;

G4: for i in 0 to 4 GENERATE
	G4_1: if (i<3) GENERATE
		p_1_p(i) <= p_1p(i);
		p_2_p(i) <= p_2p(i);
		p_3_p(i) <= p_3p(i);
	end GENERATE G4_1;
	G4_2: if (i>=3) GENERATE
		-- 3rd pipeline stage..
		Reg_p_p3: regn_synch generic map(Nb+2)
				  port map(p_1p(i), CLK, RST_n, VIN_d3, p_1_p(i));
		Reg_p_p4: regn_synch generic map(Nb+2)
				  port map(p_2p(i), CLK, RST_n, VIN_d3, p_2_p(i));
		Reg_p_p5: regn_synch generic map(Nb+2)
				  port map(p_3p(i), CLK, RST_n, VIN_d3, p_3_p(i));
	end GENERATE G4_2;
end GENERATE G4;

-- ..cnt'd 3rd pipeline stage
Reg_s_p6: regn_synch generic map(Nb+1)
		  port map(s_11(1), CLK, RST_n, VIN_d3, s_11_p);
Reg_s_p7: regn_synch generic map(Nb+1)
		  port map(s_21(1), CLK, RST_n, VIN_d3, s_21_p);
Reg_s_p8: regn_synch generic map(Nb+1)
		  port map(s_31(1), CLK, RST_n, VIN_d3, s_31_p);

-- second stage addictions of 10-bit products
s_11(0) <= signed(p_1s(0)(Nb+1) & p_1s(0)(Nb-1 downto 0)) + signed(p_1s(1)(Nb+1) & p_1s(1)(Nb-1 downto 0));
s_11(1) <= s_11(0) + signed(p_1s(2)(Nb+1) & p_1s(2)(Nb-1 downto 0));
s_11(2) <= s_11_p + signed(p_1s(3)(Nb+1) & p_1s(3)(Nb-1 downto 0));
s_11(3) <= s_11(2) + signed(p_1s(4)(Nb downto 0));

s_21(0) <= signed(p_2p(0)(Nb+1) & p_2p(0)(Nb-1 downto 0)) + signed(p_2s(1)(Nb+1) & p_2s(1)(Nb-1 downto 0));
s_21(1) <= s_21(0) + signed(p_2s(2)(Nb+1) & p_2s(2)(Nb-1 downto 0));
s_21(2) <= s_21_p + signed(p_2s(3)(Nb+1) & p_2s(3)(Nb-1 downto 0));
s_21(3) <= s_21(2) + signed(p_2s(4)(Nb downto 0));

s_31(0) <= signed(p_3s(0)(Nb+1) & p_3s(0)(Nb-1 downto 0)) + signed(p_3s(1)(Nb+1) & p_3s(1)(Nb-1 downto 0));
s_31(1) <= s_31(0) + signed(p_3s(2)(Nb+1) & p_3s(2)(Nb-1 downto 0));
s_31(2) <= s_31_p + signed(p_3s(3)(Nb+1) & p_3s(3)(Nb-1 downto 0));
s_31(3) <= s_31(2) + signed(p_3s(4)(Nb downto 0));

y_3k <= s_11(3)(Nb-1 downto 0);
y_3k1 <= s_21(3)(Nb-1 downto 0);
y_3k2 <= s_31(3)(Nb-1 downto 0);

end struct;
