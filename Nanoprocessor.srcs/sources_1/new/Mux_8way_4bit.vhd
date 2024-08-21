----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.06.2023 18:40:14
-- Design Name: 
-- Module Name: Mux_8way_4bit - Behavioral
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

entity Mux_8way_4bit is
    Port ( RegSel : in STD_LOGIC_VECTOR (2 downto 0);    -- From Instruction Decoder
           Reg0 : in STD_LOGIC_VECTOR (3 downto 0);
           Reg1 : in STD_LOGIC_VECTOR (3 downto 0);
           Reg2 : in STD_LOGIC_VECTOR (3 downto 0);
           Reg3 : in STD_LOGIC_VECTOR (3 downto 0);
           Reg4 : in STD_LOGIC_VECTOR (3 downto 0);
           Reg5 : in STD_LOGIC_VECTOR (3 downto 0);
           Reg6 : in STD_LOGIC_VECTOR (3 downto 0);
           Reg7 : in STD_LOGIC_VECTOR (3 downto 0);
           MuxOut : out STD_LOGIC_VECTOR (3 downto 0));  -- Output to Adder/Subtractor and Instruction Decoder
end Mux_8way_4bit;

architecture Behavioral of Mux_8way_4bit is

Component Decoder_3_to_8
Port( I : in STD_LOGIC_VECTOR (2 downto 0);
      EN: in STD_LOGIC;
      Y: out STD_LOGIC_VECTOR (7 downto 0));
end Component;

Component Buffer_4bit
Port ( Input : in STD_LOGIC_VECTOR (3 downto 0);
       Enable : in STD_LOGIC;
       Output : out STD_LOGIC_VECTOR (3 downto 0));
end Component;

SIGNAL Intermediate: STD_LOGIC_VECTOR (7 downto 0);

begin
    Decoder_3_to_8_0 : Decoder_3_to_8
        Port Map( I => RegSel,
                  EN => '1',
                  Y=>Intermediate);
    
    Buffer0 : Buffer_4bit
        Port Map( Input => Reg0,
                  Enable => Intermediate(0),
                  Output => MuxOut);
                  
    Buffer1 : Buffer_4bit
        Port Map( Input => Reg1,
                  Enable => Intermediate(1),
                  Output => MuxOut);
                  
    Buffer2 : Buffer_4bit
        Port Map( Input => Reg2,
                  Enable => Intermediate(2),
                  Output => MuxOut);      
                  
    Buffer3 : Buffer_4bit
        Port Map( Input => Reg3,
                  Enable => Intermediate(3),
                  Output => MuxOut);   
                  
    Buffer4 : Buffer_4bit
        Port Map( Input => Reg4,
                  Enable => Intermediate(4),
                  Output => MuxOut);     
                  
    Buffer5 : Buffer_4bit
        Port Map( Input => Reg5,
                  Enable => Intermediate(5),
                  Output => MuxOut);     
                  
    Buffer6 : Buffer_4bit
        Port Map( Input => Reg6,
                  Enable => Intermediate(6),
                  Output => MuxOut);        
                  
    Buffer7 : Buffer_4bit
        Port Map( Input => Reg7,
                  Enable => Intermediate(7),
                  Output => MuxOut);                 
end Behavioral;