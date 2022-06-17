module counter_c(	input logic clk,
						input logic reset,
						output logic [2:0] q);
					always_ff@(posedge clk)
						if (~reset)
							q<=4'b0;
						else
							q <= q + 1;
endmodule 
//Contador comportamental 
