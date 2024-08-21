----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.06.2023 11:36:54
-- Design Name: 
-- Module Name: Buffer_4bit - Behavioral
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

entity Buffer_4bit is
    Port ( Input : in STD_LOGIC_VECTOR (3 downto 0);
           Enable : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (3 downto 0));
end Buffer_4bit;

architecture Behavioral of Buffer_4bit is

begin
    Output <= Input when (Enable = '1') else "ZZZZ";
end Behavioral;