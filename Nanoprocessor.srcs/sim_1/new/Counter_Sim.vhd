----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.05.2023 16:07:29
-- Design Name: 
-- Module Name: Counter_Sim - Behavioral
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

entity Counter_Sim is
--  Port ( );
end Counter_Sim;

architecture Behavioral of Counter_Sim is
COMPONENT Counter
    port (D : in STD_LOGIC_VECTOR (2 downto 0);
          Res : in STD_LOGIC :='0';
          Clk : in STD_LOGIC :='0';
          Q : out STD_LOGIC_VECTOR (2 downto 0));
END COMPONENT;

SIGNAL Res, Clk: std_logic;
SIGNAL Q,D: std_logic_vector (2 downto 0);

begin
UUT: Counter PORT MAP(
    D => D,
    Res => Res,
    Clk => Clk,
    Q => Q);
    
-- 2102224 -> 110 011 010 100 110 000
-- 210314  -> 110 011 010 110 001 010
   
process 
begin 
    Clk <= '0';
    WAIT FOR 50 ns;
    Clk <= '1';
    WAIT FOR 50 ns;    
end process;

process
    begin
    Res <= '1';
    WAIT FOR 100ns;
    Res <= '0';

    D <= "110";
    WAIT FOR 50 ns;
    D <= "011";
    WAIT FOR 50 ns;
    D <= "010";
    WAIT FOR 50 ns;
    D <= "100";
    WAIT FOR 50 ns;
    D <= "000";
    WAIT FOR 50 ns;
    D <= "001";
    WAIT FOR 50 ns;
    D <= "101";
    WAIT FOR 50 ns;
    D <= "111";
    WAIT FOR 50 ns;
    D <= "110";
    WAIT FOR 50 ns;
    D <= "011";
    WAIT FOR 50 ns;
    D <= "010";
    WAIT FOR 50 ns;
    D <= "100";
    WAIT FOR 50 ns;
    D <= "000";
    WAIT FOR 50 ns;
    D <= "001";
    WAIT FOR 50 ns;
    D <= "101";
    WAIT FOR 50 ns;
    D <= "111";
    WAIT FOR 50 ns;

    Res <= '1';
    WAIT FOR 100ns;
    Res <= '0';
    WAIT;

end process;

end Behavioral;