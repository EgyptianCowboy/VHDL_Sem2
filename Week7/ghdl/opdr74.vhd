library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity opdr74 is
  port (tBTemp    : in  std_logic;
        tOTemp    : in  std_logic;
        tWBoiler  : in  std_logic;
        tMaxKetel : in  std_logic;
        tKetel    : in  std_logic;
        schBPomp  : in  std_logic;
        schOPomp  : in  std_logic;
        pOnder    : out std_logic;
        pBoven    : out std_logic;
        pBoiler   : out std_logic;
        brKetel   : out std_logic);
end opdr74;

architecture Behavioral of opdr74 is

begin
  pBoiler <= not(tWBoiler);
  pBoven  <= schBPomp and tWBoiler;
  pOnder  <= schOPomp and tWBoiler;
  brKetel <= ((schBPomp and tWBoiler) or (schOPomp and tWBoiler) or not(tWBoiler)) and (not(tKetel) or not(tMaxKetel));

end Behavioral;
