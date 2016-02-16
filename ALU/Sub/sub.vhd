library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sub is
    port (
        Xin, Yin : in std_logic_vector(7 downto 0);
        Minus : out std_logic_vector(7 downto 0)
    );
end entity;

architecture sub_hw of sub is

component adder is
    port (
        Xin, Yin : in std_logic_vector(7 downto 0);
        Sum : out std_logic_vector(7 downto 0)
    );
end component;

signal notY,compY : std_logic_vector(7 downto 0);

begin

notY <= not (Yin);
Comp: adder port map(notY, x"01", compY);
Subtract: adder port map(Xin, compY, Minus);

end sub_hw;
