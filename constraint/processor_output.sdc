# ####################################################################

#  Created by Genus(TM) Synthesis Solution 20.11-s111_1 on Thu Oct 30 10:32:18 IST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design processor

create_clock -name "clk" -period 10.0 -waveform {0.0 5.0} [get_ports clk]
set_load -pin_load 0.05 [get_ports {A_out[7]}]
set_load -pin_load 0.05 [get_ports {A_out[6]}]
set_load -pin_load 0.05 [get_ports {A_out[5]}]
set_load -pin_load 0.05 [get_ports {A_out[4]}]
set_load -pin_load 0.05 [get_ports {A_out[3]}]
set_load -pin_load 0.05 [get_ports {A_out[2]}]
set_load -pin_load 0.05 [get_ports {A_out[1]}]
set_load -pin_load 0.05 [get_ports {A_out[0]}]
set_load -pin_load 0.05 [get_ports {PC_out[4]}]
set_load -pin_load 0.05 [get_ports {PC_out[3]}]
set_load -pin_load 0.05 [get_ports {PC_out[2]}]
set_load -pin_load 0.05 [get_ports {PC_out[1]}]
set_load -pin_load 0.05 [get_ports {PC_out[0]}]
set_load -pin_load 0.05 [get_ports halted_out]
set_false_path -from [get_ports reset]
set_false_path -through [list \
  [get_cells {memory_reg[8][3]}]  \
  [get_cells {memory_reg[22][2]}]  \
  [get_cells {memory_reg[4][5]}]  \
  [get_cells {memory_reg[17][5]}]  \
  [get_cells {memory_reg[20][6]}]  \
  [get_cells {memory_reg[20][2]}]  \
  [get_cells {memory_reg[30][3]}]  \
  [get_cells {memory_reg[11][3]}]  \
  [get_cells {memory_reg[14][7]}]  \
  [get_cells {memory_reg[7][6]}]  \
  [get_cells {memory_reg[12][4]}]  \
  [get_cells {memory_reg[15][7]}]  \
  [get_cells {memory_reg[21][6]}]  \
  [get_cells {memory_reg[31][7]}]  \
  [get_cells {memory_reg[3][7]}]  \
  [get_cells {memory_reg[11][7]}]  \
  [get_cells {memory_reg[13][7]}]  \
  [get_cells {memory_reg[16][7]}]  \
  [get_cells {memory_reg[17][7]}]  \
  [get_cells {memory_reg[20][4]}]  \
  [get_cells {memory_reg[10][7]}]  \
  [get_cells {memory_reg[28][7]}]  \
  [get_cells {memory_reg[31][1]}]  \
  [get_cells {memory_reg[31][3]}]  \
  [get_cells {memory_reg[1][6]}]  \
  [get_cells {memory_reg[29][7]}]  \
  [get_cells {memory_reg[12][2]}]  \
  [get_cells {memory_reg[19][6]}]  \
  [get_cells {memory_reg[13][3]}]  \
  [get_cells {memory_reg[3][0]}]  \
  [get_cells {memory_reg[7][2]}]  \
  [get_cells {memory_reg[10][3]}]  \
  [get_cells {memory_reg[26][7]}]  \
  [get_cells {memory_reg[29][3]}]  \
  [get_cells {memory_reg[28][3]}]  \
  [get_cells {memory_reg[29][5]}]  \
  [get_cells {memory_reg[18][3]}]  \
  [get_cells {memory_reg[30][7]}]  \
  [get_cells {memory_reg[6][2]}]  \
  [get_cells {memory_reg[6][6]}]  \
  [get_cells {memory_reg[1][5]}]  \
  [get_cells {memory_reg[27][7]}]  \
  [get_cells {memory_reg[9][3]}]  \
  [get_cells {memory_reg[8][7]}]  \
  [get_cells {memory_reg[2][3]}]  \
  [get_cells {memory_reg[0][5]}]  \
  [get_cells {memory_reg[1][1]}]  \
  [get_cells {memory_reg[12][7]}]  \
  [get_cells {memory_reg[9][7]}]  \
  [get_cells {memory_reg[5][6]}]  \
  [get_cells {memory_reg[27][3]}]  \
  [get_cells {memory_reg[28][1]}]  \
  [get_cells {memory_reg[18][1]}]  \
  [get_cells {memory_reg[24][2]}]  \
  [get_cells {memory_reg[12][1]}]  \
  [get_cells {memory_reg[2][0]}]  \
  [get_cells {memory_reg[2][4]}]  \
  [get_cells {memory_reg[3][1]}]  \
  [get_cells {memory_reg[3][5]}]  \
  [get_cells {memory_reg[25][6]}]  \
  [get_cells {memory_reg[4][6]}]  \
  [get_cells {memory_reg[17][0]}]  \
  [get_cells {memory_reg[17][2]}]  \
  [get_cells {memory_reg[26][4]}]  \
  [get_cells {memory_reg[0][6]}]  \
  [get_cells {memory_reg[0][7]}]  \
  [get_cells {memory_reg[1][0]}]  \
  [get_cells {memory_reg[1][2]}]  \
  [get_cells {memory_reg[1][3]}]  \
  [get_cells {memory_reg[1][4]}]  \
  [get_cells {memory_reg[1][7]}]  \
  [get_cells {memory_reg[2][1]}]  \
  [get_cells {memory_reg[2][2]}]  \
  [get_cells {memory_reg[2][5]}]  \
  [get_cells {memory_reg[2][6]}]  \
  [get_cells {memory_reg[2][7]}]  \
  [get_cells {memory_reg[3][2]}]  \
  [get_cells {memory_reg[3][3]}]  \
  [get_cells {memory_reg[3][6]}]  \
  [get_cells {memory_reg[4][0]}]  \
  [get_cells {memory_reg[4][1]}]  \
  [get_cells {memory_reg[4][2]}]  \
  [get_cells {memory_reg[4][4]}]  \
  [get_cells {memory_reg[5][0]}]  \
  [get_cells {memory_reg[5][1]}]  \
  [get_cells {memory_reg[5][3]}]  \
  [get_cells {memory_reg[5][4]}]  \
  [get_cells {memory_reg[5][5]}]  \
  [get_cells {memory_reg[5][7]}]  \
  [get_cells {memory_reg[6][0]}]  \
  [get_cells {memory_reg[6][1]}]  \
  [get_cells {memory_reg[6][3]}]  \
  [get_cells {memory_reg[6][4]}]  \
  [get_cells {memory_reg[6][5]}]  \
  [get_cells {memory_reg[6][7]}]  \
  [get_cells {memory_reg[7][0]}]  \
  [get_cells {memory_reg[7][1]}]  \
  [get_cells {memory_reg[7][3]}]  \
  [get_cells {memory_reg[7][4]}]  \
  [get_cells {memory_reg[7][5]}]  \
  [get_cells {memory_reg[7][7]}]  \
  [get_cells {memory_reg[8][5]}]  \
  [get_cells {memory_reg[8][6]}]  \
  [get_cells {memory_reg[9][0]}]  \
  [get_cells {memory_reg[9][1]}]  \
  [get_cells {memory_reg[9][2]}]  \
  [get_cells {memory_reg[9][4]}]  \
  [get_cells {memory_reg[9][5]}]  \
  [get_cells {memory_reg[9][6]}]  \
  [get_cells {memory_reg[10][0]}]  \
  [get_cells {memory_reg[10][1]}]  \
  [get_cells {memory_reg[10][2]}]  \
  [get_cells {memory_reg[10][4]}]  \
  [get_cells {memory_reg[10][5]}]  \
  [get_cells {memory_reg[10][6]}]  \
  [get_cells {memory_reg[11][0]}]  \
  [get_cells {memory_reg[11][1]}]  \
  [get_cells {memory_reg[11][2]}]  \
  [get_cells {memory_reg[11][4]}]  \
  [get_cells {memory_reg[11][5]}]  \
  [get_cells {memory_reg[11][6]}]  \
  [get_cells {memory_reg[12][0]}]  \
  [get_cells {memory_reg[0][0]}]  \
  [get_cells {memory_reg[16][2]}]  \
  [get_cells {memory_reg[12][5]}]  \
  [get_cells {memory_reg[12][6]}]  \
  [get_cells {memory_reg[13][0]}]  \
  [get_cells {memory_reg[13][1]}]  \
  [get_cells {memory_reg[13][2]}]  \
  [get_cells {memory_reg[13][4]}]  \
  [get_cells {memory_reg[13][5]}]  \
  [get_cells {memory_reg[13][6]}]  \
  [get_cells {memory_reg[14][0]}]  \
  [get_cells {memory_reg[14][1]}]  \
  [get_cells {memory_reg[14][2]}]  \
  [get_cells {memory_reg[14][3]}]  \
  [get_cells {memory_reg[14][4]}]  \
  [get_cells {memory_reg[14][5]}]  \
  [get_cells {memory_reg[14][6]}]  \
  [get_cells {memory_reg[15][0]}]  \
  [get_cells {memory_reg[15][1]}]  \
  [get_cells {memory_reg[15][2]}]  \
  [get_cells {memory_reg[15][4]}]  \
  [get_cells {memory_reg[15][5]}]  \
  [get_cells {memory_reg[15][6]}]  \
  [get_cells {memory_reg[8][4]}]  \
  [get_cells {memory_reg[12][3]}]  \
  [get_cells {memory_reg[15][3]}]  \
  [get_cells {memory_reg[3][4]}]  \
  [get_cells {memory_reg[23][0]}]  \
  [get_cells {memory_reg[21][2]}]  \
  [get_cells {memory_reg[4][3]}]  \
  [get_cells {memory_reg[18][6]}]  \
  [get_cells {memory_reg[8][2]}]  \
  [get_cells {memory_reg[26][2]}]  \
  [get_cells {memory_reg[23][4]}]  \
  [get_cells {memory_reg[16][5]}]  \
  [get_cells {memory_reg[18][7]}]  \
  [get_cells {memory_reg[19][0]}]  \
  [get_cells {memory_reg[19][1]}]  \
  [get_cells {memory_reg[19][3]}]  \
  [get_cells {memory_reg[19][4]}]  \
  [get_cells {memory_reg[19][5]}]  \
  [get_cells {memory_reg[23][2]}]  \
  [get_cells {memory_reg[19][7]}]  \
  [get_cells {memory_reg[20][0]}]  \
  [get_cells {memory_reg[20][1]}]  \
  [get_cells {memory_reg[24][6]}]  \
  [get_cells {memory_reg[20][3]}]  \
  [get_cells {memory_reg[20][5]}]  \
  [get_cells {memory_reg[20][7]}]  \
  [get_cells {memory_reg[21][0]}]  \
  [get_cells {memory_reg[21][1]}]  \
  [get_cells {memory_reg[21][3]}]  \
  [get_cells {memory_reg[21][4]}]  \
  [get_cells {memory_reg[21][5]}]  \
  [get_cells {memory_reg[21][7]}]  \
  [get_cells {memory_reg[22][0]}]  \
  [get_cells {memory_reg[22][1]}]  \
  [get_cells {memory_reg[22][3]}]  \
  [get_cells {memory_reg[22][4]}]  \
  [get_cells {memory_reg[22][5]}]  \
  [get_cells {memory_reg[22][7]}]  \
  [get_cells {memory_reg[23][1]}]  \
  [get_cells {memory_reg[23][3]}]  \
  [get_cells {memory_reg[23][5]}]  \
  [get_cells {memory_reg[23][7]}]  \
  [get_cells {memory_reg[18][5]}]  \
  [get_cells {memory_reg[16][6]}]  \
  [get_cells {memory_reg[17][1]}]  \
  [get_cells {memory_reg[24][5]}]  \
  [get_cells {memory_reg[24][7]}]  \
  [get_cells {memory_reg[25][0]}]  \
  [get_cells {memory_reg[25][1]}]  \
  [get_cells {memory_reg[25][3]}]  \
  [get_cells {memory_reg[25][4]}]  \
  [get_cells {memory_reg[25][5]}]  \
  [get_cells {memory_reg[25][7]}]  \
  [get_cells {memory_reg[26][0]}]  \
  [get_cells {memory_reg[26][1]}]  \
  [get_cells {memory_reg[26][3]}]  \
  [get_cells {memory_reg[26][6]}]  \
  [get_cells {memory_reg[27][0]}]  \
  [get_cells {memory_reg[27][1]}]  \
  [get_cells {memory_reg[27][2]}]  \
  [get_cells {memory_reg[27][4]}]  \
  [get_cells {memory_reg[27][5]}]  \
  [get_cells {memory_reg[27][6]}]  \
  [get_cells {memory_reg[5][2]}]  \
  [get_cells {memory_reg[25][2]}]  \
  [get_cells {memory_reg[28][0]}]  \
  [get_cells {memory_reg[28][2]}]  \
  [get_cells {memory_reg[28][4]}]  \
  [get_cells {memory_reg[28][5]}]  \
  [get_cells {memory_reg[28][6]}]  \
  [get_cells {memory_reg[29][0]}]  \
  [get_cells {memory_reg[29][1]}]  \
  [get_cells {memory_reg[29][2]}]  \
  [get_cells {memory_reg[23][6]}]  \
  [get_cells {memory_reg[29][4]}]  \
  [get_cells {memory_reg[29][6]}]  \
  [get_cells {memory_reg[30][0]}]  \
  [get_cells {memory_reg[30][1]}]  \
  [get_cells {memory_reg[30][2]}]  \
  [get_cells {memory_reg[30][4]}]  \
  [get_cells {memory_reg[30][5]}]  \
  [get_cells {memory_reg[30][6]}]  \
  [get_cells {memory_reg[31][0]}]  \
  [get_cells {memory_reg[31][2]}]  \
  [get_cells {memory_reg[31][4]}]  \
  [get_cells {memory_reg[31][5]}]  \
  [get_cells {memory_reg[31][6]}]  \
  [get_cells {memory_reg[18][4]}]  \
  [get_cells {memory_reg[18][2]}]  \
  [get_cells {memory_reg[18][0]}]  \
  [get_cells {memory_reg[17][6]}]  \
  [get_cells {memory_reg[17][4]}]  \
  [get_cells {memory_reg[19][2]}]  \
  [get_cells {memory_reg[26][5]}]  \
  [get_cells {memory_reg[22][6]}]  \
  [get_cells {memory_reg[24][1]}]  \
  [get_cells {memory_reg[24][0]}]  \
  [get_cells {memory_reg[17][3]}]  \
  [get_cells {memory_reg[4][7]}]  \
  [get_cells {memory_reg[8][0]}]  \
  [get_cells {memory_reg[24][3]}]  \
  [get_cells {memory_reg[24][4]}]  \
  [get_cells {memory_reg[0][4]}]  \
  [get_cells {memory_reg[16][0]}]  \
  [get_cells {memory_reg[8][1]}]  \
  [get_cells {memory_reg[16][4]}]  \
  [get_cells {memory_reg[0][3]}]  \
  [get_cells {memory_reg[0][2]}]  \
  [get_cells {memory_reg[0][1]}]  \
  [get_cells {memory_reg[16][3]}]  \
  [get_cells {memory_reg[16][1]}] ]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay 1.0 [get_ports reset]
