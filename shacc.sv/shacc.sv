module shacc(	input logic [15:0] in_acc, //Se puede solo separar por comas 
					input logic [15:0] in_sh1,
					input logic [15:0] in_sh2,
					output logic [15:0] out_acc,
					output logic [15:0] out_sh1,
					output logic [15:0] out_sh2 );
			mux2_16  M(in_acc + in_sh1, in_acc, in_sh2[0], out_acc); //El multiplexor es de 4 bits
			assign out_sh1 = {in_sh1[14:0], 1'b0};		//Multiplicacion con shifter
			assign out_sh2 = {1'b0, in_sh2[15:1]};		//
endmodule
