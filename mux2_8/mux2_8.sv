//Mux 2:1 de * bist usando mux 2:1 de 4 bits 
module mux2_8(	input logic [7:0] d0,d1,
					input logic s,
					output logic [7:0] y);
			mux2 lsbmux(d0[3:0], d1[3:0],s, y[3:0]); //low significative bit
			mux2 msbmux(d0[7:4], d1[7:4],s, y[7:4]);	//most significative bit
endmodule
