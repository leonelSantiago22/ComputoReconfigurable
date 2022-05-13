module historyFSM(
		input logic clk,
		input logic reset,
		input logic a,
		output logic x,y
);
		typedef enum logic [2:0] {S0, S1, S2, S3, S4} statetype; 
		statetype state, nextstate; //declaracion de los estados
		
		//Registro de estados 
			always_ff@(posedge clk)
				if(reset) 
						state <= S0;
				else 
						state <= nextstate;
			always_comb 
				case(state)
					S0: 	if(a) 
								nextstate = S3;
							else	
								nextstate = S1;
					S1: 	if(a) 
								nextstate = S3;
							else
								nextstate = S2;
					S2:	if(a) 
								nextstate = S3;
							else 
								nextstate = S2;
					S3:	if(a) 
								nextstate = S4;
							else
								nextstate = S1;
					S4:	if(a)
								nextstate = S4;
							else	
								nextstate = S1;
					default:	nextstate = S0;
				endcase
			assign x = ((state== S1|state == S2)&~a) | ((state==S3 | state==S4)&a);
			assign y = (state==S2 & ~a )  | (state==S4 &a);
		
endmodule
