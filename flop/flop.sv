module flop (	input logic clk,
					input logic [3:0] d,
					output logic [3:0] q);
			always_ff @(negedge clk) //Always flip flop el arroba y la lista de paramatros 
			//posdege para el flanco de subida y negedge para el flanco de bajada
			//Activacion del registro atravez de la senal de reloj 
				q<= d; //Asignacion no bloqueante
endmodule 