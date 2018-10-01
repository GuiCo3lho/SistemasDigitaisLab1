library ieee;
use ieee.std_logic_1164.all;

entity multiplex4x1 is
    port(D : in STD_LOGIC_VECTOR (3 downto 0);
        S: in STD_LOGIC_VECTOR (1 downto 0);
        Z : in STD_LOGIC;);
end multiplex4x1;

entity sistema is
    port(A,B,C : in STD_LOGIC;
        X,Y : out STD_LOGIC);
end sistema;

architecture sistema_arch is

component multiplex4x1 is
    port(D : in STD_LOGIC_VECTOR (3 downto 0);
        S: in STD_LOGIC_VECTOR (1 downto 0);
        Z : in STD_LOGIC;);
end component;

signal entradasMUX1, entradasMUX2 : STD_LOGIC_VECTOR (3 down to 0);
signal seletorasMUX1, seletorasMUX2 : STD_LOGIC_VECTOR (1 downto 0);
signal saidaMUX1,saidaMUX2 : STD_LOGIC;

begin

    U1: multiplex4x1 port map (entradasMUX1,seletorasMUX1,X);
    U2: multiplex4x1 port map(entradasMUX2,seletorasMUX2,Y);
    entradasMUX1<3> <= '1';
    entradasMUX1<2> <=  not(C);
    entradasMUX1<1> <= not(C);
    entradasMUX1<0> <= '0';

    entradasMUX2<3> <= C;
    entradasMUX2<2> <= '0';
    entradasMUX2<1> <= not(C);
    entradasMUX2<0> <= '1';

    entradasMUX1<0> <= '0';
    entradasMUX1<1> <= not(C);
    entradasMUX1<2> <=  not(C);
    entradasMUX1<3> <= '1';

    entradasMUX2<0> <= '1';
    entradasMUX2<1> <= not(C);
    entradasMUX2<2> <= '0';
    entradasMUX2<3> <= C;


    seletorasMUX1 <= A&B;
    with seletorasMUX1 select
        X <= entradasMUX1<0> when "00";
             entradasMUX1<1> when "01"';
             entradasMUX1<2> when "10";
             entradasMUX1<3> when "11"';
             '0' when others;

    seletorasMUX2 <= A&B;
    with seletorasMUX2 select
        Y <= entradasMUX2<0> when "00";
             entradasMUX2<1> when "01";
             entradasMUX2<2> when "10";
             entradasMUX2<3> when "11";
             '0' when others;
end sistema_arch;
/* UCF */
NET "A" LOC = "K3" #SW2
NET "B" LOC = "L3" #SW1
NET "C" LOC = "P11" #SW0
NET "X" LOC = "M11" #LD1
NET "Y" LOC = "M5" #LD0

