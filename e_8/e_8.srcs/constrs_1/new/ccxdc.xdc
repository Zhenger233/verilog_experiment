## clock
set_property PACKAGE_PIN D4 [get_ports clk_50M]
set_property IOSTANDARD LVCMOS33 [get_ports clk_50M]

##btn_col
set_property PACKAGE_PIN R12 [get_ports {col[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {col[0]}]
set_property PACKAGE_PIN T12 [get_ports {col[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {col[1]}]
set_property PULLDOWN true [get_ports {col[1]}]
set_property PULLDOWN true [get_ports {col[0]}]


##btn_row
set_property PACKAGE_PIN K3 [get_ports {row[0]}]
set_property PACKAGE_PIN M6 [get_ports {row[1]}]
set_property PACKAGE_PIN P10 [get_ports {row[2]}]
set_property PACKAGE_PIN R10 [get_ports {row[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {row[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {row[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {row[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {row[3]}]

##switch
set_property PACKAGE_PIN T9 [get_ports switch_10or25]
set_property IOSTANDARD LVCMOS33 [get_ports switch_10or25]
set_property PACKAGE_PIN F3 [get_ports silence]
set_property IOSTANDARD LVCMOS33 [get_ports silence]

##led
set_property PACKAGE_PIN P9 [get_ports {led[0]}]
set_property PACKAGE_PIN R8 [get_ports {led[1]}]
set_property PACKAGE_PIN R7 [get_ports {led[2]}]
set_property PACKAGE_PIN T5 [get_ports {led[3]}]
set_property PACKAGE_PIN N6 [get_ports {led[4]}]
set_property PACKAGE_PIN T4 [get_ports {led[5]}]
set_property PACKAGE_PIN T3 [get_ports {led[6]}]
set_property PACKAGE_PIN T2 [get_ports {led[7]}]
set_property PACKAGE_PIN R1 [get_ports {led[8]}]
set_property PACKAGE_PIN G5 [get_ports {led[9]}]
set_property PACKAGE_PIN H3 [get_ports {led[10]}]
set_property PACKAGE_PIN E3 [get_ports {led[11]}]
# set_property PACKAGE_PIN P5 [get_ports {led[12]}]
# set_property PACKAGE_PIN P3 [get_ports {led[13]}]
# set_property PACKAGE_PIN P1 [get_ports {led[14]}]
# set_property PACKAGE_PIN N2 [get_ports {led[15]}]
# set_property PACKAGE_PIN N1 [get_ports {led[16]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {led[16]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {led[15]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {led[14]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {led[13]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {led[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]

#beep
set_property PACKAGE_PIN L2 [get_ports {beep}]
set_property IOSTANDARD LVCMOS33 [get_ports {beep}]

##显示
set_property PACKAGE_PIN G12 [get_ports {dig[0]}]
set_property PACKAGE_PIN H13 [get_ports {dig[1]}]
set_property PACKAGE_PIN M12 [get_ports {dig[2]}]
set_property PACKAGE_PIN N13 [get_ports {dig[3]}]
set_property PACKAGE_PIN N14 [get_ports {dig[4]}]
set_property PACKAGE_PIN N11 [get_ports {dig[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dig[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dig[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dig[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dig[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dig[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dig[5]}]
set_property PACKAGE_PIN L13 [get_ports {seg[7]}]
set_property PACKAGE_PIN M14 [get_ports {seg[6]}]
set_property PACKAGE_PIN P13 [get_ports {seg[5]}]
set_property PACKAGE_PIN K12 [get_ports {seg[4]}]
set_property PACKAGE_PIN K13 [get_ports {seg[3]}]
set_property PACKAGE_PIN L14 [get_ports {seg[2]}]
set_property PACKAGE_PIN N12 [get_ports {seg[1]}]
set_property PACKAGE_PIN P11 [get_ports {seg[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}]