----------------------------------------------------------------------------------
-- Company:  DCI FEEI TUKE
-- Engineer: Norbert Бdбm
-- 
-- Create Date: 31.10.2021
-- Created by Danyil Yedelkin
-- Design Name: 
-- Module Name: mx4_1_when_else - Behavioral
-- Project Name: vhdl_02
-- Target Devices: xc7a35tcpg236-1
-- Tool Versions: 
-- Description: Navrhnite multiplexor „8 na 1". Pri n?vrhu pou?ite multiplexor „4 na 1".
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mx8_1 is
    Port ( D : in STD_LOGIC_VECTOR (7 downto 0);
           S : in STD_LOGIC_VECTOR (2 downto 0);
           y : out STD_LOGIC);
end mx8_1;

architecture Behavioral of mx8_1 is

begin

    --  Vedie na syntйzu SLO s funkciou identickou MUX
    y <= D(0) when S = "000" else
         D(1) when S = "001" else
         D(2) when S = "010" else     
         D(3) when S = "011" else
         D(4) when S = "100" else
         D(5) when S = "101" else
         D(6) when S = "110" else
         D(7) when S = "111";

--    process(D, S)
--    begin
--        case S is 
--            when "000" => y <= D(0);
--            when "001" => y <= D(1);
--            when "010" => y <= D(2);
--            when "011" => y <= D(3);
--            when "100" => y <= D(4);
--            when "101" => y <= D(5);
--            when "110" => y <= D(6);
--            when "111" => y <= D(7);
            
--            when others => y <= '0';
--        end case;
--    end process;

end Behavioral;
