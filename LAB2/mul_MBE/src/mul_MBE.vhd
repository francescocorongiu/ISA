library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY MBE_mul IS		-- unsigned MBE multiplier
  PORT (
	A:	IN	std_logic_vector (31 downto 0);
	B:	IN	std_logic_vector (31 downto 0);
	P:	OUT std_logic_vector (63 downto 0));
END MBE_mul;

ARCHITECTURE struct OF MBE_mul IS

  COMPONENT FA IS
	PORT(
	  A:	IN	std_logic;
	  B:	IN	std_logic;
	  Ci:	IN	std_logic;
	  S:	OUT	std_logic;
	  Co:	OUT	std_logic
	);
  END COMPONENT;

  COMPONENT HA IS
	PORT(
	  A:	IN	std_logic;
	  B:	IN	std_logic;
	  S:	OUT	std_logic;
	  Co:	OUT	std_logic
	);
  END COMPONENT;

  COMPONENT mux21 is
    GENERIC (nBit: integer:= 24);
	PORT (
	  A: 	IN	std_logic_vector (nBit-1 downto 0);
	  B: 	IN	std_logic_vector (nBit-1 downto 0);
	  Sel:	IN	std_logic;		 	-- selector
	  En:	IN	std_logic;			-- enable (if '0' => Y=0)
	  Y: 	OUT std_logic_vector (nBit-1 downto 0));
  END COMPONENT;

  COMPONENT enc3X3 IS
	PORT(
	  S_in:	IN std_logic_vector (2 downto 0);
	  Non0:	OUT std_logic;
	  Two:	OUT std_logic;
	  Neg:	OUT std_logic);
  END COMPONENT;
  
  constant nBit:	integer := 24;
  
  type Lvl_6_t is array (12 downto 0) of std_logic_vector (47 downto 0);				-- partial products vector, j=6
  type Lvl_5_t is array (8 downto 0) of std_logic_vector (47 downto 0);					-- partial products vector, j=5
  type Lvl_4_t is array (5 downto 0) of std_logic_vector (47 downto 0);					-- partial products vector, j=4
  type Lvl_3_t is array (3 downto 0) of std_logic_vector (47 downto 0);					-- partial products vector, j=3
  type Lvl_2_t is array (2 downto 0) of std_logic_vector (47 downto 0);					-- partial products vector, j=2
  type Lvl_1_t is array (1 downto 0) of std_logic_vector (48 downto 0);					-- partial products vector, j=1, additional MSB due to carry
  type Word_t  is array (11 downto 0) of std_logic_vector (nBit downto 0);
  
  signal A_in:	std_logic_vector (23 downto 0);
  signal B_in:	std_logic_vector (24 downto 0);
  signal B_msb: std_logic_vector (23 downto 0); 
  signal A_ext: std_logic_vector (nBit downto 0);  
  signal A_two: std_logic_vector (nBit downto 0);  
  signal Non0:	std_logic_vector (11 downto 0);
  signal Two:	std_logic_vector (11 downto 0);
  signal Neg:	std_logic_vector (11 downto 0);
  signal Neg_v: Word_t;
  signal Mux_out: Word_t;
  signal Lvl_6:	Lvl_6_t;
  signal Lvl_5:	Lvl_5_t;
  signal Lvl_4:	Lvl_4_t;
  signal Lvl_3:	Lvl_3_t;
  signal Lvl_2:	Lvl_2_t;
  signal Lvl_1:	Lvl_1_t;
  signal sum: 	signed(48 downto 0);
  signal carry:	signed(48 downto 0);

BEGIN

  A_in	<= A(23 downto 0);
  B_in	<= B(23 downto 0) & '0';
  B_msb	<= (others => B(23));			-- there is no zero-padding because the last step of the Booth has been optimized
  A_ext <= '0' & A_in;
  A_two <= A_in & '0';
  
-- #### STARTING BOOTH ALGORITHM ####
  BOOTH: FOR I IN 0 TO 11 GENERATE
	ENC: enc3X3
	  PORT MAP (
		S_in => B_in(2*I+2 downto 2*I),
		Non0 => Non0(I),
		Two => Two(I),
		Neg => Neg(I)
	  );
	
	MUX: mux21
	  GENERIC MAP (25)
	  PORT MAP (
		A => A_ext,
		B => A_two,
		Sel => Two(I),
		En => Non0(I),
		Y => Mux_out(I)
	  );
	
	Neg_v(I) <= (others => Neg(I));		-- Extend the Negative signal in order to make a bitwise complement
  END GENERATE BOOTH;
  
  
