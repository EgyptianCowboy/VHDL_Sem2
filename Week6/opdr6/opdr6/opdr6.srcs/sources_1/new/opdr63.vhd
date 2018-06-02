----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/23/2018 02:07:30 PM
-- Design Name: 
-- Module Name: opdr63 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity opdr63 is
  Port ( DIM1 : in std_logic;
         DIM2 : in std_logic;
         DIM3 : in std_logic;
         ST1  : out std_logic;
         ST2  : out std_logic;
         ST3  : out std_logic);
end opdr63;

architecture Behavioral of opdr63 is

begin
ST1 <= '1';
ST3 <= DIM3;
ST2 <= (DIM1 AND DIM2) OR (NOT(DIM1) AND NOT(DIM2) AND DIM3) OR (DIM2 AND NOT(DIM3));



end Behavioral;
