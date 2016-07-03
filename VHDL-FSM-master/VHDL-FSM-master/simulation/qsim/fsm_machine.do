onerror {exit -code 1}
vlib work
vlog -work work fsm_machine.vo
vlog -work work Waveform6.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.diplay_tester_vlg_vec_tst -voptargs="+acc"
vcd file -direction fsm_machine.msim.vcd
vcd add -internal diplay_tester_vlg_vec_tst/*
vcd add -internal diplay_tester_vlg_vec_tst/i1/*
run -all
quit -f
