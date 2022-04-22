module flopenr(	input logic clk,
						input logic reset,
						input logic en,
						input logic [3:0] d,
						output logic [3:0] q);
			//Sincronizamos el reset 
			always_ff@(posedge clk)
			if(reset)
				q <= 4'b0;
			else if(en)
				q<=d; //Asignasion no bloqueante
endmodule
