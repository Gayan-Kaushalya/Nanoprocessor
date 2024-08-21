----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/14/2023 02:23:03 PM
-- Design Name: 
-- Module Name: FA - Behavioral
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

entity FA is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C_in : in STD_LOGIC;
           S : out STD_LOGIC;
           C_out : out STD_LOGIC);
end FA;

architecture Behavioral of FA is
SIGNAL Xor_sig : std_logic;

component HA
    port (
    A: in std_logic;
    B: in std_logic;
    S: out std_logic;
    C: out std_logic);
end component; 

SIGNAL HA0_S, HA0_C, HA1_S, HA1_C : std_logic;

begin
    HA_0 : HA
        port map (
        A => A,
        B => B,
        S => HA0_S,
        C => HA0_C);
    
    HA_1 : HA
        port map (
        A => HA0_S,
        B => C_in,
        S => HA1_S,
        C => HA1_C); 
    
    Xor_sig <= ((Not A) and B) or (A and (Not B));
    C_out <= (A and B) or (C_in and Xor_sig);
    S <=  ((Not Xor_sig) and C_in) or (Xor_sig and (Not C_in));  
end Behavioral;