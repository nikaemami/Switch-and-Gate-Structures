`timescale 1ns/1ns
module NOTIF1(input a,EN, output w);
	wire b,c,d;
	supply1 vdd;
	supply0 gnd;
	pmos#(5,6,7) T1(b,vdd,a);
	pmos#(5,6,7) T2(w,b,c);
	pmos#(5,6,7) T3(c,vdd,EN);
	nmos#(3,4,5) T4(w,d,EN);
	nmos#(3,4,5) T5(d,gnd,a);
	nmos#(3,4,5) T6(c,gnd,EN);
endmodule
