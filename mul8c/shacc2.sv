module shacc( 	input logic [15:0] in_sh1, in_sh2, in_acc,
					output logic [15:0] out_sh1, out_sh2, put_acc);
					
					assign out_sh1 = {in_sh1[14:0], 1'b0};
					assign out_sh2 = {1'b0, in_sh2[15:1]};
					assign out_acc = in_sh2[0] ? in_acc + in_sh1 : in_acc ; // es la operacion mas lenta 
endmodule 
//Cada asignacion continua se hace en paralelo 
//las complejidades de la concatenacion no es tan grande 
//