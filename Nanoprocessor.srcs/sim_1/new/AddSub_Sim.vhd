----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.05.2023 21:34:41
-- Design Name: 
-- Module Name: AddSub_Sim - Behavioral
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

entity AddSub_Sim is
--  Port ( );
end AddSub_Sim;

architecture Behavioral of AddSub_Sim is

COMPONENT Adder_Subtractor
    PORT( A,B : IN STD_LOGIC_VECTOR (3 downto 0);
          AddSubSel : IN STD_LOGIC;
          S : OUT STD_LOGIC_VECTOR (3 downto 0);
          C_out, Overflow, Zero : OUT STD_LOGIC);
END COMPONENT;

SIGNAL A, B, S : STD_LOGIC_VECTOR (3 downto 0);
SIGNAL Overflow, AddSubSel, C_out, Zero : STD_LOGIC;

begin
UUT: Adder_Subtractor PORT MAP(
        A => A,
        B => B,
        AddSubSel => AddSubSel,
        C_out => C_out,
        S => S,
        Zero => Zero,
        Overflow => Overflow
        );

-- 2102224 -> 11 0011 0101 0011 0000
-- 210314  -> 11 0011 0101 1000 1010

process
        begin
        A <= "1000";
        B <= "0011";           -- 1000 - 0011
        AddSubSel <= '1';

        WAIT FOR 200 ns; 
        A <= "1100";
        B <= "1010";           -- 1100 + 1010                      
        AddSubSel <= '0';

        WAIT FOR 200 ns;                  
        A <= "1011";
        B <= "1011";           -- 1011 - 1011    
        AddSubSel <= '1';
        
        WAIT FOR 200 ns;                 
        A <= "0011";          
        B <= "0101";           -- 0011 + 0101
        AddSubSel <= '0';
        
        WAIT;
end process;
 
end Behavioral;