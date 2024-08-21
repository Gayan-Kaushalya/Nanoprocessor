----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.06.2023 11:09:42
-- Design Name: 
-- Module Name: buffer_3bit - Behavioral
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

entity Buffer_3bit is
    Port ( Input : in STD_LOGIC_VECTOR (2 downto 0);
           Enable : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (2 downto 0));
end Buffer_3bit;

architecture Behavioral of Buffer_3bit is

begin
    Output <= Input when (Enable = '1') else "ZZZ";
end Behavioral;