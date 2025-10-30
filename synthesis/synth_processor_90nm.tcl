###############################################################
# Cadence Genus Synthesis Script for 90nm Processor
# Top module: processor.v (uses alu.v)
###############################################################

# -------------------------------------------------------------
# Library Setup
# -------------------------------------------------------------
set_db init_lib_search_path {/home/install/FOUNDRY/digital/90nm/dig/lib/}
set_db library slow.lib

# -------------------------------------------------------------
# Read RTL Source Files
# -------------------------------------------------------------
read_hdl {./alu.v}
read_hdl {./processor.v}

# -------------------------------------------------------------
# Set Top Design
# -------------------------------------------------------------
elaborate processor
current_design processor

# -------------------------------------------------------------
# Read Timing Constraints
# -------------------------------------------------------------
read_sdc ./constraint_processor_90nm.sdc

# -------------------------------------------------------------
# Set Synthesis Effort
# -------------------------------------------------------------
set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium

# -------------------------------------------------------------
# Run Synthesis Flow
# -------------------------------------------------------------
syn_generic
syn_map
syn_opt

# -------------------------------------------------------------
# Write Outputs
# -------------------------------------------------------------
write_hdl > processor_netlist.v
write_sdc > processor_output.sdc

# -------------------------------------------------------------
# Generate Reports
# -------------------------------------------------------------
report timing > processor_timing.rpt
report power  > processor_power.rpt
report area   > processor_area.rpt
report gates  > processor_gates.rpt

# -------------------------------------------------------------
# Optional GUI
# -------------------------------------------------------------
gui_show
