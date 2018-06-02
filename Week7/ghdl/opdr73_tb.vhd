-------------------------------------------------------------------------------
-- Title      : Testbench for design "opdr73"
-- Project    :
-------------------------------------------------------------------------------
-- File       : opdr73_tb.vhd
-- Author     : sil  <sil@x220.telenet.be>
-- Company    :
-- Created    : 2018-04-26
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
-- 2018-04-26  1.0      sil	Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-------------------------------------------------------------------------------

entity opdr73_tb is

end entity opdr73_tb;

-------------------------------------------------------------------------------

architecture behavorial of opdr73_tb is

  component opdr73 is
    port (
  -- component ports
      numIn  : in unsigned(3 downto 0);
      sel    : in std_logic;
      numOut : out std_logic_vector(3 downto 0)
      );
    end component;
  -- clock
  signal Clk : std_logic := '1';
  -- inputs
  signal numIn_tb : unsigned(3 downto 0) := "0000";
  signal sel_tb : std_logic := '0';
  -- outputs
  signal numOut_tb : std_logic_vector(3 downto 0) := "0000";

begin  -- architecture behavorial

  -- component instantiation
  uut: opdr73 port map (
      numIn  => numIn_tb,
      sel    => sel_tb,
      numOut => numOut_tb);

  -- clock generation
  --Clk <= not Clk after 10 ns;

  -- waveform generation
  --WaveGen_Proc: process
  --begin
    -- insert signal assignments here

  --  wait until Clk = '1';
  --end process WaveGen_Proc;
  process
    variable i : unsigned(3 downto 0);
  begin
    i := "0000";
    sel_tb <= '0';
    while(i < 15) loop
      numIn_tb <= i;
      i := i + 1;
      wait for 10 ns;
    end loop;
    sel_tb <= '1';
    i := "0000";
    while(i < 15) loop
      numIn_tb <= i;
      i := i + 1;
      wait for 10 ns;
    end loop;
    wait;
  end process;

end architecture behavorial;

-------------------------------------------------------------------------------

configuration opdr73_tb_behavorial_cfg of opdr73_tb is
  for behavorial
  end for;
end opdr73_tb_behavorial_cfg;

-------------------------------------------------------------------------------
