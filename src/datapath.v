
module data_path(
	input clk,
	input [5:0] sel1,
	input sel2,
	output out1,
	output out2
	);
	
	wire w_1, w_2;
	
	
	spwm s1(
		.clk(clk),
		.sel1(sel1),
		.out(w_1)
		);
	
	spwm s2(
		.clk(clk),
		.sel1(sel1),
		.out(w_2)
		);
		
	H_driver H1(
		.clk(clk),
		.sel2(sel2),
		.in1(w_1),
		.in2(w_2),
		.out1(out1),
		.out2(out2)
		);
	
endmodule