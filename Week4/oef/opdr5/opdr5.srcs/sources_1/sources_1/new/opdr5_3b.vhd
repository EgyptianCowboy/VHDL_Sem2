

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity opdr5_3b is
    Port ( inputw : in STD_LOGIC;
           a_data : in STD_LOGIC_VECTOR (7 downto 0);
           b_data : in STD_LOGIC_VECTOR (7 downto 0);
           clk : in STD_LOGIC;
           dat_4 : out STD_LOGIC_VECTOR (7 downto 0);
           dat_5 : out STD_LOGIC_VECTOR (2 downto 0));
end opdr5_3b;

architecture Behavioral of opdr5_3b is

begin


end Behavioral;
