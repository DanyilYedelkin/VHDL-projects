----------------------------------------------------------------------------------
-- Company:  DCI FEEI TUKE
-- Created by Danyil Yedelkin
-- 
-- Create Date: 
-- Design Name: 
-- Module Name: pos - Behavioral
-- Project Name: vhdl_01
-- Target Devices: xc7a35tcpg236-1
-- Tool Versions: 
-- Description: Navrhnite FJ pre realiz?ciu log. funkcie f(a, b, c, d) definovanej „nulov?mi" bodmi [2,4,7,11].
--              Zap??te funkciu v tvare UKNF. Simulujte ?innos? FJ.
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
--  f(0,0,1,0) = f(0,1,0,0) = f(0,1,1,1) = f(1,0,1,1) = 0
--  UKNF - ?
--
--  a	b	c	d	 f(a,b,c,d)
--  0	0	0	0	     1
--  0	0	0	1	     1
--  0	0	1	0	     0  +
--  0	0	1	1	     1  
--  0	1	0	0	     0  +
--  0	1	0	1	     1  
--  0   1   1   0        1  
--  0	1	1	1	     0  +
--  1	0	0	0	     1  
--  1	0	0	1	     1  
--  1   0   1   0        1
--  1   0   1   1        0  +
--  1	1	0	0        1  
--  1   1   0   1        1  
--  1   1   1   0        1  
--  1	1	1	1	     1  
--
-- UKNF = 0,0,1,0 + 0,1,0,0 + 0,1,1,1 + 1,0,1,1
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

entity pos is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           f : out  STD_LOGIC);
end pos;

architecture Behavioral of pos is

begin
    process(a, b, c, d)
    begin
        f <= (a or b or (not c) or d) and (a or (not b) or c or d) and 
             (a or (not b) or (not c) or (not d)) and ((not a) or b or (not c) or (not d));
    end process;

end Behavioral;
