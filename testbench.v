// 4/29/2026
// AG Evangelista - Student
// FULL SUBTRACTOR
//TESTBENCH

module testbench;

reg a, b, bin;
wire d, bout;

FULLSUBTRACTOR dut(
	.a(a),
	.b(b),
	.bin(bin),
	.bout(bout),
	.d(d)
);

initial begin
a=0; b=0; bin=0; #10;
//1
a=0; b=0; bin=1; #10;
//2
a=0; b=1; bin=0; #10;
//3
a=0; b=1; bin=1; #10;
//4
a=1; b=0; bin=0; #10;
//5
a=1; b=0; bin=1; #10;
//6
a=1; b=1; bin=0; #10;
//7
a=1; b=1; bin=1; #10;
end

endmodule