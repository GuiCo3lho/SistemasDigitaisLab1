library ieee;
use ieee.std_logic_1164.all;

entity multiplex8x1 is
    port(D : in STD_LOGIC_VECTOR (7 downto 0);
        S: in STD_LOGIC_VECTOR (2 downto 0);
        Y : in STD_LOGIC;);

entity multiplex8x1 is
    port(D : in STD_LOGIC_VECTOR (7 downto 0);
        S: in STD_LOGIC_VECTOR (2 downto 0);
        Y : in STD_LOGIC;);

architecture multiplex8x1_arch of multiplex8x1 is
signal x : STD_LOGIC_VECTOR (7 downto 0);
begin
    with S select

y <= 'D<0>' when "000",
     'D<1>' when "001",
     'D<3>' when "010",
     'D<4>' when "011",
     'D<5>' when "100",
     'D<6>' when "110",
     'D<7>' when "111",
     '0' when others;

end multiplex8x1_arch

/* UFCF */
NET "D<0>" LOC = "P11"; #SW0
NET "D<1>" LOC = "L3"; #SW1
NET "D<2>" LOC = "K3"; #SW2
NET "D<3>" LOC = "B4"; #SW3
NET "D<4>" LOC = "G3"; #SW4
NET "D<5>" LOC = "F3"; #SW5
NET "D<6>" LOC = "E2"; #SW6
NET "D<7>" LOC = "N3"; #SW7
NET "S<0>" LOC = "G12"; #BTN0
NET "S<1>" LOC = "C11"; #BTN1
NET "S<2>" LOC = "M4"; #BTN2
NET "Y" LOC = "M5"; #LD0







