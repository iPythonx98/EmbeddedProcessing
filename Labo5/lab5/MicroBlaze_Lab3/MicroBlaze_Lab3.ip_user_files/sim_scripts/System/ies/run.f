-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/microblaze_v10_0_6 \
  "../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/6141/hdl/microblaze_v10_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/System/ip/System_microblaze_0_0/sim/System_microblaze_0_0.vhd" \
-endlib
-makelib ies_lib/lmb_v10_v3_0_9 \
  "../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/System/ip/System_dlmb_v10_0/sim/System_dlmb_v10_0.vhd" \
  "../../../bd/System/ip/System_ilmb_v10_0/sim/System_ilmb_v10_0.vhd" \
-endlib
-makelib ies_lib/lmb_bram_if_cntlr_v4_0_14 \
  "../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/226d/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/System/ip/System_dlmb_bram_if_cntlr_0/sim/System_dlmb_bram_if_cntlr_0.vhd" \
  "../../../bd/System/ip/System_ilmb_bram_if_cntlr_0/sim/System_ilmb_bram_if_cntlr_0.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_1 \
  "../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/System/ip/System_lmb_bram_0/sim/System_lmb_bram_0.v" \
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/mdm_v3_2_13 \
  "../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/351e/hdl/mdm_v3_2_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/System/ip/System_mdm_1_0/sim/System_mdm_1_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/System/ip/System_clk_wiz_1_0/System_clk_wiz_1_0_clk_wiz.v" \
  "../../../bd/System/ip/System_clk_wiz_1_0/System_clk_wiz_1_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_12 \
  "../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/System/ip/System_rst_clk_wiz_1_100M_0/sim/System_rst_clk_wiz_1_100M_0.vhd" \
-endlib
-makelib ies_lib/lib_pkg_v1_0_2 \
  "../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_srl_fifo_v1_0_2 \
  "../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/axi_uartlite_v2_0_20 \
  "../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/9945/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/System/ip/System_axi_uartlite_0_0/sim/System_axi_uartlite_0_0.vhd" \
-endlib
-makelib ies_lib/interrupt_control_v3_1_4 \
  "../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_gpio_v2_0_18 \
  "../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/fbf9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/System/ip/System_axi_gpio_0_0/sim/System_axi_gpio_0_0.vhd" \
  "../../../bd/System/ip/System_axi_gpio_1_0/sim/System_axi_gpio_1_0.vhd" \
  "../../../../MicroBlaze_Lab3.srcs/sources_1/ipshared/01da/src/lab3_user_logic.vhd" \
  "../../../../MicroBlaze_Lab3.srcs/sources_1/ipshared/01da/hdl/led_ip_v1_0_S_AXI.vhd" \
  "../../../../MicroBlaze_Lab3.srcs/sources_1/ipshared/01da/hdl/led_ip_v1_0.vhd" \
  "../../../bd/System/ip/System_led_ip_0_0/sim/System_led_ip_0_0.vhd" \
-endlib
-makelib ies_lib/axi_timer_v2_0_18 \
  "../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/cf75/hdl/axi_timer_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/System/ip/System_axi_timer_0_0/sim/System_axi_timer_0_0.vhd" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_16 \
  "../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/0cde/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_2 \
  "../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_2 \
  "../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_2 \
  "../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_15 \
  "../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/d114/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_17 \
  "../../../../MicroBlaze_Lab3.srcs/sources_1/bd/System/ipshared/d293/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/System/ip/System_xbar_0/sim/System_xbar_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/System/sim/System.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

