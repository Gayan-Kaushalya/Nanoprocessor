----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.06.2023 18:05:30
-- Design Name: 
-- Module Name: Mux_2way_4bit_Sim - Behavioral
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

entity Mux_2way_4bit_Sim is
--  Port ( );
end Mux_2way_4bit_Sim;

architecture Behavioral of Mux_2way_4bit_Sim is

Component  Mux_2way_4bit is
    Port ( LoadSel : in STD_LOGIC;                          
           ImmediateVal : in STD_LOGIC_VECTOR (3 downto 0); 
           AddSubOut : in STD_LOGIC_VECTOR (3 downto 0);   
           Result : out STD_LOGIC_VECTOR (3 downto 0));    
end Component;

SIGNAL LoadSel : STD_LOGIC;                          
SIGNAL ImmediateVal, AddSubOut, Result  : STD_LOGIC_VECTOR (3 downto 0); 
               
begin
UUT : Mux_2way_4bit PORT MAP
    (LoadSel => LoadSel,
    ImmediateVal => ImmediateVal,
    AddSubOut => AddSubOut,
    Result => Result);

-- 2102224 -> 11 0011 0101 0011 0000
-- 210314  -> 11 0011 0101 1000 1010

process
    begin
    AddSubOut <= "1110";
    ImmediateVal <= "1001";
    LoadSel <= '0';

    WAIT FOR 450 ns;
    LoadSel <= '1';
    WAIT;

end process;
end Behavioral;