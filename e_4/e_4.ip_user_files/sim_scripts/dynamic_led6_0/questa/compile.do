vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../Dynamic_LED_IP/Dynamic_LED_IP.srcs/sources_1/new/e_4_ip.v" \
"../../../../e_4.srcs/sources_1/ip/dynamic_led6_0/sim/dynamic_led6_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

