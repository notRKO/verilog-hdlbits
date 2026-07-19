module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire w1;
    wire [15:0] w2,w3;
    add16 instance1 (.a(a[15:0]),.b(b[15:0]), .cin(1'b0), .sum(w2), .cout(w1));
    add16 instance2 (.a(a[31:16]), .b(b[31:16]), .cin(w1), .sum(w3), .cout());
    assign sum = {w3,w2};
endmodule
