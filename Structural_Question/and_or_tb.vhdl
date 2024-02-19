-- VHDL Testbench for StructuralLogic

library IEEE;
use IEEE.std_logic_1164.all;

entity and_or_tb is
end and_or_tb;

architecture behavior of and_or_tb is
    -- Declare the signals for the inputs and output
    signal A, B, C, D, Z : std_logic;
    
    -- Declare the component for the unit under test
    component QUESTION is
        port(
            A : in std_logic;
            B : in std_logic;
            C : in std_logic;
            D : in std_logic;
            Z : out std_logic
        );
    end component;

begin
    -- Instantiate the unit under question (UUT)
    UUT: QUESTION port map (
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
        for i in  0 to  15 loop
            A <= std_logic'val(i mod  2);
            B <= std_logic'val((i /  2) mod  2);
            C <= std_logic'val((i /  4) mod  2);
            D <= std_logic'val(i /  8);
            wait for  10 ns;
        end loop;

        -- Finish the simulation
        wait;
    end process;
end behavior;
