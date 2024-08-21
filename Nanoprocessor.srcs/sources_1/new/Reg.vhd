----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.06.2023 19:49:53
-- Design Name: 
-- Module Name: Register - Behavioral
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

entity Reg is
    Port ( EN : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Res : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (3 downto 0);
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end Reg;

architecture Behavioral of Reg is

Component D_FF_with_EN
Port ( D : in STD_LOGIC;
       EN : in STD_LOGIC;
       Res : in STD_LOGIC;
       Clk : in STD_LOGIC;
       Q : out STD_LOGIC;
       Qbar : out STD_LOGIC);
end Component;

SIGNAL S: STD_LOGIC_VECTOR (3 downto 0);

begin
    D_FF_0: D_FF_with_EN 
    PORT MAP (D => D(0), 
              EN => EN, 
              Res => Res,
              Clk => Clk, 
              Q => S(0));
    
    D_FF_1: D_FF_with_EN 
    PORT MAP (D => D(1), 
              EN => EN, 
              Res => Res,
              Clk => Clk, 
              Q => S(1));
    
    D_FF_2: D_FF_with_EN 
    PORT MAP (D => D(2), 
              EN => EN, 
              Res => Res,
              Clk => Clk, 
              Q => S(2));
    
    D_FF_3: D_FF_with_EN 
    PORT MAP (D => D(3), 
              EN => EN, 
              Res => Res,
              Clk => Clk, 
              Q => S(3));
              
    Q <= S;

end Behavioral;