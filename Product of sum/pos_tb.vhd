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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pos_tb is
--  Port ( );
end pos_tb;

architecture Behavioral of pos_tb is
    component pos is
        Port ( a : in  STD_LOGIC;
               b : in  STD_LOGIC;
               c : in  STD_LOGIC;
               d : in  STD_LOGIC;
               f : out  STD_LOGIC);
    end component pos;
    
    --Inputs
    signal a : STD_LOGIC := '0';
    signal b : STD_LOGIC := '0';
    signal c : STD_LOGIC := '0';
    signal d : STD_LOGIC := '0';
    
    --Outputs
    signal f : STD_LOGIC;
    
    signal sim_a : STD_LOGIC := '0';
    signal sim_b : STD_LOGIC := '0';
    signal sim_c : STD_LOGIC := '0';
    signal sim_d : STD_LOGIC := '0';
    
    constant sop_period : time := 256 ns;
    
begin

    --Instantiate the Unit Under Test (UUT)
    UUT: pos port map(a, b, c, d, f);
        
    --Clock process definitions
    generator_for_a : process
    begin
        sim_a <= '0';
        wait for sop_period/2;
        sim_a <= '1';
        wait for sop_period/2;
    end process;
    
    generator_for_b : process
    begin
        sim_b <= '0';
        wait for sop_period/4;
        sim_b <= '1';
        wait for sop_period/4;
    end process;
    
    generator_for_c : process
    begin
        sim_c <= '0';
        wait for sop_period/8;
        sim_c <= '1';
        wait for sop_period/8;
    end process;
        
    generator_for_d : process
    begin
         sim_d <= '0';
         wait for sop_period/16;
         sim_d <= '1';
         wait for sop_period/16;
    end process;
    
    a <= sim_a;
    b <= sim_b;
    c <= sim_c;
    d <= sim_d;

end Behavioral;
