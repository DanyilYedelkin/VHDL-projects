----------------------------------------------------------------------------------
-- Company: TUKE
-- Engineer: 
-- 
-- Create Date: 18.11.2020
-- Design Name: 
-- Module Name: dff - Behavioral
-- Project Name: dff
-- Target Devices: 
-- Tool Versions: 
--
-- Description:
-- 
-- Created by Danyil Yedelkin
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
-- Created by Danyil Yedelkin
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
  
entity dff is  
    Port(clk, rst : in STD_LOGIC; 
         d : in STD_LOGIC;  
         q : out STD_LOGIC);  
          
end dff;  


architecture Behavioral of dff is 
 
begin  
    process(rst, clk)  
        begin  
            if (rst = '1') then  
                q <= '0';  
            elsif (clk 'event and clk = '1') then  
                q <= d;  
            end if;  
    end process; 
    
    
--    process(clk)
--        begin 
--            if(rising_edge(clk)) then
--                if(rst = '1') then 
--                    q <= '0';
--                else 
--                    q <= d; 
--                end if;
--            end if;       
--     end process;
     
end Behavioral;  
