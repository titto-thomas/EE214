library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FA is
    port (
        X, Y, Cin : in std_logic;
        S, Cout : out std_logic
    );
end entity;

architecture fa_hw of FA is

signal notX, notY, notCin : std_logic;
begin

notX <= not X;
notY <= not Y;
notCin <= not Cin;

S <= (notX and notY and Cin) or (notX and Y and notCin) or (X and notY and not Cin) or (X and Y and Cin);
Cout <= (X and Y) or (X and Cin) or (Y and Cin);

end fa_hw;
