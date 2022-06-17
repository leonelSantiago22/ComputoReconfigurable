module alu #(parameter N=8)(
	input logic [N-1:0] operador1, operador2,
	input logic [2:0] AluOp,
	output logic zero, 
	output logic [N-1:0] ALURESULT);
	logic [N-1:0] result;
	always_comb
		case(AluOp)
			3'd0: result = operador1 + operador2;
			3'd1: result = operador1 & operador2;
			3'd2:	result = operador1  | operador2;
			default:	result = {N{1'b0}};	//zero
		endcase
		
	assign zero = result == {N{1'b0}};
	assign ALURESULT = result;
endmodule
