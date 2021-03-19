module adder(   input logic [14:0] A, B, 
                output logic [15:0] OUT );

    assign OUT = A + B;

endmodule: adder
