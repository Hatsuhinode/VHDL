library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MUX2to1_tb is
end MUX2to1_tb;

architecture Simulation1 of MUX2to1_tb is

    signal Input0_tb, Input1_tb, Sel_tb, OutputVal_tb : STD_LOGIC;

    component MUX2to1
        Port (Input0 : IN STD_LOGIC;
              Input1 : IN STD_LOGIC;
              Sel : IN STD_LOGIC;
              OutputVal : OUT STD_LOGIC);
    end component;
 
begin
    MUX_Instance : MUX2to1 PORT MAP (Input0_tb, Input1_tb, Sel_tb, OutputVal_tb);

    process 
    begin
        Input0_tb <= '0';
        Input1_tb <= '1';
        Sel_tb <= '0';
        wait for 5 ns;

        Input0_tb <= '0';
        Input1_tb <= '1';
        Sel_tb <= '1';
        wait for 5 ns;
    
        Input0_tb <= '1';
        Input1_tb <= '0';
        Sel_tb <= '0';
        wait for 5 ns;

        Input0_tb <= '1';
        Input1_tb <= '0';
        Sel_tb <= '1';
        wait for 5 ns;

        wait;
    
    end process;


end Simulation1;