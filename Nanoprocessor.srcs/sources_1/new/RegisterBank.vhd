----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.06.2023 19:32:53
-- Design Name: 
-- Module Name: RegisterBank - Behavioral
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

entity RegisterBank is
    Port ( RegEnable : in STD_LOGIC_VECTOR (2 downto 0);          -- From Instruction Decoder
           Clk : in STD_LOGIC;
           Res : in STD_LOGIC;
           Input : in STD_LOGIC_VECTOR (3 downto 0);              -- From 2-way 4-bit Mux
           Reg0 : out STD_LOGIC_VECTOR (3 downto 0);              -- To 8-way 4-bit Mux
           Reg1 : out STD_LOGIC_VECTOR (3 downto 0);              -- To 8-way 4-bit Mux
           Reg2 : out STD_LOGIC_VECTOR (3 downto 0);              -- To 8-way 4-bit Mux
           Reg3 : out STD_LOGIC_VECTOR (3 downto 0);              -- To 8-way 4-bit Mux
           Reg4 : out STD_LOGIC_VECTOR (3 downto 0);              -- To 8-way 4-bit Mux
           Reg5 : out STD_LOGIC_VECTOR (3 downto 0);              -- To 8-way 4-bit Mux
           Reg6 : out STD_LOGIC_VECTOR (3 downto 0);              -- To 8-way 4-bit Mux
           Reg7 : out STD_LOGIC_VECTOR (3 downto 0));             -- To 8-way 4-bit Mux
end RegisterBank;

architecture Behavioral of RegisterBank is

Component Decoder_3_to_8
Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
       EN : in STD_LOGIC;
       Y : out STD_LOGIC_VECTOR (7 downto 0));
end Component;

Component Reg
    Port ( EN : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Res : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (3 downto 0);
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end Component;

SIGNAL Decoder_Output : STD_LOGIC_VECTOR (7 downto 0);
SIGNAL Clk_Signal : STD_LOGIC;

begin
    Decoder: Decoder_3_to_8
        Port Map( I => RegEnable, 
                  EN => '1',
                  Y => Decoder_Output);
    
    R0: Reg
    Port Map( EN => '1',                  
              Clk => Clk_Signal,
              Res => Res,
              D => "0000",                -- Hardcode the value of R0 to all 0s
              Q => Reg0);
    
    R1: Reg
    Port Map( EN => Decoder_Output(1),    
              Clk => Clk_Signal,
              Res => Res,
              D => Input,
              Q => Reg1);
    
    R2: Reg
    Port Map( EN => Decoder_Output(2),
              Clk => Clk_Signal,
              Res => Res,
              D => Input,
              Q => Reg2);
    
    R3: Reg
    Port Map( EN => Decoder_Output(3),
              Clk => Clk_Signal,
              Res => Res,
              D => Input,
              Q => Reg3);
    
    R4: Reg
    Port Map( EN => Decoder_Output(4),
              Clk => Clk_Signal,
              Res => Res,
              D => Input,
              Q => Reg4);
    
    R5: Reg
    Port Map( EN => Decoder_Output(5),
              Clk => Clk_Signal,
              Res => Res,
              D => Input,
              Q => Reg5);
    
    R6: Reg
    Port Map( EN => Decoder_Output(6),
              Clk => Clk_Signal,
              Res => Res,
              D => Input,
              Q => Reg6);
    
    R7: Reg
    Port Map( EN => Decoder_Output(7),
              Clk => Clk_Signal,
              Res => Res,
              D => Input,
              Q => Reg7);
    
    Clk_Signal <= Clk;

end Behavioral;