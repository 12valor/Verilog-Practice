module lorenz(c, a, b);

input a, b;
output c;

wire w1, w2, w3, w4;
wire not_a, not_b;

	//output, input, input
	and u1(w1, a, not_a);
	not u4(not_a, b);
	
	and u2(w2, not_b, b);
	not u5(not_b, a);
	
	or u3(c, w1, w2);

endmodule