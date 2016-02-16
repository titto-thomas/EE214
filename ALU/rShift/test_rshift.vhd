library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity test_rshift is    
end entity;

architecture test_hw of test_rshift is

component rshift is
    port (
        Xin, Yin : in std_logic_vector(7 downto 0);
        Ans : out std_logic_vector(7 downto 0)
    );
end component;

signal Xin, Yin, Ans : std_logic_vector(7 downto 0);
begin

DUT : rshift port map(Xin, Yin, Ans);

Main : process
variable X, Y : integer range -127 to 128;
variable ExpAns, ExpAnsVec : std_logic_vector(7 downto 0);
begin
    Y := 0;
    outer: while Y < 8 loop
           Yin <= std_logic_vector(to_signed(Y,Yin'length));
           X := 0;
           inner: while X < 128 loop
                Xin <= std_logic_vector(to_signed(X,Xin'length));
				ExpAnsVec := std_logic_vector(to_signed(X,Xin'length));
				case Y is
					when 0 => ExpAns :=  ExpAnsVec;
					when 1 => ExpAns :=  '0' & ExpAnsVec(7 downto 1);
					when 2 => ExpAns :=  "00" & ExpAnsVec(7 downto 2);
					when 3 => ExpAns :=  "000" & ExpAnsVec(7 downto 3);
					when 4 => ExpAns :=  "0000" & ExpAnsVec(7 downto 4);
					when 5 => ExpAns :=  "00000" & ExpAnsVec(7 downto 5);
					when 6 => ExpAns :=  "000000" & ExpAnsVec(7 downto 6);
					when 7 => ExpAns :=  "0000000" & ExpAnsVec(7 downto 7);
					when others => ExpAns :=  ExpAnsVec;
				end case;			

                wait for 5 ns;
				assert(ExpAns = Ans) report "Right shift error when X=" & integer'image(X) & ", Y=" & integer'image(Y) severity error;
                X := X + 1;
            end loop inner;

            Y := Y + 1;
    end loop outer;

end process Main;

end test_hw;
