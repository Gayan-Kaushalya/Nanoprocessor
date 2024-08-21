----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.06.2023 12:14:16
-- Design Name: 
-- Module Name: ProgramROM_Sim - Behavioral
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

entity ProgramROM_Sim is
--  Port ( );
end ProgramROM_Sim;

architecture Behavioral of ProgramROM_Sim is

Component ProgramROM is
    Port ( MemorySel : in STD_LOGIC_VECTOR (2 downto 0);
           InsBus : out STD_LOGIC_VECTOR (11 downto 0));
end Component;

SIGNAL MemorySel : STD_LOGIC_VECTOR (2 downto 0);
SIGNAL InsBus : STD_LOGIC_VECTOR (11 downto 0);

begin
UUT: ProgramROM
    PORT MAP ( MemorySel => MemorySel,
               InsBus => InsBus);
               
-- 2102224 -> 110 011 010 100 110 000
-- 210314  -> 110 011 010 110 001 010

process
    begin
    MemorySel <= "110";
    WAIT FOR 100ns;

    MemorySel <= "011";
    WAIT FOR 100ns;

    MemorySel <= "010";
    WAIT FOR 100ns;

    MemorySel <= "100";
    WAIT FOR 100ns;

    MemorySel <= "001";
    WAIT FOR 100ns;

    MemorySel <= "000";
    WAIT FOR 100ns;

    MemorySel <= "111";
    WAIT FOR 100ns;

    MemorySel <= "101";
    WAIT;
end process;

end Behavioral;