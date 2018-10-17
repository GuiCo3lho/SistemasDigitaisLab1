library IEEE;
use IEE.std_logic_1164.all;
use IEE.std_logic_arith.all;

entity testbench is
    port(F_dut,F_gm : in STD_LOGIC;
        a,b : out STD_LOGIC_VECTOR (3 downto 0);
end testbench;

architecture testbench_arch of testbench is

begin
    process
        variable contbin : STD_LOGIC_VECTOR (7 downto 0);
    begin
        report "Iniciando teste..." severity NOTE;
        contbin := "00000000";
        for i in 1 to 256 loop
            a(3) <= contbin(7);
            a(2) <= contbin(6);
            a(1) <= contbin(5);
            a(0) <= contbin(4);
            b(3) <= contbin(3);
            b(2) <= contbin(2);
            b(1) <= contbin(1);
            b(0) <= contbin(0);
            wait for 500 ns;

            assert (F_dut = F_gm) report "Falhou: i = " & integer'image(i) severity ERROR;
            contbin := contbin + 1;
        end loop;
        report "Teste finalzado!" severity NOTE;
        wait;
    end process;
end testbench_arch;

