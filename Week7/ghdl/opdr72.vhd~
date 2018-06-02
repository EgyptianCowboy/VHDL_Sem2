----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/30/2018 02:14:03 PM
-- Design Name: 
-- Module Name: opdr72 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity opdr72 is
  Port ( inVect : in std_logic_vector(2 downto 0);
         outVect : out std_logic_vector(7 downto 0)
         );
end opdr72;

architecture Behavioral of opdr72 is

begin
outVect <= "000" when inVect = "000" else
           "001" when inVect = "001" else
           "010" when inVect = "010" else
           "011" when inVect = "011" else
           "100" when inVect = "100" else
           "101" when inVect = "101" else
           "110" when inVect = "110" else
           "111" when inVect = "111" else "000";


end Behavioral;
