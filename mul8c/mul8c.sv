module mul8c(	input logic [7:0] a,b, //Declaramos los valores de entrada 
					output logic [15:0] y);	//Valores de salida
	logic [15:0] acco,acc1,acc2,acc3,acc4,acc5,acc6,acc7,acc8;	//acumuladorcero
	logic [15:0] sh1_0,sh1_1,sh1_2,sh1_3,sh1_4,sh1_5,sh1_6,sh1_7;	//primer shifter
	logic [15:0] sh2_0,sh2_1,sh2_2,sh2_3,sh2_4,sh2_5,sh2_6,sh2_7;
	assign acc0 = 16'b0;
	///asigna a acc0 = 16 bits con 0 
	assign sh1_0 = {8'b0,a}; 	//necesitamos a con 16 bits pero es de 8 asi que llenamos los otros 8 con 0 y los concatenamos 
	assign sh2_0 = {8'b0,b};	//Segunda entrada
//	proyecto anterios, nuevo nombre,3 entradas			
	shacc x0(acc0,sh1_0,sh2_0,acc1,sh1_1,sh2_1); //Cada acumulador las salidas deben
	shacc x1(acc1,sh1_1,sh2_1,acc2,sh1_2,sh2_2);	//Estar conectadas con las entradas
	shacc x2(acc2,sh1_2,sh2_2,acc3,sh1_3,sh2_3);	//de la siguiente suma 
	shacc x3(acc3,sh1_3,sh2_3,acc4,sh1_4,sh2_4);	//
	shacc x4(acc4,sh1_4,sh2_4,acc5,sh1_5,sh2_5);
	shacc x5(acc5,sh1_5,sh2_5,acc6,sh1_6,sh2_6);
	shacc x6(acc6,sh1_6,sh2_6,acc7,sh1_7,sh2_7);	
	shacc x7(acc7,sh1_7,sh2_7,y,,);				//
endmodule
