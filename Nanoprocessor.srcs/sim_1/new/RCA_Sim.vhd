----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.05.2023 19:05:17
-- Design Name: 
-- Module Name: RCA_Sim - Behavioral
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

entity RCA_Sim is
--  Port ( );
end RCA_Sim;

architecture Behavioral of RCA_Sim is
COMPONENT RCA_3
    PORT( A,B : IN STD_LOGIC_VECTOR (2 downto 0);
          C_in : IN STD_LOGIC;
          C_out : OUT STD_LOGIC;
          S : OUT STD_LOGIC_VECTOR (2 downto 0));
END COMPONENT;

SIGNAL A,B,S : std_logic_vector (2 downto 0) ;
SIGNAL C_in, C_out : std_logic;

begin
UUT: RCA_3 PORT MAP (
        A => A,
        B => B,
        C_in => C_in,
        C_out => C_out,
        S => S
        );

-- 2102224 -> 110 011 010 100 110 000
-- 210314  -> 110 011 010 110 001 010

process
        begin
        A <= "110";
        B <= "011";         -- 110 + 011
        C_in <= '0';

        WAIT FOR 200 ns; 
        A <= "100";
        B <= "001";         -- 100 + 001

        WAIT FOR 200 ns; 
        A <= "010";
        B <= "000";         -- 010 + 000

        WAIT FOR 200 ns;                 
        A <= "101";
        B <= "111";         -- 101 + 111

        WAIT;
end process;
 
end Behavioral;