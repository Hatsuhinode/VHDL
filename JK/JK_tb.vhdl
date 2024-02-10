library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity JK_tb is
end JK_tb;

architecture Simulation1 of JK_tb is

    signal J_tb, K_tb, CLK_tb, RST_tb : STD_LOGIC;
    signal Q_tb, Qn_tb : STD_LOGIC;

begin
    JK_Instance : entity work.JK PORT MAP(J_tb, K_tb, CLK_tb, RST_tb, Q_tb, Qn_tb);

    Clock_Process: process
    begin
        while now < 100 ns loop
            CLK_tb <= '1';
            wait for 5 ns;
            CLK_tb <= '0';
            wait for 5 ns;
        end loop;
        wait;
    end process;

    AStimulus_Reset_Process : process
    begin

        RST_tb <= '0';
        J_tb <= '0';
        K_tb <='0';
        wait for 15 ns;


        RST_tb <= '0';
        J_tb <= '0';
        K_tb <='1';
        wait for 15 ns;

        RST_tb <= '0';
        J_tb <= '1';
        K_tb <='0';
        wait for 15 ns;

        RST_tb <= '0';
        J_tb <= '1';
        K_tb <='1';
        wait for 15 ns;

        RST_tb <= '1';
        J_tb <= '1';
        K_tb <='0';
        wait for 15 ns;

        RST_tb <= '1';
        J_tb <= '1';
        K_tb <='0';
        wait for 15 ns;

        wait;
    end process;

end Simulation1;