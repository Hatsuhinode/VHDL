library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity LCM is 
    Port( CLK, RST : IN STD_LOGIC;
          START : IN STD_LOGIC;
          Num1, Num2 : IN UNSIGNED(7 downto 0);
          OutputVal : OUT UNSIGNED(15 downto 0);
          done : OUT STD_LOGIC);
end LCM;

architecture BehavioralModel of LCM is

    type state is (IDLE, COMPUTE, COMPLETED);
    signal CurrentState : state;
    signal NextState : state;
    signal a, b: UNSIGNED(7 downto 0);
    signal temp : UNSIGNED(15 downto 0);


begin
    process(CLK,RST)
    begin
        if RST = '1' then 
            CurrentState <= IDLE;
        elsif rising_edge(CLK) then
            CurrentState <= NextState;
        end if;
    end process;

    process(CurrentState, Num1,Num2, START)
    begin
        case CurrentState is 
            when IDLE =>
                if START = '1' then
                    a <= Num1;
                    b <= Num2;
                    temp <= a * b;
                    NextState <= COMPUTE;
                else
                    NextState <= IDLE;
                end if;

            when COMPUTE =>
                if b /= (b'range => '0') then
                    temp <= temp - a;
                    NextState <= COMPUTE;
                else
                    OutputVal <= temp;
                    NextState <= COMPLETED;
                end if;
                
            when COMPLETED =>
                NextState <= IDLE;

            end case;
        end process;

    done <= '1' when CurrentState = COMPLETED else '0';
     
end BehavioralModel;