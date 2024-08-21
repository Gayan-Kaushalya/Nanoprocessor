----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.06.2023 12:29:35
-- Design Name: 
-- Module Name: Mux_2way_3bit_Sim - Behavioral
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

entity Mux_2way_3bit_Sim is
--  Port ( );
end Mux_2way_3bit_Sim;

architecture Behavioral of Mux_2way_3bit_Sim is

Component Mux_2way_3bit is
    Port ( Jump_Flag : in STD_LOGIC;                    
           Jump_Address : in STD_LOGIC_VECTOR (2 downto 0);   
           Incremented_Address : in STD_LOGIC_VECTOR (2 downto 0); 
           Output_Address : out STD_LOGIC_VECTOR (2 downto 0));    
end Component;

SIGNAL Jump_Flag : STD_LOGIC;                    
SIGNAL Jump_Address, Incremented_Address, Output_Address : STD_LOGIC_VECTOR (2 downto 0);   

begin
UUT : Mux_2way_3bit PORT MAP
    (Jump_Flag => Jump_Flag,
    Jump_Address => Jump_Address,
    Incremented_Address => Incremented_Address,
    Output_Address => Output_Address);

-- 2102224 -> 110 011 010 100 110 000
-- 210314  -> 110 011 010 110 001 010

process
    begin
    Incremented_Address <= "110";
    Jump_Address <= "011";
    Jump_Flag <= '0';

    WAIT FOR 450 ns;
    Jump_Flag <= '1';
    WAIT;

end process;
end Behavioral;