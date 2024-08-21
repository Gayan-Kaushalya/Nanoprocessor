----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/04/2023 01:43:41 PM
-- Design Name: 
-- Module Name: D_FF_with_EN - Behavioral
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

entity D_FF_with_EN is
    Port ( D : in STD_LOGIC;
           EN : in STD_LOGIC;
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qbar : out STD_LOGIC);
end D_FF_with_EN;

architecture Behavioral of D_FF_with_EN is

begin
    process (Clk) begin
        if (rising_edge(Clk)) then
            if Res = '1' then
                Q <= '0';
                Qbar <= '1';
            else if EN = '1' then
                Q <= D;
                Qbar <= not D;
            end if;
            end if;
        end if;
    end process;

end Behavioral;
