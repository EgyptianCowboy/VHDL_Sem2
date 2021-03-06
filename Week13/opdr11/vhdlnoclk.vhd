----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Vincent Claes
-- 
-- Create Date: 26.02.2018 12:53:50
-- Design Name: 
-- Module Name: vhdl_no_clk - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: Example that uses the internal ring oscillator of the zynq FPGA on AVNet Minized
--              This project doesn't contain a testbench
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

library UNISIM;
use UNISIM.VComponents.all;

entity vhdlnoclk is
  Port (
    clkout : out std_logic
   
  );
end vhdlnoclk;

architecture Behavioral of vhdlnoclk is
    signal counter      : integer;
    signal i_clk        : std_logic;
    signal buf_i_clk    : std_logic;
    signal r_led_value  : std_logic := '0';
    
begin

   STARTUPE2_inst : STARTUPE2
   generic map (
      PROG_USR => "FALSE",  
      SIM_CCLK_FREQ => 0.0  
   )
   port map (
      CFGCLK => open,      
      CFGMCLK => i_clk,     
      EOS => open,            
      PREQ => open,           
      CLK => '0',            
      GSR => '0',            
      GTS => '0',             
      KEYCLEARB => '0', 
      PACK => '0',           
      USRCCLKO => '0',                         
      USRCCLKTS => '0', 
      USRDONEO => '1',   
      USRDONETS => '0'
   );

		BUFG_i: component BUFG
        port map(
            I => i_clk ,
            O => buf_i_clk
        );
	
	 
	
	process(buf_i_clk)
	begin
	   if rising_edge(buf_i_clk) then
	   counter <= counter + 1;
	           if counter = 5 then
	               r_led_value <=  not r_led_value;
	               counter <= 0;
	            end if;
              
	   end if;
	      clkout <= r_led_value; 
	end process;
    
    
 
end Behavioral;
