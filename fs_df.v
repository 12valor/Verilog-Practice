//AG Evangelista

module fs_df(br, d, a, b, c);
	input a, b, c;
	output br, d;
	
	assign br = a ^ b ^ c;
	assign d = (~a & b) | (~(a ^ b) & c);
	
endmodule