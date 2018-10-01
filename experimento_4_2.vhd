library ieee;
use ieee.std_logic_1164.all;

entity decoder4xq6 is
    port(A : in STD_LOGIC_VECTOR (3 downto 0);
        Y: in STD_LOGIC_VECTOR (15 downto 0);
    );

entity multiplex8x1 is
    port(D : in STD_LOGIC_VECTOR (7 downto 0);
        S: in STD_LOGIC_VECTOR (2 downto 0);
        Y : in STD_LOGIC;);

entity sistema is
    port(A,B,C,D,E,F,G : in STD_LOGIC;
        S : in STD_LOGIC;);

architecture sistema_arch of sistema is

component decoder4x16 is
     port(A : in STD_LOGIC_VECTOR (3 downto 0);
        Y: in STD_LOGIC_VECTOR (15 downto 0);
    );
end component;

component multiplex8x1 is
    port(D : in STD_LOGIC_VECTOR (7 downto 0);
        S: in STD_LOGIC_VECTOR (2 downto 0);
        Y : in STD_LOGIC;);
end component;

signal mintermos : STD_LOGIC_VECTOR (15 downto 0);
signal f_ABC : STD_LOGIC_VECTOR (7 downto 0);

begin
    U0: decoder4x16 port map(D&E&F&G,mintermos);
    U1: multiplex8x1 port map(f_ABC,A&B&C,S);

    with E&F&G&H select
    f_ABC <= "10000000" when "0001" #x0
             "00000001" when "1001" #x7
             "00000100" when "1110" | "0110" #x5
             "00010000" when "1010" #x3
             "00001000" when "1100" #x4
             "00000000" when others;

    with A&B&C select
    S <= f_ABC<0> when "000",
         f_ABC<1> when "001",
         f_ABC<2> when "010",
         f_ABC<3> when "011",
         f_ABC<4> when "100",
         f_ABC<5> when "101",
         f_ABC<6> when "110",
         f_ABC<7> when "111",
         '0' when others;
end sistema_arch;
/* UCF */
NET "A" LOC = "M4" #BTN2
NET "B" LOC = "C11" #BTN1
NET "C" LOC = "G12" #BTN0
NET "D" LOC = "B4" #SW3
NET "E" LOC = "K3" #SW2
NET "F" LOC = "L3" #SW1
NET "G" LOC = "P11" #SW0
NET "S" LOC = "M5" #LD0



