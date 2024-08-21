----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.06.2023 12:02:23
-- Design Name: 
-- Module Name: Mux_2way_3bit - Behavioral
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

entity Mux_2way_3bit is
    Port ( Jump_Flag : in STD_LOGIC;                                         -- Control Bit            
           Jump_Address : in STD_LOGIC_VECTOR (2 downto 0);                  -- Address to jump
           Incremented_Address : in STD_LOGIC_VECTOR (2 downto 0);           -- Output from 3 bit adder
           Output_Address : out STD_LOGIC_VECTOR (2 downto 0));              -- Output to program counter
end Mux_2way_3bit;

architecture Behavioral of Mux_2way_3bit is

Component Buffer_3bit
 Port ( Input : in STD_LOGIC_VECTOR (2 downto 0);
        Enable : in STD_LOGIC;
        Output : out STD_LOGIC_VECTOR (2 downto 0));
end Component;

SIGNAL Not_Jump : STD_LOGIC;

begin
Buffer_3bit_0 : Buffer_3bit PORT MAP
       (Input => Jump_Address,
       Enable => Jump_Flag,
       Output => Output_Address);

Buffer_3bit_1 : Buffer_3bit PORT MAP
       (Input => Incremented_Address,
       Enable => Not_Jump,
       Output => Output_Address);

Not_Jump <= not Jump_Flag;

end Behavioral;