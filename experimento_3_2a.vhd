library ieee;
use ieee.std_logic_1164.all;

entity decoder4x16 is
    port(A : in STD_LOGIC_VECTOR (3 downto 0);
        Y: in STD_LOGIC_VECTOR (15 downto 0);
    );

architecture decoder4x16_arch of decoder4x16 is
begin
    with A select
    Y <= "00000001" when "0000",
         "00000010" when "0001",
         "00000100" when "0010",
         "00001000" when "0011",
         "00010000" when "0100",
         "00100000" when "0101",
         "01000000" when "0110",
         "10000000" when "0111",

         "00000001" when "1000",
         "00000010" when "1001",
         "00000100" when "1010",
         "00001000" when "1011",
         "00010000" when "1100",
         "00100000" when "1101",
         "01000000" when "1110",
         "10000000" when "1111",
         '0' when others;

end decoder4x16_arch;

/* UCF_1 */
NET "A<0>" LOC = "P11"; #SW0
NET "A<1>" LOC = "L3"; #SW1
NET "A<2>" LOC = "K3"; #SW2
NET "A<3>" LOC = "B4"; #SW3
NET "Y<0>" LOC = "M5"; #LD0
NET "y<1>" LOC = "M11"; #LD1
NET "Y<2>" LOC = "P7"; #LD2
NET "Y<3>" LOC = "P6"; #LD3
NET "Y<4>" LOC = "N5"; #LD4
NET "Y<5>" LOC = "N4"; #LD5
NET "Y<6>" LOC = "P4"; #LD6
NET "Y<7>" LOC = "G1"; #LD7

/* UCF_2 */

NET "A<0>" LOC = "P11"; #SW0
NET "A<1>" LOC = "L3"; #SW1
NET "A<2>" LOC = "K3"; #SW2
NET "A<3>" LOC = "B4"; #SW3
NET "Y<8>" LOC = "M5"; #LD0
NET "y<9>" LOC = "M11"; #LD1
NET "Y<10>" LOC = "P7"; #LD2
NET "Y<11>" LOC = "P6"; #LD3
NET "Y<12>" LOC = "N5"; #LD4
NET "Y<13>" LOC = "N4"; #LD5
NET "Y<14>" LOC = "P4"; #LD6
NET "Y<15>" LOC = "G1"; #LD7









