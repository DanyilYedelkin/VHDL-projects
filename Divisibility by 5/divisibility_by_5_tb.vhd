----------------------------------------------------------------------------------
-- Company: TUKE
-- Engineer: 
-- 
-- Create Date: 20.11.2021
-- Design Name: 
-- Project Name: divisibility_by_5_tb
-- Module Name: divisibility_by_5_tb - Behavioral
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Created by Danyil Yedelkin
-- Dependencies: 
-- 
-- Revision:
-- Additional Comments: APS 6 uloha
-- 
-- Created by Danyil Yedelkin
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
-- library UNISIM;
-- use UNISIM.VComponents.all;

entity divisibility_by_5_tb is

end divisibility_by_5_tb;


architecture Behavioral of divisibility_by_5_tb is
    -- Component for the UUT
    component divisibility_by_5 is
      Port ( rst : in STD_LOGIC;
             clk : in STD_LOGIC;
             din : in STD_LOGIC;
             dout : out STD_LOGIC);
    end component divisibility_by_5;
    
    -- Input
    signal din : STD_LOGIC := '0';
    signal rst : STD_LOGIC := '0';
        
    -- Clock (all)
    signal clk : STD_LOGIC := '1';
    constant clk_period : time := 20 ns;

    -- Output
    signal dout : STD_LOGIC;
    
    -- Internal signals
    type int_array is array(5 downto 0) of integer;
    signal array_numbers : int_array := (15, 186, 487, 968, 1139, 1355);
    signal number : std_logic_vector(11 downto 0);
    
begin

    UUT : divisibility_by_5 port map(rst => rst, clk => clk, din => din, dout => dout);

    clk_process : process (clk)
    begin
        clk <= not clk after clk_period/2;
    end process;
    
    stim_proc : process is 
        variable math_num : integer;
        variable test : std_logic;
    begin
        
        for i in 0 to 5 loop
        report "index " & integer'image(i);
            rst <= '1';
                number <= std_logic_vector(to_unsigned(array_numbers(i), 12));
                wait for clk_period;
            rst <= '0';
            
            for j in 11 downto 0 loop
                din <= number(j);
                wait for clk_period;
            end loop;
            
            wait for clk_period;
            
            
            math_num := array_numbers(i) mod 5;
            if math_num = 0 then
                test := '1';
            else
                test := '0';
            end if;
                report "number = " & integer'image(array_numbers(i)) & " - result: " & std_logic'image(dout) & " should - " & std_logic'image(test);
            
            assert test = dout
                report "Wrong number = " & integer'image(array_numbers(i)) & " - result: " & std_logic'image(dout) & " should - " & std_logic'image(test)
                severity failure;
        end loop;
        
        wait;
    end process;

end Behavioral;
