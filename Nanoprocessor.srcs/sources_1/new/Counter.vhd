----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/04/2023 03:09:51 PM
-- Design Name: 
-- Module Name: Counter - Behavioral
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

entity Counter is
    Port ( D : in STD_LOGIC_VECTOR (2 downto 0);        -- Output of 2-way 3-bit Mux
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (2 downto 0));      -- Memory Select
end Counter;

architecture Behavioral of Counter is
Component D_FF
    Port (
    D : in STD_LOGIC;
    Res: in STD_LOGIC;
    Clk : in STD_LOGIC;
    Q : out STD_LOGIC;
    Qbar : out STD_LOGIC);
end Component;

begin
 D_FF0 : D_FF
    Port Map (
    D => D(0),
    Res => Res,
    Clk => Clk,
    Q => Q(0));
 
 D_FF1 : D_FF
    Port Map (
    D => D(1),
    Res => Res,
    Clk => Clk,
    Q => Q(1));
 
 D_FF2 : D_FF
    Port Map (
    D => D(2),
    Res => Res,
    Clk => Clk,
    Q => Q(2));

end Behavioral;