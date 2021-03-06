# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/logicdesign/M/lab90101/lab90101.cache/wt [current_project]
set_property parent.project_path D:/logicdesign/M/lab90101/lab90101.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib {
  D:/logicdesign/M/lab90101/lab90101.srcs/sources_1/imports/keyboard_sample_code/Ps2Interface.v
  D:/logicdesign/M/lab90101/lab90101.srcs/sources_1/imports/keyboard_sample_code/KeyboardCtrl.v
  D:/logicdesign/M/lab90101/lab90101.srcs/sources_1/new/display.v
  D:/logicdesign/M/lab90101/lab90101.srcs/sources_1/new/control.v
  D:/logicdesign/M/lab90101/lab90101.srcs/sources_1/imports/keyboard_sample_code/KeyboardDecoder.v
  D:/logicdesign/M/lab90101/lab90101.srcs/sources_1/new/lab901.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/logicdesign/M/lab90101/lab90101.srcs/constrs_1/new/lab901.xdc
set_property used_in_implementation false [get_files D:/logicdesign/M/lab90101/lab90101.srcs/constrs_1/new/lab901.xdc]


synth_design -top lab901 -part xc7a35tcpg236-1


write_checkpoint -force -noxdef lab901.dcp

catch { report_utilization -file lab901_utilization_synth.rpt -pb lab901_utilization_synth.pb }
