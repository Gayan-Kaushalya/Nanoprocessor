----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.06.2023 17:42:00
-- Design Name: 
-- Module Name: Mux_2way_4bit - Behavioral
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

entity Mux_2way_4bit is
    Port ( LoadSel : in STD_LOGIC;                          -- Load Select = Control Bit
           ImmediateVal : in STD_LOGIC_VECTOR (3 downto 0); -- From Instruction Decoder
           AddSubOut : in STD_LOGIC_VECTOR (3 downto 0);    -- Output from Adder/Subtractor
           Result : out STD_LOGIC_VECTOR (3 downto 0));     -- Output to Register Bank
end Mux_2way_4bit;

architecture Behavioral of Mux_2way_4bit is

Component Buffer_4bit
 Port ( Input : in STD_LOGIC_VECTOR (3 downto 0);
        Enable : in STD_LOGIC;
        Output : out STD_LOGIC_VECTOR (3 downto 0));
end Component;

SIGNAL Not_Load : STD_LOGIC;

begin
    Buffer_4bit_0 : Buffer_4bit PORT MAP
           (Input => ImmediateVal,
           Enable => LoadSel,
           Output => Result);
    
    Buffer_4bit_1 : Buffer_4bit PORT MAP
           (Input => AddSubOut,
           Enable => Not_Load,
           Output => Result);
    
    Not_Load <= not LoadSel;
end Behavioral;