module divclkn(input logic clk,input logic reset,output logic clkn);
					
				logic [25:0] count;
			always_ff@(posedge clk)
				if(~reset)
					count <= 25'b0;
				else
					count <= count + 25'b1;
		assign clkn = (count < 25'd25000000) ? 0 : 1;
endmodule 
