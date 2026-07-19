module fadd( 
    input a, b, cin,
    output cout, sum );

    //derive sum and Cout eqns
    assign sum = a^b^cin;
    assign cout = cin&(a^b) | a&b;
endmodule

module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);

    wire w1,w2,w3;
    fadd instance1(.a(x[0]), .b(y[0]), .cin(), .cout(w1), .sum(sum[0]));
    fadd instance2(.a(x[1]), .b(y[1]), .cin(w1), .cout(w2), .sum(sum[1]));
    fadd instance3(.a(x[2]), .b(y[2]), .cin(w2), .cout(w3), .sum(sum[2]));
    fadd instance4(.a(x[3]), .b(y[3]), .cin(w3), .cout(sum[4]), .sum(sum[3]));
endmodule
