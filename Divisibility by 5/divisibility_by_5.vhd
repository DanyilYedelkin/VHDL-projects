----------------------------------------------------------------------------------
-- Company: TUKE
-- Engineer: 
-- 
-- Create Date: 20.11.2021
-- Design Name: 
-- Project Name: divisibility_by_5
-- Module Name: divisibility_by_5 - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity divisibility_by_5 is
  -- Created the main port
  Port ( rst : in STD_LOGIC;
         clk : in STD_LOGIC;
         din : in STD_LOGIC;
         dout : out STD_LOGIC);
end divisibility_by_5;

architecture Behavioral of divisibility_by_5 is

    -- Created new signals
    type states is (S0, S1, S2, S3, S4);
    signal state, next_state : states := S0;

begin
    -- The state register
    process (clk, rst) is
    begin
        if rst = '1' then state <= S0;
        elsif rising_edge(clk) then state <= next_state;
        end if;
    end process;
    
    -- The state logic changing
    process (state, din) is
    begin
        case(state) is
            when S0 =>
                if din = '1' then next_state <= S1;
                else next_state <= S0;
                end if;
                
            when S1 =>
                if din = '1' then next_state <= S3;
                else next_state <= S2;
                end if;
                
            when S2 =>
                if din = '1' then next_state <= S0;
                else next_state <= S4;
                end if;
                
            when S3 =>
                if din = '1' then next_state <= S2;
                else next_state <= S1;
                end if;
            when S4 =>
                if din = '1' then next_state <= S4;
                else next_state <= S3;
                end if;
                
            when others => null;
            
        end case;
    end process;

    -- Output
    dout <= '1' when state = S0 else '0';
    
end Behavioral;
