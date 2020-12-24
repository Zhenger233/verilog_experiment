-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Dec  3 10:57:42 2020
-- Host        : Zhenger running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dynamic_led6_0_stub.vhdl
-- Design      : dynamic_led6_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tftg256-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    disp_data_right0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    disp_data_right1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    disp_data_right2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    disp_data_right3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    disp_data_right4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    disp_data_right5 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    seg : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dig : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "disp_data_right0[3:0],disp_data_right1[3:0],disp_data_right2[3:0],disp_data_right3[3:0],disp_data_right4[3:0],disp_data_right5[3:0],clk,seg[7:0],dig[5:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "dynamic_led6,Vivado 2018.3";
begin
end;
