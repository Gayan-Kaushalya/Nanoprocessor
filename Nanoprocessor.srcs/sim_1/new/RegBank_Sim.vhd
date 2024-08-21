----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.06.2023 11:07:15
-- Design Name: 
-- Module Name: RegBank_Sim - Behavioral
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

entity RegBank_Sim is
--  Port ( );
end RegBank_Sim;

architecture Behavioral of RegBank_Sim is

Component RegisterBank is
    Port ( RegEnable : in STD_LOGIC_VECTOR (2 downto 0);
           Clk : in STD_LOGIC;
           Res : in STD_LOGIC;
           Input : in STD_LOGIC_VECTOR (3 downto 0);
           Reg0 : out STD_LOGIC_VECTOR (3 downto 0);
           Reg1 : out STD_LOGIC_VECTOR (3 downto 0);
           Reg2 : out STD_LOGIC_VECTOR (3 downto 0);
           Reg3 : out STD_LOGIC_VECTOR (3 downto 0);
           Reg4 : out STD_LOGIC_VECTOR (3 downto 0);
           Reg5 : out STD_LOGIC_VECTOR (3 downto 0);
           Reg6 : out STD_LOGIC_VECTOR (3 downto 0);
           Reg7 : out STD_LOGIC_VECTOR (3 downto 0));
end Component;

SIGNAL RegEnable : STD_LOGIC_VECTOR (2 downto 0);
SIGNAL Clk : STD_LOGIC  := '0';
SIGNAL Res : STD_LOGIC;
SIGNAL Input : STD_LOGIC_VECTOR (3 downto 0) := "0000";
SIGNAL Reg0, Reg1, Reg2, Reg3, Reg4, Reg5, Reg6, Reg7 : STD_LOGIC_VECTOR (3 downto 0);
          
begin
UUT: RegisterBank
PORT MAP ( RegEnable => RegEnable,
           Clk => Clk,
           Res => Res,
           Input => Input,
           Reg0 => Reg0,
           Reg1 => Reg1,
           Reg2 => Reg2,
           Reg3 => Reg3,
           Reg4 => Reg4,
           Reg5 => Reg5,
           Reg6 => Reg6,
           Reg7 => Reg7);
           
-- 2102224 -> 110 011 010 100 110 000 = 11 0011 0101 0011 0000
-- 210314  -> 110 011 010 110 001 010 = 11 0011 0101 1000 1010
           
process 
    begin
    Clk <= not(Clk);
    WAIT FOR 50ns;
end process;

process 
    begin
    Res <= '1';
    WAIT FOR 50ns;
    Res <= '0';
    
    Input <= "0011";
    RegEnable <= "110";
    WAIT FOR 200ns;
    
    Input <= "0101";
    RegEnable <= "011";
    WAIT FOR 200ns;
    
    Input <= "1000";
    RegEnable <= "010";
    WAIT FOR 200ns;
    
    Input <= "1010";
    RegEnable <= "100";
    WAIT FOR 200ns;
    
    Res <= '1';
    WAIT FOR 50ns;
    Res <= '0';
    WAIT;
end process;

end Behavioral;