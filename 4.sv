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
module mux_buf (input S0,S1,A,B,C,D, output z);
	wire e,f,g,h;
	supply1 VDD;
	NOTIF1 inv1(S0,VDD,e);
	NOTIF1 buf1(A,e,f);
	NOTIF1 buf2(C,S0,f);
	NOTIF1 inv2(S1,VDD,g);
	NOTIF1 buf3(f,g,z);
	NOTIF1 buf4(B,e,h);
	NOTIF1 buf5(D,S0,h);
	NOTIF1 buf6(h,S1,z);
endmodule

