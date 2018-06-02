

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity opdr5_3 is
    Port ( a_in1 : in STD_LOGIC;
           b_in2 : in STD_LOGIC;
           clk : in STD_LOGIC;
           ctrl_int : in STD_LOGIC;
           out_b : out STD_LOGIC);
end opdr5_3;

architecture Behavioral of opdr5_3 is

begin
out_b <= (a_in1 and b_in2) or ctrl_int or clk;

end Behavioral;
