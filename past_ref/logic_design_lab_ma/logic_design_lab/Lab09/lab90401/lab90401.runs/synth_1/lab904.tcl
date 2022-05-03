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
set_property webtalk.parent_dir D:/data/logic_design_lab/past_ref/logic_design_lab_ma/logic_design_lab/Lab09/lab90401/lab90401.cache/wt [current_project]
set_property parent.project_path D:/data/logic_design_lab/past_ref/logic_design_lab_ma/logic_design_lab/Lab09/lab90401/lab90401.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_cache_permissions disable [current_project]
read_verilog -library xil_defaultlib {
  D:/data/logic_design_lab/past_ref/logic_design_lab_ma/logic_design_lab/Lab09/lab90401/lab90401.srcs/sources_1/imports/keyboard_sample_code/KeyboardCtrl.v
  D:/data/logic_design_lab/past_ref/logic_design_lab_ma/logic_design_lab/Lab09/lab90401/lab90401.srcs/sources_1/imports/keyboard_sample_code/KeyboardDecoder.v
  D:/data/logic_design_lab/past_ref/logic_design_lab_ma/logic_design_lab/Lab09/lab90401/lab90401.srcs/sources_1/imports/keyboard_sample_code/Ps2Interface.v
  D:/data/logic_design_lab/past_ref/logic_design_lab_ma/logic_design_lab/Lab09/lab90401/lab90401.srcs/sources_1/new/fsm.v
  D:/data/logic_design_lab/past_ref/logic_design_lab_ma/logic_design_lab/Lab09/lab90401/lab90401.srcs/sources_1/new/key.v
  D:/data/logic_design_lab/past_ref/logic_design_lab_ma/logic_design_lab/Lab09/lab90401/lab90401.srcs/sources_1/new/out.v
  D:/data/logic_design_lab/past_ref/logic_design_lab_ma/logic_design_lab/Lab09/lab90401/lab90401.srcs/sources_1/new/shift.v
  D:/data/logic_design_lab/past_ref/logic_design_lab_ma/logic_design_lab/Lab09/lab90401/lab90401.srcs/sources_1/new/lab904.v
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/data/logic_design_lab/past_ref/logic_design_lab_ma/logic_design_lab/Lab09/lab90401/lab90401.srcs/constrs_1/imports/lab8_4_105061117_ver1/lab8_4.xdc
set_property used_in_implementation false [get_files D:/data/logic_design_lab/past_ref/logic_design_lab_ma/logic_design_lab/Lab09/lab90401/lab90401.srcs/constrs_1/imports/lab8_4_105061117_ver1/lab8_4.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top lab904 -part xc7a35tcpg236-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef lab904.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file lab904_utilization_synth.rpt -pb lab904_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
