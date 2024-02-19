-- VHDL Testbench for StructuralLogic

library IEEE;
use IEEE.std_logic_1164.all;

entity and_or_tb is
end and_or_tb;

architecture behavior of and_or_tb is
    -- Declare the signals for the inputs and output
    signal A, B, C, D, Z : std_logic;
    

begin
    -- Instantiate the unit under question (UUT)
    UUT: entity work.QUESTION port map (
        A => A,
        B => B,
        C => C,
        D => D,
        Z => Z
    );

    -- Stimulus process
    stimulus_process: process
    begin
        -- Initialize inputs
        A <= '0'; B <= '0'; C <= '0'; D <= '0';
        wait for  10 ns;
        
        -- Test all possible input combinations
        A<= '1'; B<='0'; C<='1';D<='0';
        wait for  10 ns;
        A<= '1'; B<='1'; C<='0';D<='1';
        wait for  10 ns;
        A<= '0'; B<='0'; C<='0';D<='0';
        wait for  10 ns;
        A<= '0'; B<='1'; C<='1';D<='1';
        wait for  10 ns;

        -- Finish the simulation
        wait;
    end process;
end behavior;
