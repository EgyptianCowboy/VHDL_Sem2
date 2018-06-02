library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ckt_a is
    Port ( J : in STD_LOGIC;
           K : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC); --Q : out STD_LOGIC;)
end ckt_a;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ckt_b is
    Port ( mr_fluffy : in STD_LOGIC_VECTOR(15 downto 0);
           mux_ctrl : in STD_LOGIC_VECTOR(3 downto 0);
           byte_out : in STD_LOGIC_VECTOR(3 downto 0)); -- byte_out : in STD_LOGIC_VECTOR(3 downto 0);
end ckt_b;


architecture Behavioral of ckt_a is

begin


end Behavioral;

architecture Behavioral of ckt_b is

begin


end Behavioral;