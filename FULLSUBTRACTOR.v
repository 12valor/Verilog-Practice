// 4/29/2026
// AG Evangelista - Student
// FULL SUBTRACTOR

module FULLSUBTRACTOR(D, Bout, Bin, A, B);
	input A, B, Bin;
	output D, Bout;
	
	wire w1, w2, w3, w4, w5, w6;
	
	xor u1(w1, B, Bin);
	not u2(w2, B);
	and u3(w3, w2, Bin);
	not u4(w4, w1);
	and u5(w5, w4, A);
	xor u6(w6, w1, A);
	or u7(Bout, w5, w3);

endmodule