`timescale 1ns/1ns
module CompareMux();
	logic SS0=0,SS1=0,aa=0,bb=0,cc=0,dd=0;
	wire ww;
	logic SS2=0,SS3=0,ee=0,ff=0,gg=0,hh=0;
	wire yy;
	MUX CUT5(SS0,SS1,aa,bb,cc,dd,ww);
	mux_buf CUT6(SS2,SS3,ee,ff,gg,hh,yy);
	initial begin
	#130 aa=1;
	#130 SS1=1;
	#130 bb=1;
	#130 SS0=1;
	#130 dd=1;
	#130 $stop;
	end
	initial begin
	#130 ee=1;
	#130 SS3=1;
	#130 ff=1;
	#130 SS2=1;
	#130 hh=1;
	#130 $stop;
	end
endmodule
