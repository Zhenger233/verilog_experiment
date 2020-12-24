vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../Dynamic_LED_IP/Dynamic_LED_IP.srcs/sources_1/new/e_4_ip.v" \
"../../../../e_4.srcs/sources_1/ip/dynamic_led6_0/sim/dynamic_led6_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

