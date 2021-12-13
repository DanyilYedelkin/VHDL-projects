----------------------------------------------------------------------------------
-- Company:  DCI FEEI TUKE
-- 
-- Create Date: 
-- Design Name: 
-- Module Name: parity_generator - Behavioral
-- Project Name: vhdl_03
-- Target Devices: xc7a35tcpg236-1
-- Tool Versions: 
-- Description: Dokon?te gener?tor parity. Ak generick? kon?tanta sel = 0, m? sa vytvori? gener?tor p?rnej parity.
--              Ak sel = 1, potom sa m? vytvori? gener?tor nep?rnej parity. Pri n?vrhu pou?ite generuj?ci pr?kaz
--              for-generate pre tvorbu ?trukt?ry gener?tora parity a kon?trukciu if-generate na podmienen?
--              nastavenie paritn?ho bitu.
--
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


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity parity_generator is
 
    generic(width : natural := 8;    -- data input (word) size
            sel : natural := 0 ); -- 0 even parity, 1 odd parity 
            
    Port ( D : in STD_LOGIC_VECTOR (width-1 downto 0);  -- data input
           parity : out STD_LOGIC                       -- parity bit
    );
    
end parity_generator;

architecture Behavioral of parity_generator is
    signal parityCalculate : STD_LOGIC_VECTOR (width downto 0);  --intermediate results
begin

    --Use for-generate statement to design the "parity_generator" module

    EVEN : if sel = 0 generate
    --set the "parity" bit
        parityCalculate(0) <= '1';
        parity_logic_generation: for i in 0 to width-1 generate
            parityCalculate(i+1) <= parityCalculate(i) xor D(i);    --xor is sum by the module 2
        end generate;
        parity <= parityCalculate(width);
    end generate;

    ODD : if sel = 1 generate
    -- set the "parity" bit
        parityCalculate(0) <= '0';
        parity_logic_generation: for i in 0 to width-1 generate
            parityCalculate(i+1) <= parityCalculate(i) xor D(i);
        end generate;
        parity <= parityCalculate(width);
    end generate;
    
-- !!!!!!!!!!!  a new simple version of the code  !!!!!!!!!!!!!!!!

--    --parity calculation logic (simple version, but if sel = '0' it will be odd parity, and if sel = '1' it will be even parity)
--    parityCalculate(0) <= sel;
--    parity_logic_generation: for i in 0 to width-1 generate
--        parityCalculate(i+1) <= parityCalculate(i) xor D(i);
--    end generate;
--    parity <= parityCalc(width);

end Behavioral;

-- !!!!!!!!!!!!!!!!!!!!!    The code, if we will have " sel : STD_LOGIC := '0' "   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

--entity parity_generator is
 
--    generic(width : natural := 8;    -- data input (word) size
--            sel : STD_LOGIC := '0' );    -- '0' even parity, '1' odd parity 
            
--    Port ( D : in STD_LOGIC_VECTOR (width-1 downto 0);  -- data input
--           parity : out STD_LOGIC                       -- parity bit
--    );
    
--end parity_generator;

--architecture Behavioral of parity_generator is
--    signal parityCalculate : STD_LOGIC_VECTOR (width downto 0);  --intermediate results
--begin

--    --Use for-generate statement to design the "parity_generator" module

--    EVEN : if sel = '0' generate
--    --set the "parity" bit
--        parityCalculate(0) <= '1';
--        parity_logic_generation: for i in 0 to width-1 generate
--            parityCalculate(i+1) <= parityCalculate(i) xor D(i);
--        end generate;
--        parity <= parityCalculate(width);
--    end generate;

--    ODD : if sel = '1' generate
--    -- set the "parity" bit
--        parityCalculate(0) <= '0';
--        parity_logic_generation: for i in 0 to width-1 generate
--            parityCalculate(i+1) <= parityCalculate(i) xor D(i);
--        end generate;
--        parity <= parityCalculateyCalc(width);
--    end generate;
    
---- !!!!!!!!!!!  a new simple version of the code  !!!!!!!!!!!!!!!!

----    --parity calculation logic (simple version, but if sel = '0' it will be odd parity, and if sel = '1' it will be even parity)
----    parityCalculate(0) <= sel;
----    parity_logic_generation: for i in 0 to width-1 generate
----        parityCalculate(i+1) <= parityCalculate(i) xor D(i);
----    end generate;
----    parity <= parityCalculate(width);

--end Behavioral;
