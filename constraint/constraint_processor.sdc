# ============================================================
# Constraint File for Processor Design (180 nm Technology)
# ============================================================

# ------------------------------------------------------------
# Clock Definition
# ------------------------------------------------------------
# 20 ns clock period (50 MHz typical for 180 nm)
create_clock -name clk -period 20 [get_ports clk]

# ------------------------------------------------------------
# Input and Output Delays
# ------------------------------------------------------------
# 3 ns input/output delay to account for I/O buffer delays
set_input_delay 3 -clock clk [all_inputs]
set_output_delay 3 -clock clk [all_outputs]

# ------------------------------------------------------------
# Drive and Load
# ------------------------------------------------------------
# Define default drive strength and load capacitance
set_drive 1 [all_inputs]
set_load 0.1 [all_outputs]

# ------------------------------------------------------------
# Operating Conditions
# ------------------------------------------------------------
# Use the slow corner from your 180 nm library
set_operating_conditions -library slow.lib -analysis_type on_chip_variation

# ------------------------------------------------------------
# False Paths / Exceptions
# ------------------------------------------------------------
# Disable timing for reset signal (asynchronous)
set_false_path -from [get_ports reset]

# ------------------------------------------------------------
# End of File
# ============================================================
