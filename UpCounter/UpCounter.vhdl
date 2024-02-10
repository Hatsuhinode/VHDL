library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity UpCounter is 
    Port( CLK, RST : IN STD_LOGIC;
          Count : OUT STD_LOGIC_VECTOR(3 downto 0));
end UpCounter;

architecture BehavioralModel of UpCounter is

    signal Count_reg : UNSIGNED(3 downto 0);

begin
    process(CLK,RST)
    begin
        if RST = '1' then 
            Count_reg <= "0000";
        
        elsif rising_edge(CLK) then 
            if Count_reg <= "1111" then
                Count_reg <= "0000";
            else
                Count_reg <= Count_reg + 1;
            end if;
        end if;
        Count <= STD_LOGIC_VECTOR(Count_reg);

    end process;
    
end BehavioralModel;