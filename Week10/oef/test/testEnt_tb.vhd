library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-------------------------------------------------------------------------------

entity testEnt_tb is

end entity testEnt_tb;

-------------------------------------------------------------------------------

architecture behavorial of testEnt_tb is

  -- component ports
  signal testIn  : unsigned(3 downto 0);
  signal testOut : unsigned(3 downto 0);

  -- clock
  signal Clk : std_logic := '1';

begin  -- architecture behavorial

  -- component instantiation
  DUT: entity work.testEnt
    port map (
      testIn  => testIn,
      testOut => testOut);

  -- clock generation
  Clk <= not Clk after 10 ns;

  -- waveform generation
  WaveGen_Proc: process
  begin
    -- insert signal assignments here

    wait until Clk = '1';
  end process WaveGen_Proc;



end architecture behavorial;

-------------------------------------------------------------------------------

configuration testEnt_tb_behavorial_cfg of testEnt_tb is
  for behavorial
  end for;
end testEnt_tb_behavorial_cfg;

-------------------------------------------------------------------------------
