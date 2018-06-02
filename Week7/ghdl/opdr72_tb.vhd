library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity opdr72_tb is
end opdr72_tb;

architecture Behavorial of opdr72_tb is

  component opdr72 is
    port (inVect  : in  std_logic_vector(2 downto 0);
          outVect : out std_logic_vector(7 downto 0));
  end component;

  -- Inputs
  signal inVect_tb  : std_logic_vector(2 downto 0) := "000";
  -- Output
  signal outVect_tb : std_logic_vector(7 downto 0) := "00000000";
begin
  uut : opdr72 port map (
    inVect  => inVect_tb,
    outVect => outVect_tb
    );

  process
  begin
    inVect_tb <= "000";
    wait for 10 ns;
    inVect_tb <= "001";
    wait for 10 ns;
    inVect_tb <= "010";
    wait for 10 ns;
    inVect_tb <= "011";
    wait for 10 ns;
    inVect_tb <= "100";
    wait for 10 ns;
    inVect_tb <= "101";
    wait for 10 ns;
    inVect_tb <= "110";
    wait for 10 ns;
    inVect_tb <= "111";
    wait;

  end process;

end Behavorial;
