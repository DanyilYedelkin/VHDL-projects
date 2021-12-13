----------------------------------------------------------------------------------
-- Company:  DCI FEEI TUKE
-- Engineer: Norbert Бdбm
-- 
-- Create Date: 
-- Design Name: 
-- Module Name: mx4_1_case - Behavioral
-- Project Name: vhdl_04
-- Target Devices: xc7a35tcpg236-1
-- Tool Versions: 
-- Description: Navrhnite hladinou riaden? ?? prekl?pac? obvod na b?ze NOR.
-- Created by Danyil Yedelkin
-- 
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

entity rs_nor is
    Port ( R : in STD_LOGIC;
           S : in STD_LOGIC;
           Q : inout STD_LOGIC;
           notQ : inout STD_LOGIC);
end rs_nor;

architecture Behavioral of rs_nor is


begin  
    process(R, S, Q, notQ)
        begin
            Q <= R nor notQ;
            notQ <= S nor Q;
    end process;

end Behavioral;
