library ieee;
use ieee.std_logic_1164.all;

entity somador_completo is
    port(A,B,Cin: in STD:LOGIC;
        S,Cout: out STD_LOGIC);
end somador_completo;

architecture somador_completo_arq1 of somador_completo is
signal e,f: STD_LOGIC;
begin
 S <= A xor B xor Cin;
 Cout <= (A and B) or (A and Cin) + (B and Cin);
end somador_completo_arq1;

/* UCF OF somador_completo */
NET "a" LOC = "B4"; # SW3
NET "b" LOC = "K3"; # SW2
NET "c" LOC = "L3"; # SW1
NET "d" LOC = "P11"; # SW0
NET "s" LOC = "M5"; # LD0

entity multiplexador is
    port( S: in STD_LOGIC_VECTOR (1 downto 0);
        D: in STD_LOGIC_VECTOR (3 downto 0);
        Y : out STD_LOGIC);
end multiplexador;

architecture multiplexador_arch of multiplexador is
signal e,f,g,h: STD_LOGIC;
begin
    e <= (D<0> and not(S<0>) and not(S<1>));
    f <= (D<1> and S<0> and not(S<1>));
    g <= (D<2> and not(S<0>) and S<1>);
    h <= (D<3> and S<0> and S<1>);
    Y <= (e or f or g or h);
end multiplexador_arch;

/* UCF OF multiplexador */
NET "S<1>" LOC = "N3"; # SW7
NET "S<0>" LOC = "E2"; # SW6
NET "D<3>" LOC = "K3"; # SW2
NET "D<2>" LOC = "B4"; # SW3
NET "D<1>" LOC = "G3"; # SW4
NET "D<0>" LOC = "F3"; # SW5
NET "Y" LOC = "G1"; # LD7