-- #### ENDING BOOTH ALGORITHM ####

-- #### DADDA TREE: STARTING LEVEL 6 ####
  L6: FOR I IN 0 TO 11 GENERATE
	Lvl_6(I)(24+2*I downto 2*I) <= (Mux_out(I)) XOR (Neg_v(I));	-- Partial products in 25 bit

	-- 1st PProd sign extension
	L6_0: IF (I=0) GENERATE
	  Lvl_6(I+1)(2*I) <= Neg(I);
	  Lvl_6(I)(27+2*I downto 25+2*I) <= NOT Neg(I) & Neg(I) & Neg(I);
	END GENERATE L6_0;
	
	-- 2nd to last PProd sign extension
	L6_1: IF (I=11) GENERATE
	  Lvl_6(I+1)(2*I) <= Neg(I);
	  Lvl_6(I)(25+2*I) <= NOT Neg(I);
	END GENERATE L6_1;

	-- Remaining PProds sign extension
	L6_2: IF (I>0 AND I<11) GENERATE
	  Lvl_6(I+1)(2*I) <= Neg(I);
	  Lvl_6(I)(25+2*I) <= NOT Neg(I);
	  Lvl_6(I)(26+2*I) <= '1';
	END GENERATE L6_2;
  END GENERATE L6;

  Lvl_6(12)(47 downto 24) <= A_in AND B_msb;	-- Last partial product is A or 0

  CSA_L6: FOR I IN 0 TO 12 GENERATE			-- 4 rows of 13 FA/HA needed to be instantiated
	CSA_L6_A: IF (I>1 AND I<12) GENERATE	-- 10 FA per row
	  CSA_L6_A1: FOR J IN 0 TO 3 GENERATE 	-- iterate on 4 rows
		
		L6_A_FA: FA
		  PORT MAP (
			A	=> Lvl_6(3*J)(16+I+2*J),
			B	=> Lvl_6(3*J+1)(16+I+2*J),
			Ci	=> Lvl_6(3*J+2)(16+I+2*J),
			S	=> Lvl_5(2*J)(16+I+2*J),
			Co	=> Lvl_5(2*J+1)(17+I+2*J) 
		  );
	  END GENERATE CSA_L6_A1;
	END GENERATE CSA_L6_A;
	
	CSA_L6_B: IF I<2 GENERATE
	  CSA_L6_B1: FOR J IN 0 TO 3 GENERATE 	-- iterate on 4 rows
		
		L6_B_HA: HA
		  PORT MAP (
			A	=> Lvl_6(3*J)(16+I+2*J),
			B	=> Lvl_6(3*J+1)(16+I+2*J),
			S	=> Lvl_5(2*J)(16+I+2*J),
			Co	=> Lvl_5(2*J+1)(17+I+2*J)
		  );
	  END GENERATE CSA_L6_B1;
	END GENERATE CSA_L6_B;
	
	CSA_L6_C: IF I=12 GENERATE
	  CSA_L6_C1: FOR J IN 0 TO 3 GENERATE 	-- iterate on 4 rows
		
		L6_C_HA: HA
		  PORT MAP (
			A => Lvl_6(3*J+1)(16+I+2*J),
			B => Lvl_6(3*J+2)(16+I+2*J),
			S => Lvl_5(2*J)(16+I+2*J),
			Co => Lvl_5(2*J+1)(17+I+2*J)
		  );
	  END GENERATE CSA_L6_C1;
	END GENERATE CSA_L6_C;
  END GENERATE CSA_L6;
-- #### DADDA TREE: ENDING LEVEL 6 ####

