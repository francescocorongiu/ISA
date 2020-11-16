//`timescale 1ns

module tb_fir ();

   wire CLK_i;
   wire RST_n_i;
   wire [8:0] DIN_3k_i;
   wire [8:0] DIN_3k1_i;
   wire [8:0] DIN_3k2_i;
   wire VIN_i;
   wire [8:0] H0_i;
   wire [8:0] H1_i;
   wire [8:0] H2_i;
   wire [8:0] H3_i;
   wire [8:0] H4_i;
   wire [8:0] DOUT_3k_i;
   wire [8:0] DOUT_3k1_i;
   wire [8:0] DOUT_3k2_i;
   wire VOUT_i;
   wire END_SIM_i;

   clk_gen CG(.END_SIM(END_SIM_i),
  	      .CLK(CLK_i),
	      .RST_n(RST_n_i));

   data_maker SM(.CLK(CLK_i),
	     .RST_n(RST_n_i),
		 .VOUT(VIN_i),
		 .DOUT_3k(DIN_3k_i),
		 .DOUT_3k1(DIN_3k1_i),
		 .DOUT_3k2(DIN_3k2_i),
		 .H0(H0_i),
		 .H1(H1_i),
		 .H2(H2_i),
		 .H3(H3_i),
		 .H4(H4_i),
		 .END_SIM(END_SIM_i));

   myfir UUT(
		.CLK(CLK_i),
	    .RST_n(RST_n_i),
        .VIN(VIN_i),
	    .DIN_3k(DIN_3k_i),
	    .DIN_3k1(DIN_3k1_i),
	    .DIN_3k2(DIN_3k2_i),
	    .b0(H0_i),
	    .b1(H1_i),
	    .b2(H2_i),
	    .b3(H3_i),
	    .b4(H4_i),
		.DOUT_3k(DOUT_3k_i),
		.DOUT_3k1(DOUT_3k1_i),
		.DOUT_3k2(DOUT_3k2_i),
        .VOUT(VOUT_i)
        );
	
   data_sink DS(
		.CLK(CLK_i),
		.RST_n(RST_n_i),
		.VIN(VOUT_i),
		.DIN_3k(DOUT_3k_i),   
		.DIN_3k1(DOUT_3k1_i),   
		.DIN_3k2(DOUT_3k2_i)
		);
		
endmodule
