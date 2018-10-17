library IEEE;
use IEE.std_logic_1164.all;
use IEE.std_logic_arith.all;

entity somador_4bits_ARITH is
    port(A,B : in STD_LOGIC_VECTOR(3 downto 0);
        S : out STD_LOGIC_VECTOR(4 downto 0);
end somador_4bits_ARITH

architecture somador_4bits_ARITH_arch of somador_4bits_ARITH is
    S <= unsigned(A) + unsigned(B);
end somador_4bits_ARITH_arch;

/*UCF */
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



