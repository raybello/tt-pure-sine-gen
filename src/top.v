module top(
	input clk,
	output out1,
	output out2
	);
	
	wire [5:0] w_sel1;
	wire w_sel2;
    wire w_CE;
	
	data_path d1(
        .clk(w_CE),
		.sel1(w_sel1),
		.sel2(w_sel2),
		.out1(out1),
		.out2(out2)
		);
		
	controller c1(
        .clk(w_CE),
		.sel1(w_sel1),
		.sel2(w_sel2)
		);
  
   clk_enable e1(
     .clk(clk),
     .CE(w_CE)
   );
endmodule