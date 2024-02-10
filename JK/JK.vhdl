library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity JK is
    Port(J, K, CLK, RST : IN STD_LOGIC;
         Q, Qn : OUT STD_LOGIC);
end JK;

architecture BehavioralModel of JK is
    signal Q_reg, Qn_reg : STD_LOGIC;
begin
    process(J,K,CLK,RST)
    begin
        if(RST = '1') then
            Q_reg <= '0';
            Qn_reg <= '1';
    
        elsif rising_edge(CLK) then
            if (J = '0' and K = '0') then
                Q_reg <= Q_reg;
                Qn_reg <= Qn_reg;


            elsif (J = '0' and K = '1') then
                Q_reg <= '0';
                Qn_reg <= '1';


            elsif (J = '1' and K = '0') then
                Q_reg <= '1';
                Qn_reg <= '0';

            elsif (J = '1' and K = '1') then
                Q_reg <= not Q_reg;
                Qn_reg <= not Qn_reg;
            end if;
        end if;
        Q <= Q_reg;
        Qn <= Qn_reg;
    end process;

end BehavioralModel;