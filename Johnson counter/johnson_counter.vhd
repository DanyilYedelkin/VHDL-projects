----------------------------------------------------------------------------------
-- Company: TUKE
-- 
-- Create Date: 18.11.2020
-- Design Name: 
-- Module Name: johnson_counter - Behavioral
-- Project Name: johnson_counter
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
 
entity johnson_counter is
    generic(width : positive := 4);
    
    Port(clk, rst : in std_logic;  
         Q  : out std_logic_vector(width-1 downto 0));  
         
end johnson_counter;  


architecture Behavioral of johnson_counter is  
    component dff  
        Port(clk, rst : in std_logic;  
             d : in std_logic;  
             q : out std_logic);  
    end component;
  
    signal temp : std_logic_vector(width-1 downto 0) := "0000";  
    signal no : std_logic := '0';  
    
begin  
    no <= not temp(3);
  
    d0 : dff  
        port map(rst  => rst, clk  => clk, d  => no, q  => temp(0));

    d1 : dff  
        port map(rst  => rst, clk  => clk, d => temp(0), q => temp(1)); 

    d2 : dff  
        port map(rst  => rst, clk  => clk, d => temp(1), q => temp(2));  

    d3 : dff  
        port map(rst  => rst, clk  => clk, d => temp(2), q => temp(3));  
  
    -- Output
    Q <= temp;   
end Behavioral;  
