# 
# Synthesis run script generated by Vivado
# 

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
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.cache/wt [current_project]
set_property parent.project_path C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_cache_permissions disable [current_project]
add_files C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/imports/Design_project/hello_data.coe
add_files C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/hello_data.coe
read_verilog -library xil_defaultlib {
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/imports/new/FlexiClock.v
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/new/OutputRowCol.v
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/new/SPI.v
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/new/averageavg2b.v
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/new/averagehigh2b.v
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/new/averageoff2b.v
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/imports/new/clockToSine8.v
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/new/debounce.v
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/imports/new/deciToDigits.v
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/new/dff.v
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/imports/new/frequency_to_m.v
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/new/game_module.v
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/imports/new/generateSine.v
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/imports/new/m_to_clock.v
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/new/my_random_generator.v
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/new/project_1.v
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/new/project_2b.v
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/new/project_3b.v
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/new/project_extra.v
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/new/randomizer.v
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/new/score_led_display.v
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/new/score_tracker.v
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/imports/new/sevenseg.v
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/imports/new/sineLUT.v
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/new/task2a.v
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/new/task3a.v
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/new/task3a_circular.v
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/new/task3a_default.v
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/new/task_selector.v
  C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/new/AUDIO_FX_TOP.v
}
read_vhdl -library xil_defaultlib C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/imports/audio_effects.srcs/DA2CompRef.vhd
read_ip -quiet C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0.xci
set_property used_in_implementation false [get_files -all c:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/constrs_1/imports/Learn/Basys3_Master.xdc
set_property used_in_implementation false [get_files C:/Users/Francis/Desktop/EE2020_FINAL/EE2020_Design_Project/design_project.srcs/constrs_1/imports/Learn/Basys3_Master.xdc]


synth_design -top AUDIO_FX_TOP -part xc7a35tcpg236-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef AUDIO_FX_TOP.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file AUDIO_FX_TOP_utilization_synth.rpt -pb AUDIO_FX_TOP_utilization_synth.pb"
