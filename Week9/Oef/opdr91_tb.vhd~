library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


-------------------------------------------------------------------------------

entity opdr91_tb is

end entity opdr91_tb;

-------------------------------------------------------------------------------

architecture behavorial of opdr91_tb is

  -- component ports
  signal switches : std_logic_vector(3 downto 0) := "0000";
  signal buttons  : std_logic_vector(3 downto 0) := "0000";
  signal rotary   : std_logic_vector(1 downto 0) := "00";
  signal leds     : std_logic_vector(3 downto 0) := "0000";

  -- clock
  --signal Clk : std_logic := '1';

begin  -- architecture behavorial

  -- component instantiation
  DUT : entity work.opdr91
    port map (
      switches => switches,
      buttons  => buttons,
      rotary   => rotary,
      leds     => leds);

  process
    variable i      : unsigned(3 downto 0) := "0000";
    variable rotCnt : unsigned(1 downto 0) := "00";
  begin
    wait for 30 ns;
    while i < 15 loop
      i        := i + 1;
      switches <= std_logic_vector(i);
      wait for 10 ns;
    end loop;
    switches <= "0000";
    i := "0000";
    wait for 20 ns;
    while i < 15 loop
      i       := i + 1;
      buttons <= std_logic_vector(i);
      wait for 10 ns;
    end loop;
    buttons <= "0000";
    i := "0000";
    wait for 20 ns;
    while rotCnt < 3 loop
      rotCnt := rotCnt + 1;
      rotary <= std_logic_vector(rotCnt);
      wait for 10 ns;
    end loop;
    wait for 20 ns;
    wait;
  end process;

  -- clock generation
  --Clk <= not Clk after 10 ns;

  -- waveform generation
  --WaveGen_Proc: process
  --begin
  -- insert signal assignments here

  --  wait until Clk = '1';
  --end process WaveGen_Proc;

end architecture behavorial;

-------------------------------------------------------------------------------

configuration opdr91_tb_behavorial_cfg of opdr91_tb is
  for behavorial
  end for;
end opdr91_tb_behavorial_cfg;

-------------------------------------------------------------------------------
