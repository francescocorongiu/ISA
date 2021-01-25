onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /tb_rv32i/u1/clk
add wave -noupdate -format Logic /tb_rv32i/u1/rst
add wave -noupdate -divider <NULL>
add wave -noupdate -format Logic /tb_rv32i/u1/ir_latch_en_i
add wave -noupdate -format Logic /tb_rv32i/u1/pc_wr_en_i
add wave -noupdate -format Logic /tb_rv32i/u1/pc_if_latch_en_i
add wave -noupdate -format Literal -radix hexadecimal /tb_rv32i/u1/iram_add
add wave -noupdate -format Literal -radix binary /tb_rv32i/u1/iram_dout
add wave -noupdate -divider <NULL>
add wave -noupdate -group npc_sel -format Logic /tb_rv32i/u1/npc_sel_i_0_port
add wave -noupdate -group npc_sel -format Logic /tb_rv32i/u1/npc_sel_i_1_port
add wave -noupdate -format Logic /tb_rv32i/u1/jump_sel_i
add wave -noupdate -format Logic /tb_rv32i/u1/pc_id_latch_en_i
add wave -noupdate -group imm_type -format Logic /tb_rv32i/u1/imm_type_i_0_port
add wave -noupdate -group imm_type -format Logic /tb_rv32i/u1/imm_type_i_1_port
add wave -noupdate -format Logic /tb_rv32i/u1/rf_rd1_en
add wave -noupdate -format Logic /tb_rv32i/u1/rf_rd2_en
add wave -noupdate -format Literal -radix unsigned /tb_rv32i/u1/rf_rd1_add
add wave -noupdate -format Literal -radix unsigned /tb_rv32i/u1/rf_rd2_add
add wave -noupdate -format Literal -radix hexadecimal /tb_rv32i/u1/rf_rd1_data
add wave -noupdate -format Literal -radix hexadecimal /tb_rv32i/u1/rf_rd2_data
add wave -noupdate -divider <NULL>
add wave -noupdate -group alu_opcode -format Logic /tb_rv32i/u1/alu_opcode_i_0_port
add wave -noupdate -group alu_opcode -format Logic /tb_rv32i/u1/alu_opcode_i_1_port
add wave -noupdate -group alu_opcode -format Logic /tb_rv32i/u1/alu_opcode_i_2_port
add wave -noupdate -format Logic /tb_rv32i/u1/br_flag_i
add wave -noupdate -format Logic /tb_rv32i/u1/pc_sel_i
add wave -noupdate -format Logic /tb_rv32i/u1/imm_sel_i
add wave -noupdate -format Logic /tb_rv32i/u1/branch_en_i
add wave -noupdate -divider <NULL>
add wave -noupdate -format Logic /tb_rv32i/u1/wb_mux_sel_mem_i
add wave -noupdate -format Logic /tb_rv32i/u1/rf_we_mem_i
add wave -noupdate -format Logic /tb_rv32i/u1/dram_we
add wave -noupdate -format Logic /tb_rv32i/u1/dram_re
add wave -noupdate -format Literal -radix hexadecimal /tb_rv32i/u1/dram_add
add wave -noupdate -format Literal -radix hexadecimal /tb_rv32i/u1/dram_din
add wave -noupdate -format Literal -radix hexadecimal /tb_rv32i/u1/dram_dout
add wave -noupdate -divider <NULL>
add wave -noupdate -format Logic /tb_rv32i/u1/rf_wr_en
add wave -noupdate -format Literal -radix unsigned /tb_rv32i/u1/rf_wr_add
add wave -noupdate -format Literal -radix hexadecimal /tb_rv32i/u1/rf_wr_data
add wave -noupdate -format Logic /tb_rv32i/u1/rf_wr_en_port
add wave -noupdate -format Logic /tb_rv32i/u1/wb_mux_sel_i
add wave -noupdate -format Literal -radix decimal -expand /tb_rv32i/rf1/registers
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 2} {440 ns} 0}
configure wave -namecolwidth 350
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {1575 ns}
