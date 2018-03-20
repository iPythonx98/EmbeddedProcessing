set_property SRC_FILE_INFO {cfile:e:/Labo2/Labo2.srcs/sources_1/bd/System/ip/System_clk_wiz_1_0/System_clk_wiz_1_0.xdc rfile:../../../Labo2.srcs/sources_1/bd/System/ip/System_clk_wiz_1_0/System_clk_wiz_1_0.xdc id:1 order:EARLY scoped_inst:System_i/clk_wiz_1/U0} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
