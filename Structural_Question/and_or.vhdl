-- OR Gate
library IEEE;
use IEEE.std_logic_1164.all;

entity OR_GATE is
    port (
        X, Y: in std_logic;
        W: out std_logic
    );
end OR_GATE;

architecture OR_STRUCTURAL of OR_GATE is
begin
    process(X, Y)
    begin
        W <= X OR Y;
    end process;
end OR_STRUCTURAL;

-- AND Gate
library IEEE;
use IEEE.std_logic_1164.all;

entity AND_GATE is
    port (
        X, Y: in std_logic;
        W: out std_logic
    );
end AND_GATE;

architecture AND_STRUCTURAL of AND_GATE is
begin
    process(X, Y)
    begin
        W <= X AND Y;
    end process;
end AND_STRUCTURAL;

-- Question Entity
library IEEE;
use IEEE.std_logic_1164.all;

entity QUESTION is
    port (
        A, B, C, D: in std_logic;
        Z: out std_logic
    );
end QUESTION;

architecture QUESTION_STRUCTURAL of QUESTION is
    component OR_GATE
        port (
            X, Y: in std_logic;
            W: out std_logic
        );
    end component;

    component AND_GATE
        port (
            X, Y: in std_logic;
            W: out std_logic
        );
    end component;

    signal E, F: std_logic;
begin
    U1: AND_GATE port map (X => A, Y => B, W => E);
    U2: AND_GATE port map (X => C, Y => D, W => F);
    U3: OR_GATE port map (X => E, Y => F, W => Z);
end QUESTION_STRUCTURAL;
