library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity test_adder is    
end entity;

architecture test_hw of test_adder is

component adder is
    port (
        Xin, Yin : in std_logic_vector(7 downto 0);
        Sum : out std_logic_vector(7 downto 0)
    );
end component;

signal Xin, Yin, Sum : std_logic_vector(7 downto 0);
begin

DUT : adder port map(Xin, Yin, Sum);

Main : process
variable X, Y : integer range -127 to 128;
variable ExpSum : std_logic_vector(7 downto 0);
begin
    X := -63;
    outer: while X < 63 loop
           Xin <= std_logic_vector(to_signed(X,Xin'length));
           Y := -63;
           inner: while Y < 63 loop
                Yin <= std_logic_vector(to_signed(Y,Yin'length));
                ExpSum := std_logic_vector(to_signed(X+Y,ExpSum'length));
                wait for 5 ns;
                assert(ExpSum = Sum) report "Sum error when X=" & integer'image(X) & ", Y=" & integer'image(Y) severity error;
                Y := Y + 1;
            end loop inner;

            X := X + 1;
    end loop outer;

end process Main;

end test_hw;
