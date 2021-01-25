library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity RCA_GENERIC_ADD is 
	generic (N: integer :=4);
	Port (A: in std_logic_vector(N-1 downto 0);
		B: in std_logic_vector(N-1 downto 0);
		Ci: in std_logic;
		S: out std_logic_vector(N-1 downto 0);
		Co: out std_logic;
		C_n1: out std_logic);
end RCA_GENERIC_ADD;

architecture STRUCTURAL of RCA_GENERIC_ADD is

  signal STMP : std_logic_vector(N-1 downto 0);
  signal CTMP : std_logic_vector(N downto 0);

component FA 
  port (A: in std_logic;
	B: in std_logic;
	Ci: in std_logic;
	S: out std_logic;
	Co: out std_logic);
end component; 

begin

  CTMP(0) <= Ci;
  S <= STMP;
  Co <= CTMP(N);
  C_n1 <= CTMP(N-1);
  
  ADDER1: for I in 1 to N generate
    FAI : FA Port Map (A(I-1), B(I-1), CTMP(I-1), STMP(I-1), CTMP(I));
  end generate;

end STRUCTURAL;