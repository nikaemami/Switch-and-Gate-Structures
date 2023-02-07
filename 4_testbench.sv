`timescale 1ns/1ns
module MUX_BUF_TB();
	logic SS0=0,SS1=0,aa=0,bb=0,cc=0,dd=0;
	wire ww;
	mux_buf CUT4(SS0,SS1,aa,bb,cc,dd,ww);
	initial begin
	#70 aa=1;
	#70 SS1=1;
	#70 bb=1;
	#70 SS0=1;
	#70 dd=1;
	#70 $stop;
	end
endmodule