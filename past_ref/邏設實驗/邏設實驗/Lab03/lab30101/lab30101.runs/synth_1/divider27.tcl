# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {C:/Users/HP 15/Desktop/digitaldesignnnn/Lab03/lab30101/lab30101.cache/wt} [current_project]
set_property parent.project_path {C:/Users/HP 15/Desktop/digitaldesignnnn/Lab03/lab30101/lab30101.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib {{C:/Users/HP 15/Desktop/digitaldesignnnn/Lab03/lab30101/lab30101.srcs/sources_1/new/divider27.v}}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top divider27 -part xc7a35tcpg236-1


write_checkpoint -force -noxdef divider27.dcp

catch { report_utilization -file divider27_utilization_synth.rpt -pb divider27_utilization_synth.pb }
