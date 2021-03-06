-------------------------------------------------------------------------------
-- Title      : Testbench for design "opdr1118"
-- Project    :
-------------------------------------------------------------------------------
-- File       : opdr1118_tb.vhd
-- Author     : sil  <sil@x220.telenet.be>
-- Company    :
-- Created    : 2018-05-29
-- Last update: 2018-05-29
-- Platform   :
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description:
-------------------------------------------------------------------------------
-- Copyright (c) 2018
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2018-05-29  1.0      sil	Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------

entity opdr1118_tb is

end entity opdr1118_tb;

-------------------------------------------------------------------------------

architecture behavorial of opdr1118_tb is

  -- component ports
  signal clk : std_logic;
  signal rst : std_logic;
  signal X   : std_logic;
  signal Z1  : std_logic;
  signal Z2  : std_logic;

  -- clock
  signal clks : std_logic := '1';

begin  -- architecture behavorial

  -- component instantiation
  DUT: entity work.opdr1118
    port map (
      clk => clk,
      rst => rst,
      X   => X,
      Z1  => Z1,
      Z2  => Z2);

  -- clock generation
  clks <= not clks after 10 ns;
  Z2 <= Clk;

end architecture behavorial;

-------------------------------------------------------------------------------

configuration opdr1118_tb_behavorial_cfg of opdr1118_tb is
  for behavorial
  end for;
end opdr1118_tb_behavorial_cfg;

-------------------------------------------------------------------------------
