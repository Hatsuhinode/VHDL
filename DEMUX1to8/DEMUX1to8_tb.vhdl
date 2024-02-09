library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity DEMUX1to8_tb is
end DEMUX1to8_tb;

architecture Simulation1 of DEMUX1to8_tb is

    signal InputVal_tb : STD_LOGIC;
    signal SelArr_tb : STD_LOGIC_VECTOR(2 downto 0);
    signal OutputArr_tb : STD_LOGIC_VECTOR(7 downto 0);

    component DEMUX1to8
        Port(InputVal : IN STD_LOGIC;
            SelArr : IN STD_LOGIC_VECTOR(2 downto 0);
            OutputArr : OUT STD_LOGIC_VECTOR(7 downto 0)
            );
    end component;

begin
    DEMUX_Instance : DEMUX1to8 PORT MAP (InputVal_tb, SelArr_tb, OutputArr_tb);

    process
    begin
        InputVal_tb <= '1';
        SelArr_tb <= "001";
        wait for 10 ns;

        InputVal_tb <= '1';
        SelArr_tb <= "111";
        wait for 10 ns;

        InputVal_tb <= '0';
        SelArr_tb <= "111";
        wait for 10 ns;

        wait;

    end process;

end Simulation1;
