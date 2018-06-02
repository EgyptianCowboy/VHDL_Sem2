library ieee;
use ieee.std_logic_1164.all;



-------------------------------------------------------------------------------

entity testFSM_tb is

end entity testFSM_tb;

-------------------------------------------------------------------------------

architecture behavorial of testFSM_tb is

  -- component ports
  signal reset   : std_logic;
  signal in1     : std_logic;
  signal in2     : std_logic;
  signal out1    : std_logic;
  signal outVect : std_logic_vector(3 downto 0);

  -- clock
  signal Clk : std_logic := '1';

begin  -- architecture behavorial

  -- component instantiation
  DUT: entity work.testFSM
    port map (
      reset   => reset,
      in1     => in1,
      in2     => in2,
      out1    => out1,
      outVect => outVect);

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

configuration testFSM_tb_behavorial_cfg of testFSM_tb is
  for behavorial
  end for;
end testFSM_tb_behavorial_cfg;

-------------------------------------------------------------------------------
