set LIB ~/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

read_liberty $LIB
read_verilog ~/Desktop/VLSI_PD/synth/alu4bit_synth.v
link_design alu4bit
read_sdc ~/Desktop/VLSI_PD/sta/constraints.sdc

report_checks -path_delay max -fields {slew cap input_pin net} -digits 4
report_checks -path_delay min -fields {slew cap input_pin net} -digits 4
report_checks -path_delay max -group_path_count 5
report_wns
report_tns
report_worst_slack -max
report_worst_slack -min
