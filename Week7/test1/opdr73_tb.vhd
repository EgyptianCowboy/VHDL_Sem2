-------------------------------------------------------------------------------
-- Title      : Testbench for design "opdr73"
-- Project    :
-------------------------------------------------------------------------------
-- File       : opdr73_tb.vhd
-- Author     : sil  <sil@x220.telenet.be>
-- Company    :
-- Created    : 2018-04-27
-- Last update: 2018-04-27
-- Platform   :
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description:
-------------------------------------------------------------------------------
-- Copyright (c) 2018
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2018-04-27  1.0      sil	Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-------------------------------------------------------------------------------

entity opdr73_tb is

end entity opdr73_tb;

-------------------------------------------------------------------------------

architecture behavorial of opdr73_tb is

  -- component ports
  signal numIn  : unsigned(3 downto 0);
  signal sel    : std_logic;
  signal numOut : std_logic_vector(3 downto 0);

  -- clock
  signal Clk : std_logic := '1';

begin  -- architecture behavorial

  -- component instantiation
  DUT: entity work.opdr73
    port map (
      numIn  => numIn,
      sel    => sel,
      numOut => numOut);

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

configuration opdr73_tb_behavorial_cfg of opdr73_tb is
  for behavorial
  end for;
end opdr73_tb_behavorial_cfg;

-------------------------------------------------------------------------------
