library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder is
    port (
        Xin, Yin : in std_logic_vector(7 downto 0);
        Sum : out std_logic_vector(7 downto 0)
    );
end entity;

architecture adder_hw of adder is

component FA is
    port (
        X, Y, Cin : in std_logic;
        S, Cout : out std_logic
    );
end component;

signal Carry : std_logic_vector(7 downto 0);
begin

bit0 : FA port map (X => Xin(0), Y => Yin(0), Cin => '0', S => Sum(0), Cout => Carry(0));
bit1 : FA port map (X => Xin(1), Y => Yin(1), Cin => Carry(0), S => Sum(1), Cout => Carry(1));
bit2 : FA port map (X => Xin(2), Y => Yin(2), Cin => Carry(1), S => Sum(2), Cout => Carry(2));
bit3 : FA port map (X => Xin(3), Y => Yin(3), Cin => Carry(2), S => Sum(3), Cout => Carry(3));

bit4 : FA port map (X => Xin(4), Y => Yin(4), Cin => Carry(3), S => Sum(4), Cout => Carry(4));
bit5 : FA port map (X => Xin(5), Y => Yin(5), Cin => Carry(4), S => Sum(5), Cout => Carry(5));
bit6 : FA port map (X => Xin(6), Y => Yin(6), Cin => Carry(5), S => Sum(6), Cout => Carry(6));
bit7 : FA port map (X => Xin(7), Y => Yin(7), Cin => Carry(6), S => Sum(7), Cout => Carry(7));

end adder_hw;
