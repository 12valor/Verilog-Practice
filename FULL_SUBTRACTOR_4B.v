module HALF_SUBTRACTOR(a,b,diff,borrow);
	input a,b;
	output reg diff, borrow;

	always @(a,b) begin
		case({a,b})
			2'b00: {diff, borrow} = 2'b00;
			2'b01: {diff, borrow} = 2'b11;
			2'b10: {diff, borrow} = 2'b10;
			2'b11: {diff, borrow} = 2'b00;
			default: {diff, borrow} = 2'b00;
		endcase
	end
endmodule

module FULL_SUBTRACTOR(a,	b, bin, diff, bout);
	input a,b,bin;
	output reg diff,bout;
	
	always @(a,b,bin) begin
		case({a,b,bin})
			3'd0: {diff, bout} = 2'b00;
			3'd1: {diff, bout} = 2'b11;
			3'd2: {diff, bout} = 2'b11;
			3'd3: {diff, bout} = 2'b01;
			3'd4: {diff, bout} = 2'b10;
			3'd5: {diff, bout} = 2'b00;
			3'd6: {diff, bout} = 2'b00;
			3'd7: {diff, bout} = 2'b11;
			default: {diff, bout} = 2'b00;
		endcase
	end
endmodule

module FULL_SUBTRACTOR_2B(a,b,d);
	input [1:0] a,b;
	output wire [2:0] d;
	
	wire w;
	
	HALF_SUBTRACTOR hs(
		.diff 	(d[0]),
		.borrow 	(w),
		.a 		(a[0]),
		.b 		(b[0])
	);

	FULL_SUBTRACTOR fs(
		.diff 	(d[1]),
		.bout 	(d[2]),
		.a 		(a[1]),
		.b 		(b[1]),
		.bin 		(w)
	);

endmodule

module FULL_SUBTRACTOR_4B(a,b,d);
	input [3:0] a,b;
	output wire [4:0] d;
	
	wire [2:0] w;
	
	HALF_SUBTRACTOR hs(
		.diff 	(d[0]),
		.borrow 	(w),
		.a 		(a[0]),
		.b 		(b[0])
	);
	
	FULL_SUBTRACTOR fs(
		.diff 	(d[1]),
		.bout 	(w[1]),
		.a			(a[1]),
		.b			(b[1]),
		.bin		(w[0])
	);
	
	FULL_SUBTRACTOR fs2(
		.diff 	(d[2]),
		.bout 	(w[2]),
		.a			(a[2]),
		.b			(b[2]),
		.bin		(w[1])
	);
	
	FULL_SUBTRACTOR fs3(
		.diff 	(d[3]),
		.bout 	(d[4]),
		.a			(a[3]),
		.b			(b[3]),
		.bin		(w[2])
	);
endmodule
