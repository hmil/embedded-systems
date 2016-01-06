onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_lcd/clk
add wave -noupdate /tb_lcd/reset_n
add wave -noupdate /tb_lcd/sim_finished
add wave -noupdate /tb_lcd/addr
add wave -noupdate /tb_lcd/read
add wave -noupdate /tb_lcd/write
add wave -noupdate /tb_lcd/wrdata
add wave -noupdate /tb_lcd/lcd_data
add wave -noupdate /tb_lcd/lcd_dc
add wave -noupdate /tb_lcd/lcd_rd
add wave -noupdate /tb_lcd/lcd_wr
add wave -noupdate /tb_lcd/as_wait_request
add wave -noupdate /tb_lcd/lcd_reset_n
add wave -noupdate /tb_lcd/ext_IRQ
add wave -noupdate /tb_lcd/bus_waitReq
add wave -noupdate /tb_lcd/bus_read_data_valid
add wave -noupdate /tb_lcd/bus_read_data
add wave -noupdate /tb_lcd/nb_clk
add wave -noupdate -divider Controller
add wave -noupdate -divider Slave
add wave -noupdate -divider Master
add wave -noupdate -divider FIFO
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {12499436 ps} {12500030 ps}
