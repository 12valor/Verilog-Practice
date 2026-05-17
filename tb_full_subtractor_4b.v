module tb_full_subtractor_4b;
    reg [3:0] a, b;
    wire [4:0] d;

    FULL_SUBTRACTOR_4B dut(
        .a(a),
        .b(b),
        .d(d)
    );

    initial begin
        a = 4'd0;

        repeat(16) begin
            b = 4'd0;

            repeat(16) begin
                #1;
                b = b + 4'd1;
            end

            a = a + 4'd1;
        end
    end

endmodule