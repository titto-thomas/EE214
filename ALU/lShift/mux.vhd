library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux is
    port (
        A, B, Sel : in std_logic;
        Mout : out std_logic
    );
end entity;

architecture mux_hw of mux is

begin

Mout <= (A and (not Sel)) or (B and Sel);

end mux_hw;
