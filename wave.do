onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/a
add wave -noupdate /testbench/b
add wave -noupdate /testbench/bin
add wave -noupdate /testbench/bout
add wave -noupdate /testbench/d
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {77 ps} 0}
quietly wave cursor active 1
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
WaveRestoreZoom {22 ps} {83 ps}
