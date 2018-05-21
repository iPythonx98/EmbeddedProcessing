vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/microblaze_v10_0_6
vlib questa_lib/msim/lmb_v10_v3_0_9
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_14
vlib questa_lib/msim/blk_mem_gen_v8_4_1
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/mdm_v3_2_13
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_12
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/axi_uartlite_v2_0_20
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_gpio_v2_0_18
vlib questa_lib/msim/axi_timer_v2_0_18
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_16
vlib questa_lib/msim/fifo_generator_v13_2_2
vlib questa_lib/msim/axi_data_fifo_v2_1_15
vlib questa_lib/msim/axi_crossbar_v2_1_17

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap microblaze_v10_0_6 questa_lib/msim/microblaze_v10_0_6
vmap lmb_v10_v3_0_9 questa_lib/msim/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_14 questa_lib/msim/lmb_bram_if_cntlr_v4_0_14
vmap blk_mem_gen_v8_4_1 questa_lib/msim/blk_mem_gen_v8_4_1
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_13 questa_lib/msim/mdm_v3_2_13
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 questa_lib/msim/proc_sys_reset_v5_0_12
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_20 questa_lib/msim/axi_uartlite_v2_0_20
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_18 questa_lib/msim/axi_gpio_v2_0_18
vmap axi_timer_v2_0_18 questa_lib/msim/axi_timer_v2_0_18
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_16 questa_lib/msim/axi_register_slice_v2_1_16
vmap fifo_generator_v13_2_2 questa_lib/msim/fifo_generator_v13_2_2
vmap axi_data_fifo_v2_1_15 questa_lib/msim/axi_data_fifo_v2_1_15
vmap axi_crossbar_v2_1_17 questa_lib/msim/axi_crossbar_v2_1_17

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/4903" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/4903" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/ec67/hdl" \
"C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v10_0_6 -64 -93 \
"../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/6141/hdl/microblaze_v10_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/System/ip/System_microblaze_0_0/sim/System_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_9 -64 -93 \
"../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/System/ip/System_dlmb_v10_0/sim/System_dlmb_v10_0.vhd" \
"../../../bd/System/ip/System_ilmb_v10_0/sim/System_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_14 -64 -93 \
"../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/226d/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/System/ip/System_dlmb_bram_if_cntlr_0/sim/System_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/System/ip/System_ilmb_bram_if_cntlr_0/sim/System_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_1 -64 "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/4903" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/4903" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/ec67/hdl" \
"../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/4903" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/4903" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/ec67/hdl" \
"../../../bd/System/ip/System_lmb_bram_0/sim/System_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_13 -64 -93 \
"../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/351e/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/System/ip/System_mdm_1_0/sim/System_mdm_1_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/4903" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/4903" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/ec67/hdl" \
"../../../bd/System/ip/System_clk_wiz_1_0/System_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/System/ip/System_clk_wiz_1_0/System_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -64 -93 \
"../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/System/ip/System_rst_clk_wiz_1_100M_0/sim/System_rst_clk_wiz_1_100M_0.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_20 -64 -93 \
"../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/9945/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/System/ip/System_axi_uartlite_0_0/sim/System_axi_uartlite_0_0.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_18 -64 -93 \
"../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/fbf9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/System/ip/System_axi_gpio_0_0/sim/System_axi_gpio_0_0.vhd" \
"../../../bd/System/ip/System_axi_gpio_1_0/sim/System_axi_gpio_1_0.vhd" \
"../../../../MicroBlaze_Lab3.srcs/sources_1/ipshared/01da/src/lab3_user_logic.vhd" \
"../../../../MicroBlaze_Lab3.srcs/sources_1/ipshared/01da/hdl/led_ip_v1_0_S_AXI.vhd" \
"../../../../MicroBlaze_Lab3.srcs/sources_1/ipshared/01da/hdl/led_ip_v1_0.vhd" \
"../../../bd/System/ip/System_led_ip_0_0/sim/System_led_ip_0_0.vhd" \

vcom -work axi_timer_v2_0_18 -64 -93 \
"../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/cf75/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/System/ip/System_axi_timer_0_0/sim/System_axi_timer_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/4903" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/4903" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/ec67/hdl" \
"../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/4903" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/4903" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/ec67/hdl" \
"../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_16 -64 "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/4903" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/4903" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/ec67/hdl" \
"../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/0cde/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_2 -64 "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/4903" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/4903" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/ec67/hdl" \
"../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -64 -93 \
"../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2 -64 "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/4903" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/4903" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/ec67/hdl" \
"../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_15 -64 "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/4903" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/4903" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/ec67/hdl" \
"../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/d114/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_17 -64 "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/4903" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/4903" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/ec67/hdl" \
"../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/d293/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/4903" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/4903" "+incdir+../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/ec67/hdl" \
"../../../bd/System/ip/System_xbar_0/sim/System_xbar_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/System/sim/System.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

