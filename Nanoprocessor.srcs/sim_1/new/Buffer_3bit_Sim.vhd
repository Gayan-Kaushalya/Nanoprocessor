----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.06.2023 11:17:37
-- Design Name: 
-- Module Name: Buffer_3bit_Sim - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Buffer_3bit_Sim is
--  Port ( );
end Buffer_3bit_Sim;

architecture Behavioral of Buffer_3bit_Sim is
Component Buffer_3bit
 Port ( Input : in STD_LOGIC_VECTOR (2 downto 0);
        Enable : in STD_LOGIC;
        Output : out STD_LOGIC_VECTOR (2 downto 0));
end Component;

SIGNAL Input, Output : STD_LOGIC_VECTOR (2 downto 0);
SIGNAL Enable : STD_LOGIC;

begin
UUT : Buffer_3bit Port Map
        (Input => Input,
        Output => Output,
        Enable => Enable);
        
-- 2102224 -> 110 011 010 100 110 000
-- 210314  -> 110 011 010 110 001 010

process
        begin
        Input <= "110";
        Enable <= '0';
        WAIT FOR 300 ns;

        Enable <= '1';
        WAIT FOR 300 ns;
        Input <= "010";
        WAIT;
end process;

end Behavioral;