-- #### DADDA TREE: STARTING LEVEL 5 ####
  Lvl_5(8)(35 downto 24) <= Lvl_6(12)(35 downto 24);
  
  LVL5_A: FOR I IN 0 TO 8 GENERATE
	Lvl_5(I)(15 downto 0) <= Lvl_6(I)(15 downto 0);
	Lvl_5(I)(47 downto 36) <= Lvl_6(I+4)(47 downto 36);
  END GENERATE LVL5_A;
  
  LVL5_B: FOR I IN 2 TO 8 GENERATE
	Lvl_5(I)(16) <= Lvl_6(I)(16);
	Lvl_5(I)(17) <= Lvl_6(I)(17);
	Lvl_5(I-2)(35) <= Lvl_6(I+3)(35);
  END GENERATE LVL5_B;

  LVL5_C: FOR I IN 4 TO 8 GENERATE
	Lvl_5(I)(18) <= Lvl_6(I+1)(18);
	Lvl_5(I)(19) <= Lvl_6(I+1)(19);
	Lvl_5(I-4)(34) <= Lvl_6(I)(34);
	Lvl_5(I-4)(33) <= Lvl_6(I)(33);
	
	LVL5_C1: IF I<8 GENERATE
	  Lvl_5(I-4)(32) <= Lvl_6(I-1)(32);
	END GENERATE LVL5_C1;
  END GENERATE LVL5_C;

  LVL5_D: FOR I IN 6 TO 8 GENERATE
	Lvl_5(I)(20) <= Lvl_6(I+2)(20);
	Lvl_5(I)(21) <= Lvl_6(I+2)(21);
	Lvl_5(I-6)(31) <= Lvl_6(I-3)(31);
  END GENERATE LVL5_D;

  Lvl_5(1)(16) <= Lvl_6(9)(16);
  Lvl_5(3)(18) <= Lvl_6(10)(18);
  Lvl_5(5)(20) <= Lvl_6(11)(20);
  Lvl_5(7)(22) <= Lvl_6(11)(22);
  Lvl_5(8)(22) <= Lvl_6(12)(22);
  Lvl_5(8)(23) <= Lvl_6(11)(23);
  Lvl_5(0)(29) <= Lvl_6(2)(29);
  Lvl_5(0)(30) <= Lvl_6(2)(30);
  Lvl_5(1)(30) <= Lvl_6(3)(30);
  Lvl_5(5)(34) <= Lvl_6(9)(34);
	
  CSA_L5: FOR I IN 0 TO 26 GENERATE			-- 3 rows of 27 FA/HA needed to be instantiated
	
	CSA_L5_A: IF (I>1 AND I<26) GENERATE	-- 24 FA per row
	  CSA_L5_A1: FOR J IN 0 TO 2 GENERATE 	-- iterate on 3 rows
		
		L5_A_FA: FA
		  PORT MAP (
			A => Lvl_5(3*J)(10+I+2*J),
			B => Lvl_5(3*J+1)(10+I+2*J),
			Ci => Lvl_5(3*J+2)(10+I+2*J),
			S => Lvl_4(2*J)(10+I+2*J),
			Co => Lvl_4(2*J+1)(11+I+2*J) 
		  );
	  END GENERATE CSA_L5_A1;
	END GENERATE CSA_L5_A;
	
	CSA_L5_B: IF I<2 GENERATE
	  CSA_L5_B1: FOR J IN 0 TO 2 GENERATE 	-- iterate on 3 rows
		
		L5_B_HA: HA
		  PORT MAP (
			A => Lvl_5(3*J)(10+I+2*J),
			B => Lvl_5(3*J+1)(10+I+2*J),
			S => Lvl_4(2*J)(10+I+2*J),
			Co => Lvl_4(2*J+1)(11+I+2*J)
		  );
	  END GENERATE CSA_L5_B1;
	END GENERATE CSA_L5_B;
	
	CSA_L5_C: IF I=26 GENERATE
	  CSA_L5_C1: FOR J IN 0 TO 2 GENERATE 	-- iterate on 3 rows
		
		L5_C_HA: HA
		  PORT MAP (
			A => Lvl_5(3*J+1)(I+10+2*J),
			B => Lvl_5(3*J+2)(I+10+2*J),
			S => Lvl_4(2*J)(I+10+2*J),
			Co => Lvl_4(2*J+1)(I+11+2*J) 
		  );
	  END GENERATE CSA_L5_C1;
	END GENERATE CSA_L5_C;
  END GENERATE CSA_L5;
-- #### DADDA TREE: ENDING LEVEL 5 ####
	
