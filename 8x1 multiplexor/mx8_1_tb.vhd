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

entity mx8_1_tb is

end mx8_1_tb;

architecture Behavioral of mx8_1_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    component mx8_1 is
        Port ( D : in STD_LOGIC_VECTOR (7 downto 0);
               S : in STD_LOGIC_VECTOR (2 downto 0);
               y : out STD_LOGIC);
    end component;
    
    --Inputs
    signal D : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal S : STD_LOGIC_VECTOR (2 downto 0) := "000";
    
    --Outputs
    signal y : STD_LOGIC;
    
begin    
    -- Instantiate the Unit Under Test (UUT)
    UUT: mx8_1 port map (D => D, S => S, y => y);
    
    process
    begin
        S(0) <= '0';
        wait for 1 ns;
        S(0) <= '1';
        wait for 1 ns;        
    end process;
    
    process
    begin
        S(1) <= '0';
        wait for 2 ns;
        S(1) <= '1';
        wait for 2 ns;        
    end process;
        
    process
    begin
        S(2) <= '0';
        wait for 3 ns;
        S(2) <= '1';
        wait for 3 ns;        
    end process;
      
        -- Stimulus process
        stim_proc: process
        begin        
            -- Hold reset state for 2 ns.
            wait for 10 ns;           
                 D <= "00000000", 
                      "00000001" after 3 ns, 
                      "00000010" after 6 ns, 
                      "00000011" after 9 ns, 
                      "00000100" after 12 ns, 
                      "00000101" after 15 ns, 
                      "00000110" after 18 ns, 
                      "00000111" after 21 ns, 
                      "00001000" after 24 ns,                          
                      "00001001" after 27 ns,                          
                      "00001010" after 30 ns,                          
                      "00001011" after 33 ns,                          
                      "00001100" after 36 ns,                          
                      "00001101" after 39 ns,                          
                      "00001110" after 42 ns,                          
                      "00001111" after 45 ns,
                      "00010000" after 48 ns,
                      "00010001" after 51 ns,
                      "00010010" after 54 ns,
                      "00010011" after 57 ns,
                      "00010100" after 60 ns,
                      "00010101" after 63 ns,
                      "00010111" after 66 ns,
                      "00011000" after 69 ns,
                      "00011001" after 72 ns,
                      "00011010" after 75 ns,
                      "00011011" after 78 ns,
                      "00011100" after 81 ns,
                      "00011101" after 84 ns,
                      "00011110" after 87 ns,
                      "00011111" after 90 ns,
                      "00100000" after 93 ns,
                      "00100001" after 96 ns,
                      "00100010" after 99 ns,
                      "00100011" after 102 ns,
                      "00100100" after 105 ns,
                      "00100101" after 108 ns,
                      "00100111" after 111 ns,
                      "00101000" after 114 ns,
                      "00101001" after 117 ns,
                      "00101010" after 120 ns,
                      "00101011" after 123 ns,
                      "00101100" after 126 ns,
                      "00101101" after 129 ns,
                      "00101110" after 132 ns,
                      "00101111" after 135 ns,
                      "00110000" after 138 ns,
                      "00110001" after 141 ns,
                      "00110010" after 144 ns,
                      "00110011" after 147 ns,
                      "00110100" after 150 ns,
                      "00110101" after 153 ns,
                      "00110110" after 156 ns,
                      "00110111" after 159 ns,
                      "00111000" after 162 ns,
                      "00111001" after 165 ns,
                      "00111010" after 168 ns,
                      "00111011" after 171 ns,
                      "00111100" after 174 ns,
                      "00111101" after 177 ns,
                      "00111110" after 180 ns,
                      "00111111" after 183 ns,
                      "01000000" after 186 ns,
                      "01000001" after 189 ns,
                      "01000010" after 192 ns,
                      "01000011" after 195 ns,
                      "01000100" after 198 ns,
                      "01000101" after 201 ns,
                      "01000110" after 204 ns,
                      "01000111" after 207 ns,
                      "01001000" after 210 ns,
                      "01001001" after 213 ns,
                      "01001010" after 216 ns,
                      "01001011" after 219 ns,
                      "01001100" after 222 ns,
                      "01001101" after 225 ns,
                      "01001110" after 228 ns,
                      "01001111" after 231 ns,
                      "01010000" after 234 ns,
                      "01010001" after 237 ns,
                      "01010010" after 240 ns,
                      "01010011" after 243 ns,
                      "01010100" after 246 ns,
                      "01010101" after 249 ns,
                      "01010110" after 252 ns,
                      "01010111" after 255 ns,
                      "01011000" after 258 ns,
                      "01011001" after 261 ns,
                      "01011010" after 264 ns,
                      "01011011" after 267 ns,
                      "01011100" after 270 ns,
                      "01011101" after 273 ns,
                      "01011110" after 276 ns,
                      "01011111" after 279 ns,
                      "01100000" after 282 ns,
                      "01100001" after 285 ns,
                      "01100010" after 288 ns,
                      "01100011" after 291 ns,
                      "01100100" after 294 ns,
                      "01100101" after 297 ns,
                      "01100110" after 300 ns,
                      "01100111" after 303 ns,
                      "01101000" after 306 ns,
                      "01101001" after 309 ns,
                      "01101010" after 312 ns,
                      "01101011" after 315 ns,
                      "01101100" after 318 ns,
                      "01101101" after 321 ns,
                      "01101110" after 324 ns,
                      "01101111" after 327 ns,
                      "01110000" after 330 ns,
                      "01110001" after 333 ns,
                      "01110010" after 336 ns,
                      "01110011" after 339 ns,
                      "01110100" after 342 ns,
                      "01110101" after 345 ns,
                      "01110110" after 348 ns,
                      "01110111" after 351 ns,
                      "01111000" after 354 ns,
                      "01111001" after 357 ns,
                      "01111010" after 360 ns,
                      "01111011" after 363 ns,
                      "01111100" after 366 ns,
                      "01111101" after 369 ns,
                      "01111110" after 372 ns,
                      "01111111" after 375 ns,
                      "10000001" after 378 ns,
                      "10000010" after 381 ns,
                      "10000011" after 384 ns,
                      "10000100" after 387 ns,
                      "10000101" after 390 ns,
                      "10000110" after 393 ns,
                      "10000111" after 396 ns,
                      "10001000" after 399 ns,
                      "10001001" after 402 ns,
                      "10001010" after 405 ns,
                      "10001011" after 408 ns,
                      "10001100" after 411 ns,
                      "10001101" after 414 ns,
                      "10001110" after 417 ns,
                      "10001111" after 420 ns,
                      "10010000" after 423 ns,
                      "10010001" after 426 ns,
                      "10010010" after 429 ns,
                      "10010011" after 432 ns,
                      "10010100" after 435 ns,
                      "10010101" after 438 ns,
                      "10010110" after 441 ns,
                      "10010111" after 444 ns,
                      "10011000" after 447 ns,
                      "10011001" after 450 ns,
                      "10011010" after 453 ns,
                      "10011011" after 456 ns,
                      "10011100" after 459 ns,
                      "10011101" after 462 ns,
                      "10011110" after 465 ns,
                      "10011111" after 468 ns,
                      "10100000" after 471 ns,
                      "10100001" after 474 ns,
                      "10100010" after 477 ns,
                      "10100011" after 450 ns,
                      "10100100" after 453 ns,
                      "10100101" after 456 ns,
                      "10100110" after 459 ns,
                      "10100111" after 462 ns,
                      "10101000" after 465 ns,
                      "10101001" after 468 ns,
                      "10101010" after 471 ns,
                      "10101011" after 474 ns,
                      "10101100" after 477 ns,
                      "10101101" after 480 ns,
                      "10101110" after 483 ns,
                      "10101111" after 486 ns,
                      "10110001" after 489 ns,
                      "10110010" after 492 ns,
                      "10110011" after 495 ns,
                      "10110100" after 498 ns,
                      "10110101" after 501 ns,
                      "10110110" after 504 ns,
                      "10110111" after 507 ns,
                      "10111000" after 510 ns,
                      "10111001" after 513 ns,
                      "10111010" after 516 ns,
                      "10111011" after 519 ns,
                      "10111100" after 522 ns,
                      "10111101" after 525 ns,
                      "10111110" after 528 ns,
                      "10111111" after 531 ns,
                      "11000000" after 534 ns,
                      "11000001" after 537 ns,
                      "11000010" after 540 ns,
                      "11000011" after 543 ns,
                      "11000100" after 546 ns,
                      "11000101" after 549 ns,
                      "11000110" after 552 ns,
                      "11000111" after 555 ns,
                      "11001000" after 558 ns,
                      "11001001" after 561 ns,
                      "11001010" after 564 ns,
                      "11001011" after 567 ns,
                      "11001100" after 570 ns,
                      "11001101" after 573 ns,
                      "11001110" after 576 ns,
                      "11001111" after 579 ns,
                      "11010000" after 582 ns,
                      "11010001" after 585 ns,
                      "11010010" after 588 ns,
                      "11010011" after 591 ns,
                      "11010100" after 594 ns,
                      "11010101" after 597 ns,
                      "11010110" after 600 ns,
                      "11010111" after 603 ns,
                      "11011000" after 606 ns,
                      "11011001" after 609 ns,
                      "11011010" after 612 ns,
                      "11011011" after 615 ns,
                      "11011100" after 618 ns,
                      "11011101" after 621 ns,
                      "11011110" after 624 ns,
                      "11011111" after 627 ns,
                      "11100000" after 630 ns,
                      "11100001" after 633 ns,
                      "11100010" after 636 ns,
                      "11100011" after 639 ns,
                      "11100100" after 642 ns,
                      "11100101" after 645 ns,
                      "11100110" after 648 ns,
                      "11100111" after 651 ns,
                      "11101000" after 654 ns,
                      "11101001" after 657 ns,
                      "11101010" after 660 ns,
                      "11101011" after 663 ns,
                      "11101100" after 666 ns,
                      "11101101" after 669 ns,
                      "11101110" after 672 ns,
                      "11101111" after 675 ns,
                      "11110000" after 678 ns,
                      "11110001" after 681 ns,
                      "11110010" after 684 ns,
                      "11110011" after 687 ns,
                      "11110100" after 690 ns,
                      "11110101" after 693 ns,
                      "11110110" after 696 ns,
                      "11110111" after 699 ns,
                      "11111000" after 702 ns,
                      "11111001" after 705 ns,
                      "11111010" after 708 ns,
                      "11111011" after 711 ns,
                      "11111100" after 714 ns,
                      "11111101" after 717 ns,
                      "11111110" after 720 ns,
                      "11111111" after 723 ns;      
           wait;
      end process;
end Behavioral;
