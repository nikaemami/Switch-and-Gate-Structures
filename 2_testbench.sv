`timescale 1ns/1ns
module NOTIF1TB();
	logic aa=1,bb=1;
	wire ww;
	NOTIF1 CUT2(aa,bb,ww);
	initial begin
	#30 bb=0;
	#30 aa=0;
	#30 bb=1;
	#30 aa=1;
	#30 $stop;
	end
endmodule
