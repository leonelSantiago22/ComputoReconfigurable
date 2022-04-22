module tristate(	input logic [3:0] a,
						input logic s,
						output logic [3:0]y);
			assign y = s ? a : 4'bz; 
endmodule						