----------------------------------------------------------------------------------
-- Company: TUKE
-- Engineer: 
-- 
-- Create Date: 18.11.2020
-- Design Name: 
-- Module Name: johnson_counter_tb - Behavioral
-- Project Name: johnson_counter_tb
-- Target Devices: 
-- Tool Versions: 
--
-- Description: Navrhnite parametrizovan? modul johnson_counter na realiz?ciu Johnsonovho po??tadla.
-- Vstupom do po??tadla okrem hodinov?ho impulzu (clk) je aj resetovac? vstup (clear);
-- ak clear = 1, potom v?stup po??tadla Q sa nastav? na sam? nuly. Ve?kos? registra ur?en?ho na
-- uchov?vanie hodnoty po??tadla nastavte pomocou parametra width. Z?kladn?m stavebn?m
-- elementom registra m? by? prekl?pac? obvod typu D riaden? n?behovou hranou a vybaven?
-- synchr?nnym resetovac?m vstupom (rst). N?vrhu obvodu m? by? postaven? na hierarchickej
-- ?trukt?re komponentov dff. Simulujte ?innos? FJ s autokontrolou3 vzh?adom na width = 4. 
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

entity johnson_counter_tb is
 
end johnson_counter_tb;  

 
architecture Behavioral of johnson_counter_tb is  
    -- Unit Under Test (UUT)  
    -- Component declaration for UUT  
    component johnson_counter
        --generic(width : positive := 4);
        
        port(clk, rst : in std_logic;   
             Q : out std_logic_vector(3 downto 0));  
            
    end component;

    --Inputs  
    signal clk  : std_logic := '0';  
    signal rst  : std_logic := '1';  
    signal Q : std_logic_vector(3 downto 0); 
     
begin  
    -- Instantiate the UUT
    uut: johnson_counter port map(clk => clk, rst => rst, Q => Q);  

    process  
        begin  
            wait for 5ns;  
            clk <= not clk;  
    end process;
  
    process  
        begin  
            rst <= '1';  
            wait for 60ns;  
            rst <= not rst;  
            wait;  
    end process;  
end;  
