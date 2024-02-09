library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Decoder2to4_tb is 
end Decoder2to4_tb;

architecture Simulation1 of Decoder2to4_tb is
    signal InputArr_tb : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
    signal OutputArr_tb : STD_LOGIC_VECTOR(3 downto 0);

begin
    Decoder2to4_Instance : entity work.Decoder2to4 PORT MAP(InputArr_tb, OutputArr_tb);
    process
    begin
        InputArr_tb <= "00";
        wait for 50 ns;

        InputArr_tb <= "01";
        wait for 50 ns;

        InputArr_tb <= "10";
        wait for 50 ns;

        InputArr_tb <= "11";
        wait for 50 ns;

        wait;
    end process;
end Simulation1;