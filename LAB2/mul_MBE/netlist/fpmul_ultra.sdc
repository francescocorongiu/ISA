###################################################################

# Created by write_sdc on Fri Nov 20 00:23:21 2020

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_load -pin_load 3.40189 [get_ports {FP_Z[31]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[30]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[29]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[28]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[27]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[26]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[25]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[24]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[23]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[22]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[21]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[20]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[19]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[18]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[17]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[16]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[15]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[14]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[13]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[12]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[11]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[10]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[9]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[8]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[7]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[6]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[5]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[4]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[3]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[2]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[1]}]
set_load -pin_load 3.40189 [get_ports {FP_Z[0]}]
create_clock [get_ports clk]  -name clk1  -period 0.8  -waveform {0 0.4}
set_clock_uncertainty 0.07  [get_clocks clk1]
set_max_delay 0.8  -from [list [get_ports {FP_A[31]}] [get_ports {FP_A[30]}] [get_ports          \
{FP_A[29]}] [get_ports {FP_A[28]}] [get_ports {FP_A[27]}] [get_ports           \
{FP_A[26]}] [get_ports {FP_A[25]}] [get_ports {FP_A[24]}] [get_ports           \
{FP_A[23]}] [get_ports {FP_A[22]}] [get_ports {FP_A[21]}] [get_ports           \
{FP_A[20]}] [get_ports {FP_A[19]}] [get_ports {FP_A[18]}] [get_ports           \
{FP_A[17]}] [get_ports {FP_A[16]}] [get_ports {FP_A[15]}] [get_ports           \
{FP_A[14]}] [get_ports {FP_A[13]}] [get_ports {FP_A[12]}] [get_ports           \
{FP_A[11]}] [get_ports {FP_A[10]}] [get_ports {FP_A[9]}] [get_ports {FP_A[8]}] \
[get_ports {FP_A[7]}] [get_ports {FP_A[6]}] [get_ports {FP_A[5]}] [get_ports   \
{FP_A[4]}] [get_ports {FP_A[3]}] [get_ports {FP_A[2]}] [get_ports {FP_A[1]}]   \
[get_ports {FP_A[0]}] [get_ports {FP_B[31]}] [get_ports {FP_B[30]}] [get_ports \
{FP_B[29]}] [get_ports {FP_B[28]}] [get_ports {FP_B[27]}] [get_ports           \
{FP_B[26]}] [get_ports {FP_B[25]}] [get_ports {FP_B[24]}] [get_ports           \
{FP_B[23]}] [get_ports {FP_B[22]}] [get_ports {FP_B[21]}] [get_ports           \
{FP_B[20]}] [get_ports {FP_B[19]}] [get_ports {FP_B[18]}] [get_ports           \
{FP_B[17]}] [get_ports {FP_B[16]}] [get_ports {FP_B[15]}] [get_ports           \
{FP_B[14]}] [get_ports {FP_B[13]}] [get_ports {FP_B[12]}] [get_ports           \
{FP_B[11]}] [get_ports {FP_B[10]}] [get_ports {FP_B[9]}] [get_ports {FP_B[8]}] \
[get_ports {FP_B[7]}] [get_ports {FP_B[6]}] [get_ports {FP_B[5]}] [get_ports   \
{FP_B[4]}] [get_ports {FP_B[3]}] [get_ports {FP_B[2]}] [get_ports {FP_B[1]}]   \
[get_ports {FP_B[0]}] [get_ports clk]]  -to [list [get_ports {FP_Z[31]}] [get_ports {FP_Z[30]}] [get_ports            \
{FP_Z[29]}] [get_ports {FP_Z[28]}] [get_ports {FP_Z[27]}] [get_ports           \
{FP_Z[26]}] [get_ports {FP_Z[25]}] [get_ports {FP_Z[24]}] [get_ports           \
{FP_Z[23]}] [get_ports {FP_Z[22]}] [get_ports {FP_Z[21]}] [get_ports           \
{FP_Z[20]}] [get_ports {FP_Z[19]}] [get_ports {FP_Z[18]}] [get_ports           \
{FP_Z[17]}] [get_ports {FP_Z[16]}] [get_ports {FP_Z[15]}] [get_ports           \
{FP_Z[14]}] [get_ports {FP_Z[13]}] [get_ports {FP_Z[12]}] [get_ports           \
{FP_Z[11]}] [get_ports {FP_Z[10]}] [get_ports {FP_Z[9]}] [get_ports {FP_Z[8]}] \
[get_ports {FP_Z[7]}] [get_ports {FP_Z[6]}] [get_ports {FP_Z[5]}] [get_ports   \
{FP_Z[4]}] [get_ports {FP_Z[3]}] [get_ports {FP_Z[2]}] [get_ports {FP_Z[1]}]   \
[get_ports {FP_Z[0]}]]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[31]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[30]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[29]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[28]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[27]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[26]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[25]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[24]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[23]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[22]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[21]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[20]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[19]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[18]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[17]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[16]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[15]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[14]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[13]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[12]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[11]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[10]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[9]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[8]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[7]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[6]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[5]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[4]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[3]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[2]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[1]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_A[0]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[31]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[30]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[29]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[28]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[27]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[26]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[25]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[24]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[23]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[22]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[21]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[20]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[19]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[18]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[17]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[16]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[15]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[14]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[13]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[12]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[11]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[10]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[9]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[8]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[7]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[6]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[5]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[4]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[3]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[2]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[1]}]
set_input_delay -clock clk1  -max 0.5  [get_ports {FP_B[0]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[31]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[30]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[29]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[28]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[27]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[26]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[25]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[24]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[23]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[22]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[21]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[20]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[19]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[18]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[17]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[16]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[15]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[14]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[13]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[12]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[11]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[10]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[9]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[8]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[7]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[6]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[5]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[4]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[3]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[2]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[1]}]
set_output_delay -clock clk1  -max 0.5  [get_ports {FP_Z[0]}]
