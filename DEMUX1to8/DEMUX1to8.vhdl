library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity DEMUX1to8 is 
    Port(InputVal : IN STD_LOGIC;
         SelArr : IN STD_LOGIC_VECTOR(2 downto 0);
         OutputArr : OUT STD_LOGIC_VECTOR(7 downto 0)
         );
end DEMUX1to8;

architecture BehavioralModel of DEMUX1to8 is

begin
    process(InputVal, SelArr)
    begin
        case SelArr is 
            when "000" =>
                OutputArr <= (InputVal, '0', '0', '0', '0', '0', '0', '0');

            when "001" =>
                OutputArr <= ('0', InputVal, '0', '0', '0', '0', '0', '0');

            when "010" =>
                OutputArr <= ('0', '0', InputVal, '0', '0', '0', '0', '0');

            when "011" =>
                OutputArr <= ('0', '0', '0', InputVal, '0', '0', '0', '0');

            when "100" =>
                OutputArr <= ('0', '0', '0', '0', InputVal, '0', '0', '0');

            when "101" =>
                OutputArr <= ('0', InputVal, '0', '0', '0', InputVal, '0', '0');

            when "110" =>
                OutputArr <= ('0', '0', '0', '0', '0', '0', InputVal, '0');

            when "111" =>
                OutputArr <= ('0', '0', '0', '0', '0', '0', '0', InputVal);

            when others => 
                OutputArr <= (others => '0');   -- Sets all bits of OutputArr to '0'
            
            end case;
        end process;
end BehavioralModel;