set_output_delay -clock [get_clocks clk] -add_delay 1.0 [get_ports {A_out[7]}]
set_output_delay -clock [get_clocks clk] -add_delay 1.0 [get_ports {A_out[6]}]
set_output_delay -clock [get_clocks clk] -add_delay 1.0 [get_ports {A_out[5]}]
set_output_delay -clock [get_clocks clk] -add_delay 1.0 [get_ports {A_out[4]}]
set_output_delay -clock [get_clocks clk] -add_delay 1.0 [get_ports {A_out[3]}]
set_output_delay -clock [get_clocks clk] -add_delay 1.0 [get_ports {A_out[2]}]
set_output_delay -clock [get_clocks clk] -add_delay 1.0 [get_ports {A_out[1]}]
set_output_delay -clock [get_clocks clk] -add_delay 1.0 [get_ports {A_out[0]}]
set_output_delay -clock [get_clocks clk] -add_delay 1.0 [get_ports {PC_out[4]}]
set_output_delay -clock [get_clocks clk] -add_delay 1.0 [get_ports {PC_out[3]}]
set_output_delay -clock [get_clocks clk] -add_delay 1.0 [get_ports {PC_out[2]}]
set_output_delay -clock [get_clocks clk] -add_delay 1.0 [get_ports {PC_out[1]}]
set_output_delay -clock [get_clocks clk] -add_delay 1.0 [get_ports {PC_out[0]}]
set_output_delay -clock [get_clocks clk] -add_delay 1.0 [get_ports halted_out]
set_driving_cell -lib_cell INVX1 -library slow -pin "Y" [get_ports clk]
set_driving_cell -lib_cell INVX1 -library slow -pin "Y" [get_ports reset]
set_wire_load_mode "enclosed"
