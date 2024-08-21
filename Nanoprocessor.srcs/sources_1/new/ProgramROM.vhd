----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.06.2023 11:57:38
-- Design Name: 
-- Module Name: ProgramROM - Behavioral
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
use ieee.numeric_std.all;

entity ProgramROM is
    Port ( MemorySel : in STD_LOGIC_VECTOR (2 downto 0);
           InsBus : out STD_LOGIC_VECTOR (11 downto 0));
end ProgramROM;

architecture Behavioral of ProgramROM is
type rom_type is array (0 to 7) of std_logic_vector(11 downto 0);

SIGNAL program_rom : rom_type := (
    -- With NEG
                --         "100010000011", -- MOVI R1, 3
                --         "100100000001", -- MOVI R2, 1
                --         "010100000000", -- NEG R2
                --         "001110010000", -- ADD R7, R1
                --         "000010100000", -- ADD R1, R2
                --         "110010000111", -- JZR R1,7
                --         "110000000011", -- JZR R0,3
                --         "110000000111"  -- JZR R0,7);  

    -- Without NEG
                        "101110000000", -- MOVI R7,  0
                        "100010000001", -- MOVI R1,  1
                        "100100000010", -- MOVI R2,  2
                        "100110000011", -- MOVI R3,  3
                        "001110010000", -- ADD  R7, R1
                        "001110100000", -- ADD  R7, R2
                        "001110110000", -- ADD  R7, R3
                        "110000000000"  -- JZR  R0,  0    -- This will create a loop. 
                        );                                -- To remove loop, change to 110000000111                        
                        
begin
    InsBus <= program_rom(to_integer(unsigned(MemorySel)));
end Behavioral;