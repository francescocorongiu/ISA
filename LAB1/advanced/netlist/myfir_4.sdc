###################################################################

# Created by write_sdc on Sun Nov  8 23:05:50 2020

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_load -pin_load 3.40189 [get_ports {DOUT_3k[8]}]
set_load -pin_load 3.40189 [get_ports {DOUT_3k[7]}]
set_load -pin_load 3.40189 [get_ports {DOUT_3k[6]}]
set_load -pin_load 3.40189 [get_ports {DOUT_3k[5]}]
set_load -pin_load 3.40189 [get_ports {DOUT_3k[4]}]
set_load -pin_load 3.40189 [get_ports {DOUT_3k[3]}]
set_load -pin_load 3.40189 [get_ports {DOUT_3k[2]}]
set_load -pin_load 3.40189 [get_ports {DOUT_3k[1]}]
set_load -pin_load 3.40189 [get_ports {DOUT_3k[0]}]
set_load -pin_load 3.40189 [get_ports {DOUT_3k1[8]}]
set_load -pin_load 3.40189 [get_ports {DOUT_3k1[7]}]
set_load -pin_load 3.40189 [get_ports {DOUT_3k1[6]}]
set_load -pin_load 3.40189 [get_ports {DOUT_3k1[5]}]
set_load -pin_load 3.40189 [get_ports {DOUT_3k1[4]}]
set_load -pin_load 3.40189 [get_ports {DOUT_3k1[3]}]
set_load -pin_load 3.40189 [get_ports {DOUT_3k1[2]}]
set_load -pin_load 3.40189 [get_ports {DOUT_3k1[1]}]
set_load -pin_load 3.40189 [get_ports {DOUT_3k1[0]}]
set_load -pin_load 3.40189 [get_ports {DOUT_3k2[8]}]
set_load -pin_load 3.40189 [get_ports {DOUT_3k2[7]}]
set_load -pin_load 3.40189 [get_ports {DOUT_3k2[6]}]
set_load -pin_load 3.40189 [get_ports {DOUT_3k2[5]}]
set_load -pin_load 3.40189 [get_ports {DOUT_3k2[4]}]
set_load -pin_load 3.40189 [get_ports {DOUT_3k2[3]}]
set_load -pin_load 3.40189 [get_ports {DOUT_3k2[2]}]
set_load -pin_load 3.40189 [get_ports {DOUT_3k2[1]}]
set_load -pin_load 3.40189 [get_ports {DOUT_3k2[0]}]
set_load -pin_load 3.40189 [get_ports VOUT]
create_clock [get_ports CLK]  -name clk1  -period 4.4  -waveform {0 2.2}
set_clock_uncertainty 0.07  [get_clocks clk1]
set_max_delay 4.4  -from [list [get_ports CLK] [get_ports RST_n] [get_ports VIN] [get_ports      \
{DIN_3k[8]}] [get_ports {DIN_3k[7]}] [get_ports {DIN_3k[6]}] [get_ports        \
{DIN_3k[5]}] [get_ports {DIN_3k[4]}] [get_ports {DIN_3k[3]}] [get_ports        \
{DIN_3k[2]}] [get_ports {DIN_3k[1]}] [get_ports {DIN_3k[0]}] [get_ports        \
{DIN_3k1[8]}] [get_ports {DIN_3k1[7]}] [get_ports {DIN_3k1[6]}] [get_ports     \
{DIN_3k1[5]}] [get_ports {DIN_3k1[4]}] [get_ports {DIN_3k1[3]}] [get_ports     \
{DIN_3k1[2]}] [get_ports {DIN_3k1[1]}] [get_ports {DIN_3k1[0]}] [get_ports     \
{DIN_3k2[8]}] [get_ports {DIN_3k2[7]}] [get_ports {DIN_3k2[6]}] [get_ports     \
{DIN_3k2[5]}] [get_ports {DIN_3k2[4]}] [get_ports {DIN_3k2[3]}] [get_ports     \
{DIN_3k2[2]}] [get_ports {DIN_3k2[1]}] [get_ports {DIN_3k2[0]}] [get_ports     \
{b0[8]}] [get_ports {b0[7]}] [get_ports {b0[6]}] [get_ports {b0[5]}]           \
[get_ports {b0[4]}] [get_ports {b0[3]}] [get_ports {b0[2]}] [get_ports         \
{b0[1]}] [get_ports {b0[0]}] [get_ports {b1[8]}] [get_ports {b1[7]}]           \
[get_ports {b1[6]}] [get_ports {b1[5]}] [get_ports {b1[4]}] [get_ports         \
{b1[3]}] [get_ports {b1[2]}] [get_ports {b1[1]}] [get_ports {b1[0]}]           \
[get_ports {b2[8]}] [get_ports {b2[7]}] [get_ports {b2[6]}] [get_ports         \
{b2[5]}] [get_ports {b2[4]}] [get_ports {b2[3]}] [get_ports {b2[2]}]           \
[get_ports {b2[1]}] [get_ports {b2[0]}] [get_ports {b3[8]}] [get_ports         \
{b3[7]}] [get_ports {b3[6]}] [get_ports {b3[5]}] [get_ports {b3[4]}]           \
[get_ports {b3[3]}] [get_ports {b3[2]}] [get_ports {b3[1]}] [get_ports         \
{b3[0]}] [get_ports {b4[8]}] [get_ports {b4[7]}] [get_ports {b4[6]}]           \
[get_ports {b4[5]}] [get_ports {b4[4]}] [get_ports {b4[3]}] [get_ports         \
{b4[2]}] [get_ports {b4[1]}] [get_ports {b4[0]}]]  -to [list [get_ports {DOUT_3k[8]}] [get_ports {DOUT_3k[7]}] [get_ports        \
{DOUT_3k[6]}] [get_ports {DOUT_3k[5]}] [get_ports {DOUT_3k[4]}] [get_ports     \
{DOUT_3k[3]}] [get_ports {DOUT_3k[2]}] [get_ports {DOUT_3k[1]}] [get_ports     \
{DOUT_3k[0]}] [get_ports {DOUT_3k1[8]}] [get_ports {DOUT_3k1[7]}] [get_ports   \
{DOUT_3k1[6]}] [get_ports {DOUT_3k1[5]}] [get_ports {DOUT_3k1[4]}] [get_ports  \
{DOUT_3k1[3]}] [get_ports {DOUT_3k1[2]}] [get_ports {DOUT_3k1[1]}] [get_ports  \
{DOUT_3k1[0]}] [get_ports {DOUT_3k2[8]}] [get_ports {DOUT_3k2[7]}] [get_ports  \
{DOUT_3k2[6]}] [get_ports {DOUT_3k2[5]}] [get_ports {DOUT_3k2[4]}] [get_ports  \
{DOUT_3k2[3]}] [get_ports {DOUT_3k2[2]}] [get_ports {DOUT_3k2[1]}] [get_ports  \
{DOUT_3k2[0]}] [get_ports VOUT]]
set_input_delay -clock clk1  -max 0.5  [get_ports RST_n]
set_input_delay -clock clk1  -max 0.5  [get_ports VIN]
set_input_delay -clock clk1  -max 0.5  [get_ports {DIN_3k[8]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {DIN_3k[7]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {DIN_3k[6]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {DIN_3k[5]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {DIN_3k[4]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {DIN_3k[3]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {DIN_3k[2]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {DIN_3k[1]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {DIN_3k[0]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {DIN_3k1[8]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {DIN_3k1[7]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {DIN_3k1[6]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {DIN_3k1[5]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {DIN_3k1[4]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {DIN_3k1[3]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {DIN_3k1[2]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {DIN_3k1[1]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {DIN_3k1[0]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {DIN_3k2[8]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {DIN_3k2[7]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {DIN_3k2[6]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {DIN_3k2[5]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {DIN_3k2[4]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {DIN_3k2[3]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {DIN_3k2[2]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {DIN_3k2[1]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {DIN_3k2[0]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b0[8]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b0[7]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b0[6]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b0[5]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b0[4]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b0[3]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b0[2]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b0[1]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b0[0]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b1[8]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b1[7]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b1[6]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b1[5]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b1[4]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b1[3]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b1[2]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b1[1]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b1[0]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b2[8]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b2[7]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b2[6]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b2[5]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b2[4]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b2[3]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b2[2]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b2[1]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b2[0]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b3[8]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b3[7]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b3[6]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b3[5]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b3[4]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b3[3]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b3[2]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b3[1]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b3[0]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b4[8]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b4[7]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b4[6]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b4[5]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b4[4]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b4[3]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b4[2]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b4[1]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {b4[0]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {DOUT_3k[8]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {DOUT_3k[7]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {DOUT_3k[6]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {DOUT_3k[5]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {DOUT_3k[4]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {DOUT_3k[3]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {DOUT_3k[2]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {DOUT_3k[1]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {DOUT_3k[0]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {DOUT_3k1[8]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {DOUT_3k1[7]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {DOUT_3k1[6]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {DOUT_3k1[5]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {DOUT_3k1[4]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {DOUT_3k1[3]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {DOUT_3k1[2]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {DOUT_3k1[1]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {DOUT_3k1[0]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {DOUT_3k2[8]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {DOUT_3k2[7]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {DOUT_3k2[6]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {DOUT_3k2[5]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {DOUT_3k2[4]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {DOUT_3k2[3]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {DOUT_3k2[2]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {DOUT_3k2[1]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {DOUT_3k2[0]}]
set_output_delay -clock clk1  -max 0.5  [get_ports VOUT]