-- #### DADDA TREE: STARTING LEVEL 4 ####
  LVL4_A: FOR I IN 0 TO 5 GENERATE
	Lvl_4(I)(9 downto 0) <= Lvl_5(I)(9 downto 0);
	Lvl_4(I)(47 downto 42) <= Lvl_5(I+3)(47 downto 42);

	LVL4_A1: IF I<5 GENERATE
	  Lvl_4(I+1)(10) <= Lvl_5(I+2)(10);
	  Lvl_4(I)(41) <= Lvl_5(I+4)(41);
	END GENERATE LVL4_A1;
  END GENERATE LVL4_A;

 LVL4_B: FOR I IN 2 TO 5 GENERATE
	Lvl_4(I)(11) <= Lvl_5(I)(11);
	Lvl_4(I-2)(40) <= Lvl_5(I+1)(40);

	LVL4_B1: IF I>2 GENERATE
	  Lvl_4(I)(12) <= Lvl_5(I+2)(12);
	  Lvl_4(I-3)(39) <= Lvl_5(I)(39);
	END GENERATE LVL4_B1;
  END GENERATE LVL4_B;

  LVL4_C: FOR I IN 4 TO 5 GENERATE
	Lvl_4(I)(13) <= Lvl_5(I+1)(13);
	Lvl_4(I-4)(38)<= Lvl_5(I-2)(38);
  END GENERATE LVL4_C;
  
  Lvl_4(5)(14)<= Lvl_5(8)(14);
  Lvl_4(0)(37)<= Lvl_5(2)(37);

  CSA_L4: FOR I IN 0 TO 36 GENERATE			-- 2 rows of 37 FA/HA needed to be instantiated
	
	CSA_L4_A: IF (I>1 AND I<36) GENERATE	-- 34 FA per row
	  CSA_L4_A1: FOR J IN 0 TO 1 GENERATE 	-- iterate on 2 rows
		
		L4_A_FA: FA
		  PORT MAP (
			A => Lvl_4(3*J)(6+I+2*J),
			B => Lvl_4(3*J+1)(6+I+2*J),
			Ci => Lvl_4(3*J+2)(6+I+2*J),
			S => Lvl_3(2*J)(6+I+2*J),
			Co => Lvl_3(2*J+1)(7+I+2*J) 
		  );
	  END GENERATE CSA_L4_A1;
	END GENERATE CSA_L4_A;
	
	CSA_L4_B: IF I<2 GENERATE
	  CSA_L4_B1: FOR J IN 0 TO 1 GENERATE 	-- iterate on 2 rows
		
		L4_B_HA: HA
		  PORT MAP (
			A => Lvl_4(3*J)(6+I+2*J),
			B => Lvl_4(3*J+1)(6+I+2*J),
			S => Lvl_3(2*J)(6+I+2*J),
			Co => Lvl_3(2*J+1)(7+I+2*J) 
		  );
	  END GENERATE CSA_L4_B1;
	END GENERATE CSA_L4_B;
	
	CSA_L4_C: IF I=36 GENERATE
	  CSA_L4_C1: FOR J IN 0 TO 1 GENERATE 	-- iterate on 2 rows
		
		L4_C_HA: HA
		  PORT MAP (
			A => Lvl_4(3*J+1)(6+I+2*J),
			B => Lvl_4(3*J+2)(6+I+2*J),
			S => Lvl_3(2*J)(6+I+2*J),
			Co => Lvl_3(2*J+1)(7+I+2*J) 
		  );
	  END GENERATE CSA_L4_C1;
	END GENERATE CSA_L4_C;
  END GENERATE CSA_L4;
-- #### DADDA TREE: ENDING LEVEL 4 ####

