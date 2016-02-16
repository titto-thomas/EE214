library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rshift is
    port (
        Xin, Yin : in std_logic_vector(7 downto 0);
        Ans : out std_logic_vector(7 downto 0)
    );
end entity;

architecture rshift_hw of rshift is

component mux is
    port (
        A, B, Sel : in std_logic;
        Mout : out std_logic
    );
end component;

signal Level1,Level2 : std_logic_vector(7 downto 0);
begin

Mux10 : mux port map (A=>Xin(0),B=>Xin(4),Sel=>Yin(2),Mout=>Level1(0));
Mux11 : mux port map (A=>Xin(1),B=>Xin(5),Sel=>Yin(2),Mout=>Level1(1));
Mux12 : mux port map (A=>Xin(2),B=>Xin(6),Sel=>Yin(2),Mout=>Level1(2));
Mux13 : mux port map (A=>Xin(3),B=>Xin(7),Sel=>Yin(2),Mout=>Level1(3));
Mux14 : mux port map (A=>Xin(4),B=>'0',Sel=>Yin(2),Mout=>Level1(4));
Mux15 : mux port map (A=>Xin(5),B=>'0',Sel=>Yin(2),Mout=>Level1(5));
Mux16 : mux port map (A=>Xin(6),B=>'0',Sel=>Yin(2),Mout=>Level1(6));
Mux17 : mux port map (A=>Xin(7),B=>'0',Sel=>Yin(2),Mout=>Level1(7));

Mux20 : mux port map (A=>Level1(0),B=>Level1(2),Sel=>Yin(1),Mout=>Level2(0));
Mux21 : mux port map (A=>Level1(1),B=>Level1(3),Sel=>Yin(1),Mout=>Level2(1));
Mux22 : mux port map (A=>Level1(2),B=>Level1(4),Sel=>Yin(1),Mout=>Level2(2));
Mux23 : mux port map (A=>Level1(3),B=>Level1(5),Sel=>Yin(1),Mout=>Level2(3));
Mux24 : mux port map (A=>Level1(4),B=>Level1(6),Sel=>Yin(1),Mout=>Level2(4));
Mux25 : mux port map (A=>Level1(5),B=>Level1(7),Sel=>Yin(1),Mout=>Level2(5));
Mux26 : mux port map (A=>Level1(6),B=>'0',Sel=>Yin(1),Mout=>Level2(6));
Mux27 : mux port map (A=>Level1(7),B=>'0',Sel=>Yin(1),Mout=>Level2(7));

Mux30 : mux port map (A=>Level2(0),B=>Level2(1),Sel=>Yin(0),Mout=>Ans(0));
Mux31 : mux port map (A=>Level2(1),B=>Level2(2),Sel=>Yin(0),Mout=>Ans(1));
Mux32 : mux port map (A=>Level2(2),B=>Level2(3),Sel=>Yin(0),Mout=>Ans(2));
Mux33 : mux port map (A=>Level2(3),B=>Level2(4),Sel=>Yin(0),Mout=>Ans(3));
Mux34 : mux port map (A=>Level2(4),B=>Level2(5),Sel=>Yin(0),Mout=>Ans(4));
Mux35 : mux port map (A=>Level2(5),B=>Level2(6),Sel=>Yin(0),Mout=>Ans(5));
Mux36 : mux port map (A=>Level2(6),B=>Level2(7),Sel=>Yin(0),Mout=>Ans(6));
Mux37 : mux port map (A=>Level2(7),B=>'0',Sel=>Yin(0),Mout=>Ans(7));

end rshift_hw;
