module divclk2(
input logic clk,
input logic reset,
output logic clk2);

			always_ff@(posedge clk)
					if(reset)
							clk2 <=1'b0;
					else
							clk2 <= ~clk2;	//El inverso de clk
endmodule

			