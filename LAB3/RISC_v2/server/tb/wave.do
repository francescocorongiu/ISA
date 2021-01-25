onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_rv32i/U1/Clk
add wave -noupdate /tb_rv32i/U1/Rst
add wave -noupdate -divider CU
add wave -noupdate /tb_rv32i/U1/CU_I/IR_opcode
add wave -noupdate /tb_rv32i/U1/CU_I/IR_func3
add wave -noupdate /tb_rv32i/U1/CU_I/state_var
add wave -noupdate -divider IF
add wave -noupdate -label IF/PC -radix hexadecimal /tb_rv32i/U1/DATAPATH_I/First_st/PC
add wave -noupdate -label {IRam_DOut (Instr)} -radix hexadecimal /tb_rv32i/U1/IRAM_DOUT
add wave -noupdate /tb_rv32i/U1/PC_IF_LATCH_EN_i
add wave -noupdate /tb_rv32i/U1/IR_LATCH_EN_i
add wave -noupdate /tb_rv32i/U1/PC_WR_EN_i
add wave -noupdate -divider IF/ID
add wave -noupdate -radix hexadecimal /tb_rv32i/U1/DATAPATH_I/Second_st/PC_in
add wave -noupdate -radix hexadecimal /tb_rv32i/U1/DATAPATH_I/Second_st/jump_target
add wave -noupdate -radix hexadecimal /tb_rv32i/U1/DATAPATH_I/Second_st/jump_offset
add wave -noupdate -radix hexadecimal /tb_rv32i/U1/DATAPATH_I/Second_st/BR_offset
add wave -noupdate /tb_rv32i/U1/JUMP_SEL_i
add wave -noupdate /tb_rv32i/U1/NPC_SEL_i
add wave -noupdate -radix hexadecimal /tb_rv32i/U1/DATAPATH_I/Second_st/NPC_out
add wave -noupdate /tb_rv32i/U1/PC_ID_LATCH_EN_i
add wave -noupdate /tb_rv32i/U1/IMM_TYPE_i
add wave -noupdate -radix decimal /tb_rv32i/U1/DATAPATH_I/Second_st/imm_extended
add wave -noupdate -radix unsigned /tb_rv32i/U1/DATAPATH_I/Second_st/RF_ADD_RD1
add wave -noupdate -radix unsigned /tb_rv32i/U1/DATAPATH_I/Second_st/RF_ADD_RD2
add wave -noupdate -divider ID/EXE
add wave -noupdate /tb_rv32i/U1/PC_SEL_i
add wave -noupdate /tb_rv32i/U1/IMM_SEL_i
add wave -noupdate -radix hexadecimal /tb_rv32i/U1/DATAPATH_I/Second_st/PC_out
add wave -noupdate -radix decimal /tb_rv32i/U1/DATAPATH_I/Second_st/IMM_out
add wave -noupdate /tb_rv32i/U1/DATAPATH_I/Third_st/MUX_A_SEL
add wave -noupdate /tb_rv32i/U1/DATAPATH_I/Third_st/MUX_B_SEL
add wave -noupdate /tb_rv32i/U1/ALU_OPCODE_i
add wave -noupdate -radix decimal /tb_rv32i/U1/DATAPATH_I/Third_st/ALU_IN1
add wave -noupdate -radix decimal /tb_rv32i/U1/DATAPATH_I/Third_st/ALU_IN2
add wave -noupdate -radix decimal /tb_rv32i/U1/DATAPATH_I/Third_st/ALU_out_i
add wave -noupdate /tb_rv32i/U1/BRANCH_EN_i
add wave -noupdate /tb_rv32i/U1/DATAPATH_I/Third_st/ZERO_flag
add wave -noupdate /tb_rv32i/U1/BR_FLAG_i
add wave -noupdate -radix hexadecimal /tb_rv32i/U1/DATAPATH_I/Second_st/BR_target
add wave -noupdate -radix decimal /tb_rv32i/U1/DATAPATH_I/Third_st/B_FORWARD_out
add wave -noupdate -divider EXE/MEM
add wave -noupdate -radix decimal /tb_rv32i/U1/DATAPATH_I/Third_st/ALU_out
add wave -noupdate -radix hexadecimal /tb_rv32i/U1/DRAM_ADD
add wave -noupdate -radix decimal /tb_rv32i/U1/DRAM_DOUT
add wave -noupdate -radix decimal /tb_rv32i/U1/DRAM_DIN
add wave -noupdate -divider MEM/WB
add wave -noupdate /tb_rv32i/U1/WB_MUX_SEL_i
add wave -noupdate /tb_rv32i/U1/RF_WE_i
add wave -noupdate -radix decimal /tb_rv32i/U1/DATAPATH_I/Fifth_st/WB_MUX_out
add wave -noupdate -radix unsigned -childformat {{/tb_rv32i/U1/DATAPATH_I/Second_st/WRADD_d3(4) -radix unsigned} {/tb_rv32i/U1/DATAPATH_I/Second_st/WRADD_d3(3) -radix unsigned} {/tb_rv32i/U1/DATAPATH_I/Second_st/WRADD_d3(2) -radix unsigned} {/tb_rv32i/U1/DATAPATH_I/Second_st/WRADD_d3(1) -radix unsigned} {/tb_rv32i/U1/DATAPATH_I/Second_st/WRADD_d3(0) -radix unsigned}} -subitemconfig {/tb_rv32i/U1/DATAPATH_I/Second_st/WRADD_d3(4) {-height 15 -radix unsigned} /tb_rv32i/U1/DATAPATH_I/Second_st/WRADD_d3(3) {-height 15 -radix unsigned} /tb_rv32i/U1/DATAPATH_I/Second_st/WRADD_d3(2) {-height 15 -radix unsigned} /tb_rv32i/U1/DATAPATH_I/Second_st/WRADD_d3(1) {-height 15 -radix unsigned} /tb_rv32i/U1/DATAPATH_I/Second_st/WRADD_d3(0) {-height 15 -radix unsigned}} /tb_rv32i/U1/DATAPATH_I/Second_st/WRADD_d3
add wave -noupdate /tb_rv32i/RF1/REGISTERS
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {24500 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 303
configure wave -valuecolwidth 61
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
configure wave -timelineunits ns
update
WaveRestoreZoom {93749 ps} {100329 ps}
