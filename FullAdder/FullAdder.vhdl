library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FullAdder is
    Port(Input1 : IN STD_LOGIC;
         Input2 : IN STD_LOGIC;
         CarryIn : IN STD_LOGIC;
         Sum : OUT STD_LOGIC;
         CarryOut : OUT STD_LOGIC
         );
end FullAdder;

architecture BehavioralModel of FullAdder is
begin
    process(Input1, Input2, CarryIn)
    begin
        Sum <= (Input1 XOR Input2) XOR CarryIn;
        CarryOut <= (Input1 AND Input2) OR ((Input1 XOR Input2) AND CarryIn);
    end process;
end BehavioralModel;