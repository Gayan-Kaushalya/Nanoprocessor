----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.06.2023 11:38:13
-- Design Name: 
-- Module Name: Buffer_4bit_Sim - Behavioral
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

entity Buffer_4bit_Sim is
--  Port ( );
end Buffer_4bit_Sim;

architecture Behavioral of Buffer_4bit_Sim is
Component Buffer_4bit
 Port ( Input : in STD_LOGIC_VECTOR (3 downto 0);
        Enable : in STD_LOGIC;
        Output : out STD_LOGIC_VECTOR (3 downto 0));
end Component;

SIGNAL Input, Output : STD_LOGIC_VECTOR (3 downto 0);
SIGNAL Enable : STD_LOGIC;

begin
UUT : Buffer_4bit Port Map
        (Input => Input,
        Output => Output,
        Enable => Enable);
        
-- 2102224 -> 11 0011 0101 0011 0000
-- 210314  -> 11 0011 0101 1000 1010

process
        begin
        Input <= "0011";
        Enable <= '0';
        WAIT FOR 300 ns;

        Enable <= '1';
        WAIT FOR 300 ns;
        Input <= "0101";
        WAIT;
end process;

end Behavioral;