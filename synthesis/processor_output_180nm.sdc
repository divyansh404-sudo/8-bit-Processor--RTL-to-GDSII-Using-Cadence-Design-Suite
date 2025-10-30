# ####################################################################

#  Created by Genus(TM) Synthesis Solution 20.11-s111_1 on Thu Oct 30 11:27:09 IST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design processor

create_clock -name "clk" -period 20.0 -waveform {0.0 10.0} [get_ports clk]
set_load -pin_load 0.1 [get_ports {A_out[7]}]
set_load -pin_load 0.1 [get_ports {A_out[6]}]
set_load -pin_load 0.1 [get_ports {A_out[5]}]
set_load -pin_load 0.1 [get_ports {A_out[4]}]
set_load -pin_load 0.1 [get_ports {A_out[3]}]
set_load -pin_load 0.1 [get_ports {A_out[2]}]
set_load -pin_load 0.1 [get_ports {A_out[1]}]
set_load -pin_load 0.1 [get_ports {A_out[0]}]
set_load -pin_load 0.1 [get_ports {PC_out[4]}]
set_load -pin_load 0.1 [get_ports {PC_out[3]}]
set_load -pin_load 0.1 [get_ports {PC_out[2]}]
set_load -pin_load 0.1 [get_ports {PC_out[1]}]
set_load -pin_load 0.1 [get_ports {PC_out[0]}]
set_load -pin_load 0.1 [get_ports halted_out]
set_false_path -from [get_ports reset]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay 3.0 [get_ports reset]
set_output_delay -clock [get_clocks clk] -add_delay 3.0 [get_ports {A_out[7]}]
set_output_delay -clock [get_clocks clk] -add_delay 3.0 [get_ports {A_out[6]}]
set_output_delay -clock [get_clocks clk] -add_delay 3.0 [get_ports {A_out[5]}]
set_output_delay -clock [get_clocks clk] -add_delay 3.0 [get_ports {A_out[4]}]
set_output_delay -clock [get_clocks clk] -add_delay 3.0 [get_ports {A_out[3]}]
set_output_delay -clock [get_clocks clk] -add_delay 3.0 [get_ports {A_out[2]}]
set_output_delay -clock [get_clocks clk] -add_delay 3.0 [get_ports {A_out[1]}]
set_output_delay -clock [get_clocks clk] -add_delay 3.0 [get_ports {A_out[0]}]
set_output_delay -clock [get_clocks clk] -add_delay 3.0 [get_ports {PC_out[4]}]
set_output_delay -clock [get_clocks clk] -add_delay 3.0 [get_ports {PC_out[3]}]
set_output_delay -clock [get_clocks clk] -add_delay 3.0 [get_ports {PC_out[2]}]
set_output_delay -clock [get_clocks clk] -add_delay 3.0 [get_ports {PC_out[1]}]
set_output_delay -clock [get_clocks clk] -add_delay 3.0 [get_ports {PC_out[0]}]
set_output_delay -clock [get_clocks clk] -add_delay 3.0 [get_ports halted_out]
set_drive 1.0 [get_ports clk]
set_drive 1.0 [get_ports reset]
set_wire_load_mode "enclosed"
