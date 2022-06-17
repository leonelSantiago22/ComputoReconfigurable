module regfile #(parameter N=32)
(	input logic clk, we,
	input logic [2:0] a1,a2,
	input logic [N-1:0] d1,d2,
	output logic [N-1:0] q1,q2);
	
	logic [2:0] mem[2**N-1:0];
	
	always_ff @(posedge clk)
		if(we)
			begin 
				mem[a1]<=d1;		//asignacion de d1 en la posicion de memoria a1
				mem[a2]<=d2;
			end
	assign	q1=mem[a1];
	assign	q2=mem[a2];
	
endmodule
