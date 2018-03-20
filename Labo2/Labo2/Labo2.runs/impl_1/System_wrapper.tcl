proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param gui.test TreeTableDev
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir C:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.cache/wt [current_project]
  set_property parent.project_dir C:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2 [current_project]
  add_files -quiet C:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.runs/synth_1/System_wrapper.dcp
  add_files C:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/System.bmm
  set_property SCOPED_TO_REF System [get_files -all C:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/System.bmm]
  add_files c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/ipshared/xilinx.com/microblaze_v9_3/62751c34/data/mb_bootloop_le.elf
  set_property SCOPED_TO_REF System [get_files -all c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/ipshared/xilinx.com/microblaze_v9_3/62751c34/data/mb_bootloop_le.elf]
  set_property SCOPED_TO_CELLS microblaze_0 [get_files -all c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/ipshared/xilinx.com/microblaze_v9_3/62751c34/data/mb_bootloop_le.elf]
  read_xdc -ref System_microblaze_0_0 -cells U0 c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/ip/System_microblaze_0_0/System_microblaze_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/ip/System_microblaze_0_0/System_microblaze_0_0.xdc]
  read_xdc -ref System_dlmb_v10_0 -cells U0 c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/ip/System_dlmb_v10_0/System_dlmb_v10_0.xdc
  set_property processing_order EARLY [get_files c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/ip/System_dlmb_v10_0/System_dlmb_v10_0.xdc]
  read_xdc -ref System_ilmb_v10_0 -cells U0 c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/ip/System_ilmb_v10_0/System_ilmb_v10_0.xdc
  set_property processing_order EARLY [get_files c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/ip/System_ilmb_v10_0/System_ilmb_v10_0.xdc]
  read_xdc -ref System_mdm_1_0 -cells U0 c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/ip/System_mdm_1_0/System_mdm_1_0.xdc
  set_property processing_order EARLY [get_files c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/ip/System_mdm_1_0/System_mdm_1_0.xdc]
  read_xdc -ref System_clk_wiz_1_0 -cells U0 c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/ip/System_clk_wiz_1_0/System_clk_wiz_1_0.xdc
  set_property processing_order EARLY [get_files c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/ip/System_clk_wiz_1_0/System_clk_wiz_1_0.xdc]
  read_xdc -prop_thru_buffers -ref System_clk_wiz_1_0 -cells U0 c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/ip/System_clk_wiz_1_0/System_clk_wiz_1_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/ip/System_clk_wiz_1_0/System_clk_wiz_1_0_board.xdc]
  read_xdc -ref System_rst_clk_wiz_1_100M_0 c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/ip/System_rst_clk_wiz_1_100M_0/System_rst_clk_wiz_1_100M_0.xdc
  set_property processing_order EARLY [get_files c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/ip/System_rst_clk_wiz_1_100M_0/System_rst_clk_wiz_1_100M_0.xdc]
  read_xdc -prop_thru_buffers -ref System_rst_clk_wiz_1_100M_0 c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/ip/System_rst_clk_wiz_1_100M_0/System_rst_clk_wiz_1_100M_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/ip/System_rst_clk_wiz_1_100M_0/System_rst_clk_wiz_1_100M_0_board.xdc]
  read_xdc -ref System_axi_uartlite_0_0 -cells U0 c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/ip/System_axi_uartlite_0_0/System_axi_uartlite_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/ip/System_axi_uartlite_0_0/System_axi_uartlite_0_0.xdc]
  read_xdc -prop_thru_buffers -ref System_axi_uartlite_0_0 -cells U0 c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/ip/System_axi_uartlite_0_0/System_axi_uartlite_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/ip/System_axi_uartlite_0_0/System_axi_uartlite_0_0_board.xdc]
  read_xdc -ref System_axi_gpio_0_0 -cells U0 c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/ip/System_axi_gpio_0_0/System_axi_gpio_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/ip/System_axi_gpio_0_0/System_axi_gpio_0_0.xdc]
  read_xdc -prop_thru_buffers -ref System_axi_gpio_0_0 -cells U0 c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/ip/System_axi_gpio_0_0/System_axi_gpio_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/ip/System_axi_gpio_0_0/System_axi_gpio_0_0_board.xdc]
  read_xdc -ref System_axi_gpio_0_1 -cells U0 c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/ip/System_axi_gpio_0_1/System_axi_gpio_0_1.xdc
  set_property processing_order EARLY [get_files c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/ip/System_axi_gpio_0_1/System_axi_gpio_0_1.xdc]
  read_xdc -prop_thru_buffers -ref System_axi_gpio_0_1 -cells U0 c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/ip/System_axi_gpio_0_1/System_axi_gpio_0_1_board.xdc
  set_property processing_order EARLY [get_files c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/sources_1/bd/System/ip/System_axi_gpio_0_1/System_axi_gpio_0_1_board.xdc]
  read_xdc C:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.srcs/constrs_1/imports/Labo1/Nexys4_Master(1).xdc
  link_design -top System_wrapper -part xc7a100tcsg324-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  catch {update_ip_catalog -quiet -current_ip_cache {c:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.cache} }
  opt_design 
  write_checkpoint -force System_wrapper_opt.dcp
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  place_design 
  write_checkpoint -force System_wrapper_placed.dcp
  catch { report_io -file System_wrapper_io_placed.rpt }
  catch { report_clock_utilization -file System_wrapper_clock_utilization_placed.rpt }
  catch { report_utilization -file System_wrapper_utilization_placed.rpt -pb System_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file System_wrapper_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force System_wrapper_routed.dcp
  catch { report_drc -file System_wrapper_drc_routed.rpt -pb System_wrapper_drc_routed.pb }
  catch { report_timing_summary -warn_on_violation -file System_wrapper_timing_summary_routed.rpt -pb System_wrapper_timing_summary_routed.pb }
  catch { report_power -file System_wrapper_power_routed.rpt -pb System_wrapper_power_summary_routed.pb }
  catch { report_route_status -file System_wrapper_route_status.rpt -pb System_wrapper_route_status.pb }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_bmm -force System_wrapper_bd.bmm }
  write_bitstream -force System_wrapper.bit 
  if { [file exists C:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.runs/synth_1/System_wrapper.hwdef] } {
    catch { write_sysdef -hwdef C:/Users/Jona/Documents/GitHub/EmbeddedProcessing/Labo2/Labo2/Labo2.runs/synth_1/System_wrapper.hwdef -bitfile System_wrapper.bit -meminfo System_wrapper_bd.bmm -file System_wrapper.sysdef }
  }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

