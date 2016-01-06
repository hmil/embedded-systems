# Legal Notice: (C)2016 Altera Corporation. All rights reserved.  Your
# use of Altera Corporation's design tools, logic functions and other
# software and tools, and its AMPP partner logic functions, and any
# output files any of the foregoing (including device programming or
# simulation files), and any associated documentation or information are
# expressly subject to the terms and conditions of the Altera Program
# License Subscription Agreement or other applicable license agreement,
# including, without limitation, that your use is for the sole purpose
# of programming logic devices manufactured by Altera and sold by Altera
# or its authorized distributors.  Please refer to the applicable
# agreement for further details.

#**************************************************************
# Timequest JTAG clock definition
#   Uncommenting the following lines will define the JTAG
#   clock in TimeQuest Timing Analyzer
#**************************************************************

#create_clock -period 10MHz {altera_reserved_tck}
#set_clock_groups -asynchronous -group {altera_reserved_tck}

#**************************************************************
# Set TCL Path Variables 
#**************************************************************

set 	full_sys_nios2_qsys_0 	full_sys_nios2_qsys_0:*
set 	full_sys_nios2_qsys_0_oci 	full_sys_nios2_qsys_0_nios2_oci:the_full_sys_nios2_qsys_0_nios2_oci
set 	full_sys_nios2_qsys_0_oci_break 	full_sys_nios2_qsys_0_nios2_oci_break:the_full_sys_nios2_qsys_0_nios2_oci_break
set 	full_sys_nios2_qsys_0_ocimem 	full_sys_nios2_qsys_0_nios2_ocimem:the_full_sys_nios2_qsys_0_nios2_ocimem
set 	full_sys_nios2_qsys_0_oci_debug 	full_sys_nios2_qsys_0_nios2_oci_debug:the_full_sys_nios2_qsys_0_nios2_oci_debug
set 	full_sys_nios2_qsys_0_wrapper 	full_sys_nios2_qsys_0_jtag_debug_module_wrapper:the_full_sys_nios2_qsys_0_jtag_debug_module_wrapper
set 	full_sys_nios2_qsys_0_jtag_tck 	full_sys_nios2_qsys_0_jtag_debug_module_tck:the_full_sys_nios2_qsys_0_jtag_debug_module_tck
set 	full_sys_nios2_qsys_0_jtag_sysclk 	full_sys_nios2_qsys_0_jtag_debug_module_sysclk:the_full_sys_nios2_qsys_0_jtag_debug_module_sysclk
set 	full_sys_nios2_qsys_0_oci_path 	 [format "%s|%s" $full_sys_nios2_qsys_0 $full_sys_nios2_qsys_0_oci]
set 	full_sys_nios2_qsys_0_oci_break_path 	 [format "%s|%s" $full_sys_nios2_qsys_0_oci_path $full_sys_nios2_qsys_0_oci_break]
set 	full_sys_nios2_qsys_0_ocimem_path 	 [format "%s|%s" $full_sys_nios2_qsys_0_oci_path $full_sys_nios2_qsys_0_ocimem]
set 	full_sys_nios2_qsys_0_oci_debug_path 	 [format "%s|%s" $full_sys_nios2_qsys_0_oci_path $full_sys_nios2_qsys_0_oci_debug]
set 	full_sys_nios2_qsys_0_jtag_tck_path 	 [format "%s|%s|%s" $full_sys_nios2_qsys_0_oci_path $full_sys_nios2_qsys_0_wrapper $full_sys_nios2_qsys_0_jtag_tck]
set 	full_sys_nios2_qsys_0_jtag_sysclk_path 	 [format "%s|%s|%s" $full_sys_nios2_qsys_0_oci_path $full_sys_nios2_qsys_0_wrapper $full_sys_nios2_qsys_0_jtag_sysclk]
set 	full_sys_nios2_qsys_0_jtag_sr 	 [format "%s|*sr" $full_sys_nios2_qsys_0_jtag_tck_path]

#**************************************************************
# Set False Paths
#**************************************************************

set_false_path -from [get_keepers *$full_sys_nios2_qsys_0_oci_break_path|break_readreg*] -to [get_keepers *$full_sys_nios2_qsys_0_jtag_sr*]
set_false_path -from [get_keepers *$full_sys_nios2_qsys_0_oci_debug_path|*resetlatch]     -to [get_keepers *$full_sys_nios2_qsys_0_jtag_sr[33]]
set_false_path -from [get_keepers *$full_sys_nios2_qsys_0_oci_debug_path|monitor_ready]  -to [get_keepers *$full_sys_nios2_qsys_0_jtag_sr[0]]
set_false_path -from [get_keepers *$full_sys_nios2_qsys_0_oci_debug_path|monitor_error]  -to [get_keepers *$full_sys_nios2_qsys_0_jtag_sr[34]]
set_false_path -from [get_keepers *$full_sys_nios2_qsys_0_ocimem_path|*MonDReg*] -to [get_keepers *$full_sys_nios2_qsys_0_jtag_sr*]
set_false_path -from *$full_sys_nios2_qsys_0_jtag_sr*    -to *$full_sys_nios2_qsys_0_jtag_sysclk_path|*jdo*
set_false_path -from sld_hub:*|irf_reg* -to *$full_sys_nios2_qsys_0_jtag_sysclk_path|ir*
set_false_path -from sld_hub:*|sld_shadow_jsm:shadow_jsm|state[1] -to *$full_sys_nios2_qsys_0_oci_debug_path|monitor_go
set_false_path -from [get_keepers *$full_sys_nios2_qsys_0_oci_break_path|dbrk_hit?_latch] -to [get_keepers *$full_sys_nios2_qsys_0_jtag_sr*]
set_false_path -from [get_keepers *$full_sys_nios2_qsys_0_oci_break_path|trigbrktype] -to [get_keepers *$full_sys_nios2_qsys_0_jtag_sr*]
set_false_path -from [get_keepers *$full_sys_nios2_qsys_0_oci_break_path|trigger_state] -to [get_keepers *$full_sys_nios2_qsys_0_jtag_sr*]
