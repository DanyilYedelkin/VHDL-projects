----------------------------------------------------------------------------------
-- Company:  DCI FEEI TUKE
-- Created by Danyil Yedelkin
-- 
-- Create Date: 31.10.2021
-- Design Name: sop - Behavioral (sop.vhd)
-- Module Name: sop - Behavioral
-- Project Name: vhdl_01
-- Target Devices: xc7a35tcpg236-1
-- Tool Versions: 
-- Description: Navrhnite FJ pre realiz?ciu log. funkcie f(a, b, c, d) definovanej „nulov?mi" bodmi [0,1,4,10].
--              Zap??te funkciu v tvare UDNF. Simulujte ?innos? FJ.
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
-- Created by Danyil Yedelkin
----------------------------------------------------------------------------------
--
--  f(0,0,0,0) = f(0,0,0,1) = f(0,1,0,0) = f(1,0,1,0) = 0
--  UDNF - ?
--
--  a	b	c	d	 f(a,b,c,d)
--  0	0	0	0	     0
--  0	0	0	1	     0
--  0	0	1	0	     1  +
--  0	0	1	1	     1  +
--  0	1	0	0	     0
--  0	1	0	1	     1  +
--  0   1   1   0        1  +
--  0	1	1	1	     1  +
--  1	0	0	0	     1  +
--  1	0	0	1	     1  +
--  1   0   1   0        0
--  1   0   1   1        1  +
--  1	1	0	0        1  +
--  1   1   0   1        1  +
--  1   1   1   0        1  +
--  1	1	1	1	     1  +
--
-- UDNF = 0,0,1,0 + 0,0,1,1 + 0,1,0,1 + 0,1,1,0 + 0,1,1,1 + 1,0,0,0 + 1,0,0,1 + 1,0,1,1 + 1,1,1,0 + 1,1,1,1
--


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sop is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           f : out  STD_LOGIC);
end sop;

architecture Behavioral of sop is

begin
    process (a,b,c,d)
    begin
        f <= ((not a) and (not b) and c and (not d)) or ((not a) and (not b) and c and d) or 
            ((not a) and b and (not c) and d) or ((not a) and b and c and (not d)) or ((not a) and b and c and d) or
            (a and (not b) and (not c) and (not d)) or (a and (not b) and (not c) and d) or (a and (not b) and c and d) or
            (a and b and (not c) and (not d)) or (a and b and (not c) and d)  or (a and b and c and (not d)) or
            (a and b and c and d);
    end process;
end Behavioral;