-- #### DADDA TREE: STARTING LEVEL 3 ####
  LVL3_A: FOR I IN 0 TO 3 GENERATE
	Lvl_3(I)(5 downto 0) <= Lvl_4(I)(5 downto 0);
	Lvl_3(I)(47 downto 46) <= Lvl_4(I+2)(47 downto 46);
  END GENERATE LVL3_A;

  LVL3_B: FOR I IN 2 TO 3 GENERATE
	Lvl_3(I)(6) <= Lvl_4(I)(6);
	Lvl_3(I)(7) <= Lvl_4(I)(7);
	Lvl_3(I-2)(44) <= Lvl_4(I)(44);
	Lvl_3(I-2)(45) <= Lvl_4(I+1)(45);
  END GENERATE LVL3_B;

  Lvl_3(1)(6)<= Lvl_4(4)(6);
  Lvl_3(3)(8)<= Lvl_4(5)(8);
  Lvl_3(0)(43)<= Lvl_4(2)(43);
  Lvl_3(2)(45)<= Lvl_4(5)(45);
  
  CSA_L3: FOR I IN 0 TO 42 GENERATE			-- 1 row of 43 FA/HA needed to be instantiated
	CSA_L3_A: IF (I>1 AND I<42) GENERATE	-- 40 FA
		L3_A_FA: FA
		  PORT MAP (
			A => Lvl_3(0)(4+I),
			B => Lvl_3(1)(4+I),
			Ci => Lvl_3(2)(4+I),
			S => Lvl_2(0)(4+I),
			Co => Lvl_2(1)(5+I) 
		  );
	END GENERATE CSA_L3_A;
	
	CSA_L3_B: IF I<2 GENERATE
		L3_B_HA: HA
		  PORT MAP (
			A => Lvl_3(0)(4+I),
			B => Lvl_3(1)(4+I),
			S => Lvl_2(0)(4+I),
			Co => Lvl_2(1)(5+I) 
		  );
	END GENERATE CSA_L3_B;
	
	CSA_L3_C: IF I=42 GENERATE
		L3_C_HA: HA
		  PORT MAP (
			A => Lvl_3(1)(4+I),
			B => Lvl_3(2)(4+I),
			S => Lvl_2(0)(4+I),
			Co => Lvl_2(1)(5+I) 
		  );
	END GENERATE CSA_L3_C;
  END GENERATE CSA_L3;
-- #### DADDA TREE: ENDING LEVEL 3 ####

-- #### DADDA TREE: STARTING LEVEL 2 ####
  LVL2_A: FOR I IN 0 TO 2 GENERATE
	Lvl_2(I)(3 downto 0) <= Lvl_3(I)(3 downto 0);
  END GENERATE LVL2_A;
  
  Lvl_2(2)(47 downto 6) <= Lvl_3(3)(47 downto 6);
  Lvl_2(1)(4)<= Lvl_3(2)(4);
  Lvl_2(2)(4)<= Lvl_3(3)(4);
  Lvl_2(2)(5)<= Lvl_3(2)(5);
  Lvl_2(0)(47)<= Lvl_3(2)(47);
  
  CSA_L2: FOR I IN 0 TO 45 GENERATE			-- 1 row of 46 FA/HA needed to be instantiated
	CSA_L2_A: IF (I>1) GENERATE				-- 44 FA
	  L2_A_FA: FA
		PORT MAP (
		  A => Lvl_2(0)(2+I),
		  B => Lvl_2(1)(2+I),
		  Ci => Lvl_2(2)(2+I),
		  S => Lvl_1(0)(2+I),
		  Co => Lvl_1(1)(3+I) 
		);
	END GENERATE CSA_L2_A;
	
	CSA_L2_B: IF I<2 GENERATE				-- 2 HA
	  L2_B_HA: HA
		PORT MAP (
		  A => Lvl_2(0)(2+I),
		  B => Lvl_2(1)(2+I),
		  S => Lvl_1(0)(2+I),
		  Co => Lvl_1(1)(3+I) 
		);
	END GENERATE CSA_L2_B;
  END GENERATE CSA_L2;
-- #### DADDA TREE: ENDING LEVEL 2 ####

-- #### DADDA TREE: STARTING LEVEL 1 ####
  Lvl_1(0)(0)<= Lvl_2(0)(0);
  Lvl_1(1)(0)<= Lvl_2(1)(0);
  Lvl_1(0)(1)<= Lvl_2(0)(1);
  Lvl_1(1)(2)<= Lvl_2(2)(2);
  Lvl_1(1)(1)<= '0';						-- we need this bit in the CP adder
  Lvl_1(0)(48)<= '0';						-- we need this bit in the CP adder
-- #### DADDA TREE: ENDING LEVEL 1 ####

  sum <= signed(Lvl_1(0));
  carry <= signed(Lvl_1(1));

  P(48 downto 0) <= std_logic_vector(sum + carry);
  P(63 downto 49) <= (others => '0');		-- zero-extension of the final product
END struct;