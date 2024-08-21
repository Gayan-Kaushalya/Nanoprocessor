## Clock signal
set_property PACKAGE_PIN W5 [get_ports Clock]
	set_property IOSTANDARD LVCMOS33 [get_ports Clock]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports Clock]


## LEDs
set_property PACKAGE_PIN U16 [get_ports {LED[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[0]}]
set_property PACKAGE_PIN E19 [get_ports {LED[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[1]}]
set_property PACKAGE_PIN U19 [get_ports {LED[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[2]}]
set_property PACKAGE_PIN V19 [get_ports {LED[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[3]}]
	
# Overflow - LED 13
set_property PACKAGE_PIN N3 [get_ports {Overflow}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Overflow}]
	
# Zero - LED 14
set_property PACKAGE_PIN P1 [get_ports {Zero}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Zero}]
	
# Carry - LED 15
set_property PACKAGE_PIN L1 [get_ports {Carry}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Carry}]


##7 segment display
set_property PACKAGE_PIN W7 [get_ports {SevenSeg[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {SevenSeg[0]}]
set_property PACKAGE_PIN W6 [get_ports {SevenSeg[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {SevenSeg[1]}]
set_property PACKAGE_PIN U8 [get_ports {SevenSeg[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {SevenSeg[2]}]
set_property PACKAGE_PIN V8 [get_ports {SevenSeg[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {SevenSeg[3]}]
set_property PACKAGE_PIN U5 [get_ports {SevenSeg[4]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {SevenSeg[4]}]
set_property PACKAGE_PIN V5 [get_ports {SevenSeg[5]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {SevenSeg[5]}]
set_property PACKAGE_PIN U7 [get_ports {SevenSeg[6]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {SevenSeg[6]}]

# Anode
set_property PACKAGE_PIN U2 [get_ports {Anode[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Anode[0]}]
set_property PACKAGE_PIN U4 [get_ports {Anode[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Anode[1]}]
set_property PACKAGE_PIN V4 [get_ports {Anode[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Anode[2]}]
set_property PACKAGE_PIN W4 [get_ports {Anode[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Anode[3]}]


## Reset - U18 Btn C
set_property PACKAGE_PIN U18 [get_ports Reset]
	set_property IOSTANDARD LVCMOS33 [get_ports Reset]