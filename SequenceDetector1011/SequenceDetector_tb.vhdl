library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SequenceDetector_tb is 
end SequenceDetector_tb;

architecture Simulation1 of SequenceDetector_tb is

    signal CLK_tb, RST_tb, InputVal_tb, detected_tb : STD_LOGIC := '0';

begin
    SequenceDetector_Instance : entity work.SequenceDetector PORT MAP(CLK_tb, RST_tb, InputVal_tb, detected_tb);

    Clock_Process: process
    begin
        while now < 500 ns loop
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
        wait for 10 ns;

        RST_tb <= '0';
        wait for 10 ns;

        InputVal_tb <= '1';
        wait for 10 ns;

        InputVal_tb <= '0';
        wait for 10 ns;

        InputVal_tb <= '1';
        wait for 10 ns;

        InputVal_tb <= '1';
        wait for 10 ns;

        InputVal_tb <= '0';
        wait for 10 ns;

        InputVal_tb <= '1';
        wait for 10 ns;

        InputVal_tb <= '0';
        wait for 10 ns;

        InputVal_tb <= '1';
        wait for 10 ns;

        InputVal_tb <= '1';
        wait for 10 ns;

        InputVal_tb <= '0';
        wait for 10 ns;

        InputVal_tb <= '1';
        wait for 10 ns;

        InputVal_tb <= '0';
        wait for 10 ns;

        wait;

    end process;

end Simulation1;