library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity T_FF is
    Port(
        T : IN STD_LOGIC;
        CLK : IN STD_LOGIC;
        Q : OUT STD_LOGIC);
end T_FF;

architecture T_FF_Behavioral of T_FF is
    signal Q_temp : STD_LOGIC;
    begin
        process(CLK)
        begin
            if rising_edge(CLK) then
                if T = '1' then
                    Q_temp <= not Q_temp;
                end if;
            end if;
            Q <= Q_temp;
        end process;

end T_FF_Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- 3 bit up counter
entity UpCounter is
    Port(
        CLK : IN STD_LOGIC;
        RST : IN STD_LOGIC;
        Q : OUT STD_LOGIC_VECTOR(2 downto 0));
end UpCounter;

architecture UpCounter_Behavioral of UpCounter is
    signal T0, T1, T2 : STD_LOGIC;
    signal Q0, Q1, Q2 : STD_LOGIC;

begin
    T0 <= '1';
    T1 <= Q0 AND Q1;
    T2 <= Q0 AND Q1 AND Q2;

    T0_FF : entity work.T_FF PORT MAP (T => T0, CLK => CLK, Q => Q0);
    T1_FF : entity work.T_FF PORT MAP (T => T1, CLK => CLK, Q => Q1);
    T2_FF : entity work.T_FF PORT MAP (T => T2, CLK => CLK, Q => Q2);

    Q <= Q2 & Q1 & Q0;
end UpCounter_Behavioral;
