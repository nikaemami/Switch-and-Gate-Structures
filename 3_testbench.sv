`timescale 1ns/1ns
module MUXTB();
	logic SS0=0,SS1=1,aa=0,bb=1,cc=0,dd=0;
	wire ww;
	MUX CUT3(SS0,SS1,aa,bb,cc,dd,ww);
	initial begin
	#120 SS1=0;
	#120 aa=1;
	#120 SS0=1;
	#120 cc=1;
	#120 $stop;
	end
endmodule
