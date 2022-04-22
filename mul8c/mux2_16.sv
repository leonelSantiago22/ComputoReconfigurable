module mux2_16(input logic [15:0] d0,d1,
				input logic s,
				output logic [15:0] y);
		assign y = s ? d0 : d1;
endmodule 