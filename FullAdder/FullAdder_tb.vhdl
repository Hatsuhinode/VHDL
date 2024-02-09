library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FullAdder_tb is 
end FullAdder_tb;

architecture Simulation1 of FullAdder_tb is

    signal Input1_tb, Input2_tb, CarryIn_tb : STD_LOGIC;
    signal Sum_tb, CarryOut_tb : STD_LOGIC;

    component FullAdder
    Port(Input1 : IN STD_LOGIC;
         Input2 : IN STD_LOGIC;
         CarryIn : IN STD_LOGIC;
         Sum : OUT STD_LOGIC;
         CarryOut : OUT STD_LOGIC
         );
end component;

begin
    FullAdder_Instance : FullAdder PORT MAP (Input1_tb, Input2_tb, CarryIn_tb, Sum_tb, CarryOut_tb);

    process
    begin

        Input1_tb <= '0'; 
        Input2_tb <= '0';
        CarryIn_tb <= '0';
        wait for 10 ns;

        Input1_tb <= '1'; 
        Input2_tb <= '1';
        CarryIn_tb <= '0';
        wait for 10 ns;

        Input1_tb <= '0'; 
        Input2_tb <= '1';
        CarryIn_tb <= '1';
        wait for 10 ns;

        Input1_tb <= '1'; 
        Input2_tb <= '1';
        CarryIn_tb <= '1';
        wait for 10 ns;

        wait;
    end process;

end Simulation1;