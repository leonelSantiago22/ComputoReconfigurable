module practica1(	input logic [3:0] a,
						output logic [7:0]b);
				
				assign b = {4'h0, a} + 8'h4f;
endmodule
