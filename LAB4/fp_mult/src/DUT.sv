module DUT(dut_if.port_in in_inter, dut_if.port_out out_inter, output enum logic [1:0] {INITIAL,WAIT,SEND} state);
    
    FPmul mul_under_test(.FP_A(in_inter.A), .FP_B(in_inter.B), .clk(in_inter.clk), .FP_Z(out_inter.data));

    integer count;
    bit [31:0] A_i, B_i;
    shortreal A_r, B_r, Out;

    always_ff @(posedge in_inter.clk)
    begin
        if(in_inter.rst) begin
	    count = 0;
            in_inter.ready <= 0;
            out_inter.data <= 'x;
            out_inter.valid <= 0;
            state <= INITIAL;
        end
        else case(state)
                INITIAL: begin
                    in_inter.ready <= 1;
                    state <= WAIT;
                end
                
                WAIT: begin
                    if(in_inter.valid) begin
                        in_inter.ready <= 0;
                        if(count < 6) begin
			    if(count == 0) begin
				A_i = in_inter.A;
				B_i = in_inter.B;
				A_r = $bitstoshortreal(in_inter.A);
				B_r = $bitstoshortreal(in_inter.B);
			    end
			    count ++;
			end
			else begin
			    Out = $bitstoshortreal(out_inter.data);
			    out_inter.valid <= 1;
                            $display("FPmul: input A = %0.9f, input B = %0.9f, output OUT = %0.9f", A_r, B_r, Out);
                            $display("FPmul: input A = %b, input B = %b, output OUT = %b", A_i, B_i, out_inter.data);
                            state <= SEND;
			end
                    end
                end
                
                SEND: begin
                    if(out_inter.ready) begin
                        out_inter.valid <= 0;
                        in_inter.ready <= 1;
                        state <= WAIT;
			count = 0;
                    end
                end
        endcase
    end
endmodule: DUT
