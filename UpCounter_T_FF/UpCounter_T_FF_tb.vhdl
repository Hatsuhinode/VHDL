library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity UpCounter_tb is
end UpCounter_tb;

architecture Simulation1 of UpCounter_tb is 

    signal CLK_tb : STD_LOGIC := '0';
    signal RST_tb : STD_LOGIC := '0';
    signal Q_tb : STD_LOGIC_VECTOR(2 downto 0);

begin
    UpCounter_Instance : entity work.UpCounter PORT MAP(CLK => CLK_tb, RST => RST_tb, Q => Q_tb);

    CLK_process : process
    begin
        while now < 2500 ns loop
            CLK_tb <= '0';
            wait for 5 ns;
            CLK_tb <=  '1';
            wait for 5 ns;
        end loop;
        wait;
    end process CLK_process;

    Stimulus_Reset_Process : process
    begin 
        RST_tb <= '1';
        wait for 10 ns;

        RST_tb <= '0';

        wait for 1500 ns;

        RST_tb <= '1';
        wait;

    end process Stimulus_Reset_Process;
        

end Simulation1;