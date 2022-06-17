module controlunit #(parameter N=32)(
	input logic clk,//creo 
	input logic reset,
	output logic [2:0] a0,a1,
	output logic [N-1:0] d0,d1,
	output logic [2:0] operacion,
	output logic we
);
	logic [N-1:0]aux,aux2;
	logic [2:0]adr;
	logic [3*N+2:0]entrada;
	counter_c counter(clk,reset,adr);
	memprog #(N) mem(adr, entrada);
	
	logic [N-1:0]operacion_realizar;
	assign operacion_realizar = entrada [3*N+2:3*N];
	always_comb
	begin 
		aux = entrada[3*N-1:2*N];
		a0 = aux[2:0];				//contiene el registro
		d0 = entrada[2*N-1:N];	//contiene el numero que se va a realizar para el registro
		aux2= entrada[N-1:0];		//contiene la segunda direccion de memmoria
		a1 = aux2[2:0];
		d0 = 0;
	end
	
	assign we = ~(operacion_realizar == 3'b0);
		//terminando eso se manda a llamar el regfile mandando las salidas 
endmodule
	