library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MUX2to1 is
    Port (Input0 : IN STD_LOGIC;
          Input1 : IN STD_LOGIC;
          Sel : IN STD_LOGIC;
          OutputVal : OUT STD_LOGIC);
end MUX2to1;

architecture BehavioralModel of MUX2to1 is
    begin
        process (Input0, Input1, Sel)
        begin
            if Sel = '0' then 
                OutputVal <= Input0;
            else
                OutputVal <= Input1;
            end if;
        end process;
end BehavioralModel;

