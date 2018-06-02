-------------------------------------------------------------------------------
-- Title      : Testbench for design "opdr103"
-- Project    :
-------------------------------------------------------------------------------
-- File       : opdr103_tb.vhd
-- Author     : sil  <sil@x220.telenet.be>
-- Company    :
-- Created    : 2018-05-25
-- Last update: 2018-05-25
-- Platform   :
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description:
-------------------------------------------------------------------------------
-- Copyright (c) 2018
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2018-05-25  1.0      sil Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------

entity opdr103_tb is

end entity opdr103_tb;

-------------------------------------------------------------------------------

architecture behavorial of opdr103_tb is

  -- component ports
  signal rotary : std_logic_vector(1 downto 0);
  signal rst    : std_logic;
  signal clk    : std_logic := '0';
  signal leds   : std_logic_vector(3 downto 0);

  -- clock
  -- signal clk : std_logic := '1';

begin  -- architecture behavorial

  -- component instantiation
  DUT : entity work.opdr103
    port map (
      rotary => rotary,
      rst    => rst,
      clk    => clk,
      leds   => leds);

  -- clock generation
  clk <= not clk after 10 ns;
  rst <= '1';

  testPR : process
  begin
    wait for 100 ns;
    rotary <= "10";
    wait for 200 ns;
    rotary <= "01";
    wait for 200 ns;
  end process testPR;
end architecture behavorial;

-------------------------------------------------------------------------------

configuration opdr103_tb_behavorial_cfg of opdr103_tb is
  for behavorial
  end for;
end opdr103_tb_behavorial_cfg;

-------------------------------------------------------------------------------
