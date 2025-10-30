# ============================================================
# Cadence Genus Synthesis Script for Processor (180 nm)
# ============================================================

# ------------------------------------------------------------
# Library Setup
# ------------------------------------------------------------
# Update this path to your 180nm PDK standard-cell library location.
set_db init_lib_search_path {/home/install/FOUNDRY/digital/180nm/dig/lib/}

# Specify the 180nm timing library file.
# Replace "slow.lib" if your foundry library uses another name.
set_db library slow.lib

# ------------------------------------------------------------
# Read RTL Source Files
# ------------------------------------------------------------
# Read both ALU and processor HDL files.
read_hdl {./alu.v}
read_hdl {./processor.v}

# ------------------------------------------------------------
# Elaborate the Top-Level Design
# ------------------------------------------------------------
elaborate processor
current_design processor

# ------------------------------------------------------------
# Read Design Constraints
# ------------------------------------------------------------
# Constraint file defines clock, delays, and operating conditions.
read_sdc ./constraint_processor.sdc

# ------------------------------------------------------------
# Synthesis Effort Settings
# ------------------------------------------------------------
set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium

# ------------------------------------------------------------
# Run Synthesis Flow
# ------------------------------------------------------------
syn_generic
syn_map
syn_opt

# ------------------------------------------------------------
# Write Synthesized Outputs
# ------------------------------------------------------------
write_hdl > processor_netlist_180nm.v
write_sdc > processor_output_180nm.sdc

# ------------------------------------------------------------
# Generate Reports
# ------------------------------------------------------------
report timing > processor_timing_180nm.rpt
report power  > processor_power_180nm.rpt
report area   > processor_area_180nm.rpt
report gates  > processor_gates_180nm.rpt

# ------------------------------------------------------------
# Optional GUI
# ------------------------------------------------------------
gui_show

# ------------------------------------------------------------
# End of Script
# ============================================================
