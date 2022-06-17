module memprog #(parameter N=8)
(
			//input logic clk,
			input logic [2:0] adr,
			output logic [3*N+2:0] dout
);

always_comb
		case(adr)
			//son los casos que controla la memoria
				//donde lo primero indica la 
							//operacion   destino         origin            origin2 
						//mov reg0,5
			3'b000:	dout = {3'b0,{{N-3{1'b0}},3'b0},{{N-3{1'b0}},3'b101},{N{1'b0}}};						//mov reg1,7
			3'b001:  dout = {3'b0,{{N-3{1'b0}},3'b1},{{N-3{1'b0}},3'b111},{N{1'b0}}};
						//suma lo que tienes en el registro 0 y en el registro 1 
						//coloca la suma en el registro2 
			3'b010:  dout = {3'b10,{{N-3{1'b0}},3'b10},{{N-3{1'b0}},3'b0},{{N-3{1'b0}},3'b1}};
			default dout = {N{1'b0}};
		endcase
endmodule
