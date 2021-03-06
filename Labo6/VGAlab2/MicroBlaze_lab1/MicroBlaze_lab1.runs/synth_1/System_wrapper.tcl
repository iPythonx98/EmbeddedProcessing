# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1
set_property target_language VHDL [current_project]
set_param project.compositeFile.enableAutoGeneration 0
set_property default_lib xil_defaultlib [current_project]

add_files C:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo1/MicroBlaze_lab1/MicroBlaze_lab1.srcs/sources_1/bd/System/System.bd
set_property used_in_implementation false [get_files -all c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo1/MicroBlaze_lab1/MicroBlaze_lab1.srcs/sources_1/bd/System/ip/System_microblaze_0_0/System_microblaze_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo1/MicroBlaze_lab1/MicroBlaze_lab1.srcs/sources_1/bd/System/ip/System_microblaze_0_0/System_microblaze_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo1/MicroBlaze_lab1/MicroBlaze_lab1.srcs/sources_1/bd/System/ip/System_dlmb_v10_0/System_dlmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo1/MicroBlaze_lab1/MicroBlaze_lab1.srcs/sources_1/bd/System/ip/System_dlmb_v10_0/System_dlmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo1/MicroBlaze_lab1/MicroBlaze_lab1.srcs/sources_1/bd/System/ip/System_ilmb_v10_0/System_ilmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo1/MicroBlaze_lab1/MicroBlaze_lab1.srcs/sources_1/bd/System/ip/System_ilmb_v10_0/System_ilmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo1/MicroBlaze_lab1/MicroBlaze_lab1.srcs/sources_1/bd/System/ip/System_dlmb_bram_if_cntlr_0/System_dlmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo1/MicroBlaze_lab1/MicroBlaze_lab1.srcs/sources_1/bd/System/ip/System_ilmb_bram_if_cntlr_0/System_ilmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo1/MicroBlaze_lab1/MicroBlaze_lab1.srcs/sources_1/bd/System/ip/System_lmb_bram_0/System_lmb_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo1/MicroBlaze_lab1/MicroBlaze_lab1.srcs/sources_1/bd/System/ip/System_mdm_1_0/System_mdm_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo1/MicroBlaze_lab1/MicroBlaze_lab1.srcs/sources_1/bd/System/ip/System_mdm_1_0/System_mdm_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo1/MicroBlaze_lab1/MicroBlaze_lab1.srcs/sources_1/bd/System/ip/System_clk_wiz_1_0/System_clk_wiz_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo1/MicroBlaze_lab1/MicroBlaze_lab1.srcs/sources_1/bd/System/ip/System_clk_wiz_1_0/System_clk_wiz_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo1/MicroBlaze_lab1/MicroBlaze_lab1.srcs/sources_1/bd/System/ip/System_clk_wiz_1_0/System_clk_wiz_1_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo1/MicroBlaze_lab1/MicroBlaze_lab1.srcs/sources_1/bd/System/ip/System_rst_clk_wiz_1_100M_0/System_rst_clk_wiz_1_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo1/MicroBlaze_lab1/MicroBlaze_lab1.srcs/sources_1/bd/System/ip/System_rst_clk_wiz_1_100M_0/System_rst_clk_wiz_1_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo1/MicroBlaze_lab1/MicroBlaze_lab1.srcs/sources_1/bd/System/ip/System_rst_clk_wiz_1_100M_0/System_rst_clk_wiz_1_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo1/MicroBlaze_lab1/MicroBlaze_lab1.srcs/sources_1/bd/System/ip/System_axi_uartlite_0_0/System_axi_uartlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo1/MicroBlaze_lab1/MicroBlaze_lab1.srcs/sources_1/bd/System/ip/System_axi_uartlite_0_0/System_axi_uartlite_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo1/MicroBlaze_lab1/MicroBlaze_lab1.srcs/sources_1/bd/System/ip/System_axi_uartlite_0_0/System_axi_uartlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all C:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo1/MicroBlaze_lab1/MicroBlaze_lab1.srcs/sources_1/bd/System/System_ooc.xdc]
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property is_locked true [get_files C:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo1/MicroBlaze_lab1/MicroBlaze_lab1.srcs/sources_1/bd/System/System.bd]

read_vhdl -library xil_defaultlib C:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo1/MicroBlaze_lab1/MicroBlaze_lab1.srcs/sources_1/bd/System/hdl/System_wrapper.vhd
read_xdc C:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo1/MicroBlaze_lab1/MicroBlaze_lab1.srcs/constrs_1/imports/Labo1/Nexys4_Master(1).xdc
set_property used_in_implementation false [get_files C:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo1/MicroBlaze_lab1/MicroBlaze_lab1.srcs/constrs_1/imports/Labo1/Nexys4_Master(1).xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo1/MicroBlaze_lab1/MicroBlaze_lab1.cache/wt [current_project]
set_property parent.project_dir C:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo1/MicroBlaze_lab1 [current_project]
catch { write_hwdef -file System_wrapper.hwdef }
synth_design -top System_wrapper -part xc7a100tcsg324-1
write_checkpoint System_wrapper.dcp
report_utilization -file System_wrapper_utilization_synth.rpt -pb System_wrapper_utilization_synth.pb
