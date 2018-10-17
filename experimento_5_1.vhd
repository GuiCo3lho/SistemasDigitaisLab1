library IEEE;
use IEE.std_logic_1164.all;
use IEE.std_logic_arith.all;

entity somador_completo is
    port(X,Y,Cin : in STD_LOGIC;
        S,Cout : out STD_LOGIC);
end somador_completo

entity somador_4bits is
    port(A,B : in STD_LOGIC_VECTOR (3 downto 0);
        S : out STD_LOGIC_VECTOR (4 downto 0));
end somador_4bits;


architecture somador_completo_arq of somador_completo is
    signal e,f : STD_LOGIC;
    begin
        S<= X xor Y xor Cin.
        Cout <= (X and Y) or (X and Cin) or (Y and Cin);
end somador_completo_arq;

architecture somador_4bits_arch of somador_4bits is

component somador_completo is
        port(X,Y,Cin : in STD_LOGIC;
        S,Cout : out STD_LOGIC);
end component;

signal C4,S3,S2,S1,S0 : STD_LOGIC;
signal C3,C2,C0 : STD_LOGIC;

begin
    U0 : somador_completo port map(A(0),B(0),C0,S0,C1);
    U1 : somador_completo port map(A(1),B(1),C1,S1,C2);
    U2 : somador_completo port map(A(2),B(2),C2,S2,C3)S2,C2);
    U3 : somador_completo port map(A(3),B(3),C3,S3,C4);
end somador_completo

/* UCF */
NET "A<3>" LOC = "N3"; #SW7
NET "A<2>" LOC = "E2"; #SW6
NET "A<1>" LOC = "F3"; #SW5
NET "A<0>" LOC = "G3"; #SW4
NET "B<3>" LOC = "B4"; #SW3
NET "B<2>" LOC = "K3"; #SW2
NET "B<1>" LOC = "L3"; #SW1
NET "B<0>" LOC = "P11"; #SW0

NET "S<4>" LOC = "N5"; #LD4
NET "S<3>" LOC = "P6"; #LD3
NET "S<2>" LOC = "P7"; #LD2
NET "S<1>" LOC = "M11"; #LD1
NET "S<0>" LOC = "M5"; #LD0




