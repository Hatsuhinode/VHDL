library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity GCD_tb is 
end GCD_tb;

architecture Simulation1 of GCD_tb is

    signal CLK_tb, RST_tb, START_tb : STD_LOGIC := '0';
    signal Num1_tb, Num2_tb: UNSIGNED(7 downto 0);

begin
    GCD_Instance : entity work.GCD PORT MAP(CLK_tb, RST_tb, START_tb, Num1_tb, Num2_tb);

    Clock_Process: process
    begin
        while now < 100 ns loop
            CLK_tb <= '0';
            wait for 5 ns;
            CLK_tb <= '1';
            wait for 5 ns;
        end loop;
        wait;
    end process;
    
    Stimulus_Process : process
    begin 
        RST_tb <= '1';
        Num1_tb <= to_unsigned(12,Num1_tb'length);
        Num2_tb <= to_unsigned(22,Num1_tb'length);
        wait for 10 ns;

        RST_tb <= '0';
        START_tb <= '1';
        Num1_tb <= to_unsigned(9,Num1_tb'length);
        Num1_tb <= to_unsigned(6,Num1_tb'length);
        wait for 10 ns;

        wait;

    end process;

end Simulation1;