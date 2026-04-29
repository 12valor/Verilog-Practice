// 4/29/2026
// AG Evangelista - Student
// FULL SUBTRACTOR

module FULLSUBTRACTOR(d, bout, bin, a, b);
	input a, b, bin;
	output d, bout;
	
	wire w1, w2, w3;
	wire not_a, not_b;
	
	xor u1(w1, a, b);
	not u6(not_a, a);
	and u2(w2, not_a, b);
	not u7(not_b, w1);
	and u3(w3, bin, not_b);
	xor u4(d, w1, bin);
	or u5(bout, w3, w2);
	
endmodule