`timescale 1ns/1ns
module mynandTB();
	logic aa=0,bb=0;
	wire ww;
	mynand CUT1(aa,bb,ww);
	initial begin
	#20 aa=1;
	#20 bb=1;
	#20 aa=0;
	#20 bb=0;
	#20 $stop;
	end
endmodule
