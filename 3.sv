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
module combined_nand (input c,d,e, output y);
	wire f,g,h;
	mynand NAND1(c,d,f);
	mynand NAND2(f,f,g);
	mynand NAND3(e,g,h);
	mynand NAND4(h,h,y);
endmodule
module or_from_nand (input j,k,l,m, output x);
	wire n,o,p,q,r,s,t,u;
	mynand NAND6(j,j,n);
	mynand NAND7(k,k,o);
	mynand NAND8(l,l,r);
	mynand NAND9(m,m,s);
	mynand NAND10(n,o,p);
	mynand NAND11(r,s,t);
	mynand NAND12(p,p,q);
	mynand NAND13(t,t,u);
	mynand NAND14(q,u,x);
endmodule
module MUX (input S0,S1,C0,C1,C2,C3, output z);
	wire D,E,F,G,H,I;
	mynand NAND15(S0,S0,D);
	mynand NAND16(S1,S1,E);
	combined_nand COMBINED1(D,E,C0,F);
	combined_nand COMBINED2(D,S1,C1,G);
	combined_nand COMBINED3(S0,E,C2,H);
	combined_nand COMBINED4(S0,S1,C3,I);
	or_from_nand OR_NAND(F,G,H,I,z);
endmodule
	
