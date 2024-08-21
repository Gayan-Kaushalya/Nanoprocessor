----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.05.2023 18:47:44
-- Design Name: 
-- Module Name: 3_Bit_RCA - Behavioral
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

entity RCA_3 is
    Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
           B : in STD_LOGIC_VECTOR (2 downto 0);
           C_in : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (2 downto 0);
           C_out : out STD_LOGIC);
end RCA_3;

architecture Behavioral of RCA_3 is

Component FA
    Port (
    A: in std_logic;
    B: in std_logic;
    C_in: in std_logic;
    S: out std_logic;
    C_out: out std_logic);
end Component;

SIGNAL FA0_C, FA1_C, FA2_C : std_logic;

begin
    FA_0 : FA
        Port Map (
            A => A(0),
            B => B(0),
            C_in => '0',        -- Set to ground
            S => S(0),
            C_Out => FA0_C);
 
    FA_1 : FA
         Port Map (
            A => A(1),
            B => B(1),
            C_in => FA0_C,
            S => S(1),
            C_Out => FA1_C);

    FA_2 : FA
        Port Map (
            A => A(2),
            B => B(2),
            C_in => FA1_C,
            S => S(2),
            C_Out => C_out);
 
end Behavioral;