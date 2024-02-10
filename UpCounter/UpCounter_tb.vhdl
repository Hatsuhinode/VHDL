library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity UpCounter_tb is 
end UpCounter_tb;

architecture Simulation1 of UpCounter_tb is

    signal CLK_tb, RST_tb : STD_LOGIC := '0';
    signal Count_tb : STD_LOGIC_VECTOR(3 downto 0) := "0000";

begin
    UpCounter_Instance : entity work.UpCounter PORT MAP(CLK_tb, RST_tb, Count_tb);

    Clock_Process: process
    begin
        while now < 250 ns loop
            CLK_tb <= '0';
            wait for 5 ns;
            CLK_tb <= '1';
            wait for 5 ns;
        end loop;
        wait;
    end process;
    
    Stimulus_Reset_Process : process
    begin 
        RST_tb <= '1';
        wait for 10 ns;

        RST_tb <= '0';

        wait for 150 ns;

        RST_tb <= '1';

        wait;

    end process;

end Simulation1;