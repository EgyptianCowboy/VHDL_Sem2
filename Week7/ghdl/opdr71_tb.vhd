library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity opdr71_tb is
end opdr71_tb;

architecture Behavorial of opdr71_tb is

  component opdr71 is
    Port ( dvect : in std_logic_vector(7 downto 0);
           svect : in std_logic_vector(2 downto 0);
           output : out std_logic);
  end component;

  -- Inputs
  signal dvect_tb : std_logic_vector(7 downto 0) := "00000000";
  signal svect_tb : std_logic_vector(2 downto 0) := "000";
  -- Output
  signal output_tb : std_logic := '0';
begin
  uut: opdr71 port map (
    dvect => dvect_tb,
    svect => svect_tb,
    output => output_tb);

  process
  begin
    dvect_tb <= "01010101";
    svect_tb <= "000";
    wait for 10 ns;
    svect_tb <= "001";
    wait for 10 ns;
    svect_tb <= "010";
    wait for 10 ns;
    svect_tb <= "011";
    wait for 10 ns;
    svect_tb <= "100";
    wait for 10 ns;
    svect_tb <= "101";
    wait for 10 ns;
    svect_tb <= "110";
    wait for 10 ns;
    svect_tb <= "111";
    wait;

  end process;

end Behavorial;
