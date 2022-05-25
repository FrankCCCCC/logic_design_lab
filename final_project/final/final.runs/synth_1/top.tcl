# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param chipscope.maxJobs 2
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/data/logic_design_lab/final_project/final/final.cache/wt [current_project]
set_property parent.project_path D:/data/logic_design_lab/final_project/final/final.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo d:/data/logic_design_lab/final_project/final/final.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files D:/data/logic_design_lab/final_project/final/out.coe
add_files D:/data/logic_design_lab/final_project/final/pipe.coe
add_files D:/data/logic_design_lab/final_project/final/bg.coe
add_files D:/data/logic_design_lab/final_project/final/bird.coe
add_files D:/data/logic_design_lab/final_project/final/bg_big.coe
read_verilog -library xil_defaultlib {
  D:/data/logic_design_lab/final_project/final/final.srcs/sources_1/new/bg_crtl.v
  D:/data/logic_design_lab/final_project/final/final.srcs/sources_1/new/bg_mem_addr_gen.v
  D:/data/logic_design_lab/final_project/final/final.srcs/sources_1/new/bird_ctrl.v
  D:/data/logic_design_lab/final_project/final/final.srcs/sources_1/new/bird_mem_addr_gen.v
  D:/data/logic_design_lab/final_project/final/final.srcs/sources_1/new/bird_pos_ctrl.v
  D:/data/logic_design_lab/final_project/final/final.srcs/sources_1/new/clock_divisor.v
  D:/data/logic_design_lab/final_project/final/final.srcs/sources_1/new/debounce.v
  D:/data/logic_design_lab/final_project/final/final.srcs/sources_1/new/global.v
  D:/data/logic_design_lab/final_project/final/final.srcs/sources_1/new/dec_disp.v
  D:/data/logic_design_lab/final_project/final/final.srcs/sources_1/new/display_7seg.v
  D:/data/logic_design_lab/final_project/final/final.srcs/sources_1/new/game.v
  D:/data/logic_design_lab/final_project/final/final.srcs/sources_1/new/onepulse.v
  D:/data/logic_design_lab/final_project/final/final.srcs/sources_1/new/pipe_crtl.v
  D:/data/logic_design_lab/final_project/final/final.srcs/sources_1/new/pipe_mem_addr_gen.v
  D:/data/logic_design_lab/final_project/final/final.srcs/sources_1/new/segment7.v
  D:/data/logic_design_lab/final_project/final/final.srcs/sources_1/new/segment7_frequency_divider.v
  D:/data/logic_design_lab/final_project/final/final.srcs/sources_1/new/vga_controller.v
  D:/data/logic_design_lab/final_project/final/final.srcs/sources_1/new/top.v
}
read_ip -quiet D:/data/logic_design_lab/final_project/final/final.srcs/sources_1/ip/blk_mem_gen_pipe/blk_mem_gen_pipe.xci
set_property used_in_implementation false [get_files -all d:/data/logic_design_lab/final_project/final/final.srcs/sources_1/ip/blk_mem_gen_pipe/blk_mem_gen_pipe_ooc.xdc]

read_ip -quiet D:/data/logic_design_lab/final_project/final/final.srcs/sources_1/ip/blk_mem_gen_bird/blk_mem_gen_bird.xci
set_property used_in_implementation false [get_files -all d:/data/logic_design_lab/final_project/final/final.srcs/sources_1/ip/blk_mem_gen_bird/blk_mem_gen_bird_ooc.xdc]

read_ip -quiet D:/data/logic_design_lab/final_project/final/final.srcs/sources_1/ip/blk_mem_gen_bg_big/blk_mem_gen_bg_big.xci
set_property used_in_implementation false [get_files -all d:/data/logic_design_lab/final_project/final/final.srcs/sources_1/ip/blk_mem_gen_bg_big/blk_mem_gen_bg_big_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/data/logic_design_lab/final_project/final/final.srcs/constrs_1/new/Basys3_Master.xdc
set_property used_in_implementation false [get_files D:/data/logic_design_lab/final_project/final/final.srcs/constrs_1/new/Basys3_Master.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top top -part xc7a35tcpg236-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
