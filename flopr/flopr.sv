//Resgistros reseteables asincronos 
module flopr(	input logic clk,
					input logic reset,
					input logic [3:0] d,
					output logic [3:0] q);
			always_ff@(posedge clk)
			if(reset)
				q <= 4'b1;		//los ponemos los valores z ni como 0 ni como x en este caso los colocamos como  1
 			else
				q <=d;
endmodule 
//Reset sincrono