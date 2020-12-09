module tb_fpmul ();

   wire CLK_i;
   wire [31:0] FP_IN_i;
   wire [31:0] FP_OUT_i;

   clk_gen CG(.CLK(CLK_i));

   data_maker SM(.CLK(CLK_i),
				 .DATA(FP_IN_i));
		
   FPmul FM(.FP_A(FP_IN_i),
			.FP_B(FP_IN_i),
			.clk(CLK_i),
			.FP_Z(FP_OUT_i));
	
   data_sink DS(.CLK(CLK_i),
				.DIN(FP_OUT_i));   

endmodule