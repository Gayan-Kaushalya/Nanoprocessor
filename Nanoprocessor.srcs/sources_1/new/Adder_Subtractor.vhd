----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.05.2023 20:11:47
-- Design Name: 
-- Module Name: Adder_Subtractor - Behavioral
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

entity Adder_Subtractor is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           AddSubSel : in STD_LOGIC;                        -- 0 to add. 1 to subtract.
           Overflow : out STD_LOGIC;                        -- Overflow flag
           C_out : out STD_LOGIC;                           -- Carry flag
           Zero : out STD_LOGIC;                            -- Zero flag
           S : out STD_LOGIC_VECTOR (3 downto 0));
end Adder_Subtractor;

architecture Behavioral of Adder_Subtractor is

component FA
    port (
    A: in std_logic;
    B: in std_logic;
    C_in: in std_logic;
    S: out std_logic;
    C_out: out std_logic);
end component;

SIGNAL FA0_C, FA1_C, FA2_C  : std_logic;
SIGNAL B_0, B_1, B_2, B_3   : std_logic;
SIGNAL Cout : std_logic;
SIGNAL T : std_logic_vector (3 downto 0);

begin
    FA_0 : FA
        port map (
            A => A(0),
            B => B_0,
            C_in => AddSubSel,     
            S => T(0),
            C_Out => FA0_C);
 
    FA_1 : FA
         port map (
            A => A(1),
            B => B_1,
            C_in => FA0_C,
            S => T(1),
            C_Out => FA1_C);

    FA_2 : FA
        port map (
            A => A(2),
            B => B_2,
            C_in => FA1_C,
            S => T(2),
            C_Out => FA2_C);
 
     FA_3 : FA
        port map (
            A => A(3),
            B => B_3,
            C_in => FA2_C,
            S => T(3),
            C_Out => Cout);

     B_0 <= B(0) XOR AddSubSel;
     B_1 <= B(1) XOR AddSubSel;
     B_2 <= B(2) XOR AddSubSel;
     B_3 <= B(3) XOR AddSubSel;
     Overflow <= Cout XOR FA2_C;
     C_out <= Cout;
     Zero <= not(T(0) or T(1) or T(2) or T(3));
     S <= T;

end Behavioral;