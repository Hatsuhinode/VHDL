library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SequenceDetector is 
    Port( CLK, RST : IN STD_LOGIC;
          InputVal : IN STD_LOGIC;
          detected : OUT STD_LOGIC
          );
end SequenceDetector;

architecture BehavioralModel of SequenceDetector is

    type state is (S0, S1, S2, S3, S4);
    signal CurrentState : state;
    signal NextState : state;

begin
    process(CLK,RST)
    begin
        if RST = '1' then 
            CurrentState <= S0;
        elsif rising_edge(CLK) then
            CurrentState <= NextState;
        end if;
    end process;

    process(CurrentState, InputVal)
    begin
        case CurrentState is 
            when S0 =>
                if InputVal = '1' then
                    NextState <= S1;
                else
                    NextState <= S0;
                end if;

            when S1 =>
                if InputVal = '0' then
                    NextState <= S2;
                else
                    NextState <= S1;
                end if;
    
            when S2 =>
                if InputVal = '1' then
                    NextState <= S3;
                else
                    NextState <= S0;
                end if;


            when S3 =>
                if InputVal = '1' then
                    NextState <= S4;
                else
                    NextState <= S2;
                end if;


            when S4 =>
                if InputVal = '1' then
                    NextState <= S1;
                else
                    NextState <= S2;
                end if;
            end case;
        end process;

    detected <= '1' when CurrentState = S4 else '0';
     
end BehavioralModel;