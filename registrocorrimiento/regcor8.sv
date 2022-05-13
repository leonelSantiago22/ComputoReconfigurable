module regcor8(input logic clk,
					input logic reset,
					input logic [3:0]value,
					input logic load,
					output logic [7:0] op);
					logic clkn;
					
				divclkn high_clk(clk, reset, clkn);
				
				always_ff@(posedge clkn) begin
					if(~reset) begin
						op<=8'b0;
					end else begin
						if(~load) begin
							op<={4'b0,value};
						end else begin
							op[0] <= op[7];
							op[1] <= op[0];
							op[2] <= op[1];
							op[3] <= op[2];
							op[4] <= op[3];
							op[5] <= op[4];
							op[6] <= op[5];
							op[7] <= op[6];
						end
					end
				end
endmodule
