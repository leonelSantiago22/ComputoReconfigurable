module shifreg(input logic clk,
					input logic reset, load,
					input logic sin,
					input logic [3:0] d,
					output logic [3:0] q,
					output logic sout);
				always_ff @(posedge clk)
					if(reset)	q<=0;
					else if (load) q <=d;
					else q<= {q[2:0], sin};
				assign sout = q [3];
endmodule
