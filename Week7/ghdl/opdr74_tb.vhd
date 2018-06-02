-------------------------------------------------------------------------------
-- Title      : Testbench for design "opdr74"
-- Project    :
-------------------------------------------------------------------------------
-- File       : opdr74_tb.vhd
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
-- 2018-04-26  1.0      sil Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-------------------------------------------------------------------------------

entity opdr74_tb is

end entity opdr74_tb;

-------------------------------------------------------------------------------

architecture behavorial of opdr74_tb is

  -- component ports
  signal tBTemp    : std_logic := '0';
  signal tOTemp    : std_logic := '0';
  signal tWBoiler  : std_logic := '0';
  signal tMaxKetel : std_logic := '0';
  signal tKetel    : std_logic := '0';
  signal schBPomp  : std_logic := '0';
  signal schOPomp  : std_logic := '0';
  signal pOnder    : std_logic;
  signal pBoven    : std_logic;
  signal pBoiler   : std_logic;
  signal brKetel   : std_logic;

  -- clock
  signal Clk : std_logic := '1';
  

  -- put inputs in one vector
  signal inputs : std_logic_vector(6 downto 0) := "0000000";

begin  -- architecture behavorial
  -- component instantiation
  DUT : entity work.opdr74
    port map (
      tBTemp    => tBTemp,
      tOTemp    => tOTemp,
      tWBoiler  => tWBoiler,
      tMaxKetel => tMaxKetel,
      tKetel    => tKetel,
      schBPomp  => schBPomp,
      schOPomp  => schOPomp,
      pOnder    => pOnder,
      pBoven    => pBoven,
      pBoiler   => pBoiler,
      brKetel   => brKetel);

  process
    variable i : integer := 0;
  begin
    wait for 100 ns;
    while (i < 64) loop
      inputs <= std_logic_vector(unsigned(inputs) + 1);
      i := i + 1;
      tBTemp <= inputs(6);
      tOTemp <= inputs(5);
      tWBoiler <= inputs(4);
      tMaxKetel <= inputs(3);
      tKetel <= inputs(2);
      schBPomp <= inputs(1);
      schOPomp <= inputs(0);
      wait for 10 ns;
    end loop;
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

configuration opdr74_tb_behavorial_cfg of opdr74_tb is
  for behavorial
  end for;
end opdr74_tb_behavorial_cfg;

-------------------------------------------------------------------------------
