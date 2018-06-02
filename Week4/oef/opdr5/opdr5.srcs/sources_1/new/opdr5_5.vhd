library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity opdr5_5 is
    Port ( Hold_RGB : in STD_LOGIC;
           reset : in STD_LOGIC;
           sel : in STD_LOGIC;
           s1 : out STD_LOGIC;
           s2 : out STD_LOGIC);
end opdr5_5;

architecture Behavioral of opdr5_5 is
signal vecint : STD_LOGIC_VECTOR(2 downto 0);
signal vecout : STD_LOGIC_VECTOR(1 downto 0);

begin
vecint <= Hold_RGB & reset & sel;


vecout <= "01"  when vecint = "000" else
  "10" when vecint = "001" else
  "00" when vecint = "010" else
  "00" when vecint = "011" else
  "11" when vecint = "100" else 
  "11" when vecint = "101" else
  "00" when vecint = "110" else
  "00" when vecint = "111";

s1 <= vecout(1);
s2 <= vecout(0);


end Behavioral;
