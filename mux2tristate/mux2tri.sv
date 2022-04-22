module mux2tri(	input logic [3:0] d0,d1,
						input logic s,
						output tri [3:0] y);
		tristate t0(d0,~s,y);
		tristate t1(d1,s,y);
endmodule
//multiplexor de 2 pero ahora con tri estados