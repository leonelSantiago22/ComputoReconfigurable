module divideby3FSM(	input logic clk,
							input logic reset,
							output logic y);
					logic [1:0] state, nextstate;
					//Resgistro de estados 
				always_ff @(posedge clk)
					if(reset) state<=2'b00;
					else state <=nextstate;
				//nextstate logica 
				always_comb
					case(state)
						2'b00: nextstate = 2'b01;
						2'b01: nextstate = 2'b10;
						2'b10: nextstate = 2'b00;
						default: nextstate = 2'b00;
					endcase
				//output logic 
			assign y = (state == 2'b00);
endmodule
