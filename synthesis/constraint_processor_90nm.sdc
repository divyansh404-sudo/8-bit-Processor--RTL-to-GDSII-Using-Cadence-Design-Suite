###############################################################
# SDC Constraints for 90nm Processor Design
###############################################################

# Define the main clock (10 ns period = 100 MHz)
create_clock -name clk -period 10.0 [get_ports clk]

# Set input and output delays (assuming 10% of clock)
set_input_delay 1.0 -clock clk [get_ports {reset}]
set_output_delay 1.0 -clock clk [all_outputs]

# Define driving cell for inputs
set_driving_cell -lib_cell INVX1 [all_inputs]

# Define load on outputs
set_load 0.05 [all_outputs]

# Asynchronous reset - mark as false path
set_false_path -from [get_ports reset]

# Optional: Prevent timing checks on internal memory array
set_false_path -through [get_cells memory*]
