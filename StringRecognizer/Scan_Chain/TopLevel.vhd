library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TopLevel is
port (
TDI : in std_logic; -- Test Data In
TDO : out std_logic; -- Test Data Out
TMS : in std_logic; -- TAP controller signal
TCLK : in std_logic; -- Test clock
TRST : in std_logic -- Test reset
);
end TopLevel;

architecture Struct of TopLevel is

-- declare DUT component
component StringRecognizer is
	port (
	X4,X3,X2,X1,X0: in std_logic; 
	W: out std_logic;
	clk,reset: in std_logic
	);
end component;

-- declare Scan-chain component.
component Scan_Chain is
generic (in_pins : integer; -- Number of input pins
out_pins : integer -- Number of output pins
);
port (
TDI : in std_logic; -- Test Data In
TDO : out std_logic; -- Test Data Out
TMS : in std_logic; -- TAP controller signal
TCLK : in std_logic; -- Test clock
TRST : in std_logic; -- Test reset
dut_in : out std_logic_vector(in_pins-1 downto 0); -- Input for the DUT
dut_out : in std_logic_vector(out_pins-1 downto 0) -- Output from the DUT
);
end component;

-- declare I/O signals to DUT component
signal X4,X3,X2,X1,X0: std_logic; 
signal W: std_logic;
signal clk,reset: std_logic;
	
-- declare signals to Scan-chain component.
signal scan_chain_parallel_in : std_logic_vector(6 downto 0);
signal scan_chain_parallel_out: std_logic_vector(0 downto 0);
begin
scan_instance: Scan_Chain generic map(in_pins => 7, out_pins => 1)
port map (TDI => TDI,
TDO => TDO,
TMS => TMS,
TCLK => TCLK,
TRST => TRST,
dut_in => scan_chain_parallel_in,
dut_out => scan_chain_parallel_out);

dut_instance: StringRecognizer port map(X4 => X4, X3 => X3, X2 => X2, X1 => X1, X0 => X0, W => W, clk => clk, reset => reset);

-- connections between StringRecognizer and Scan_Chain
reset <= scan_chain_parallel_in(6);
clk <= scan_chain_parallel_in(5);
X4 <= scan_chain_parallel_in(4);
X3 <= scan_chain_parallel_in(3);
X2 <= scan_chain_parallel_in(2);
X1 <= scan_chain_parallel_in(1);
X0 <= scan_chain_parallel_in(0);
scan_chain_parallel_out(0) <= W;
end Struct;