`timescale 1ns/1ns
module mynand (input a,b,output w);
	wire y;
	supply1 vdd;
	supply0 Gnd;
	pmos#(5,6,7) T1(w,vdd,a);
	pmos#(5,6,7) T2(w,vdd,b);
	nmos#(3,4,5) T3(y,Gnd,b);
	nmos#(3,4,5) T4(w,y,a);
endmodule
