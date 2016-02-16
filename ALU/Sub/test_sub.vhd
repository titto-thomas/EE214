library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity test_sub is    
end entity;

architecture test_hw of test_sub is

component sub is
    port (
        Xin, Yin : in std_logic_vector(7 downto 0);
        Minus : out std_logic_vector(7 downto 0)
    );
end component;

signal Xin, Yin, Minus : std_logic_vector(7 downto 0);
begin

DUT : sub port map(Xin, Yin, Minus);

Main : process
variable X, Y : integer range -127 to 128;
variable ExpMin : std_logic_vector(7 downto 0);
begin
    X := -63;
    outer: while X < 63 loop
           Xin <= std_logic_vector(to_signed(X,Xin'length));
           Y := -63;
           inner: while Y < 63 loop
                Yin <= std_logic_vector(to_signed(Y,Yin'length));
                ExpMin := std_logic_vector(to_signed(X-Y,ExpMin'length));
                wait for 5 ns;
                assert(ExpMin = Minus) report "Sum error when X=" & integer'image(X) & ", Y=" & integer'image(Y) severity error;
                Y := Y + 1;
            end loop inner;

            X := X + 1;
    end loop outer;

end process Main;

end test_hw;
