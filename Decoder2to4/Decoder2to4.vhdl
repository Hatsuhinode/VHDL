library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Decoder2to4 is 
    Port(InputArr : IN STD_LOGIC_VECTOR(1 downto 0);
         OutputArr : OUT STD_LOGIC_VECTOR(3 downto 0)
         );
end Decoder2to4;

architecture BehavioralModel of Decoder2to4 is
begin
    process(InputArr)
    begin 
        case InputArr is 
            when "00" =>
                OutputArr <= "0001";

            when "01" =>
                OutputArr <= "0010";

            when "10" =>
                OutputArr <= "0100";

            when "11"=>
                OutputArr <= "1000";

            when others =>
                OutputArr <= "0000";
            end case;
        end process;

end BehavioralModel;