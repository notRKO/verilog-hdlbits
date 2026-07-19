module fadd( 
    input a, b, cin,
    output cout, sum );

    //derive sum and Cout eqns
    assign sum = a^b^cin;
    assign cout = cin&(a^b) | a&b;
endmodule

module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );

    wire w1,w2,w3,w4,w5,w6;
    fadd instance1 (.a(a[0]), .b(b[0]), .cin(cin), .cout(w1),.sum(w2));
    fadd instance2 (.a(a[1]), .b(b[1]), .cin(w1), .cout(w3), .sum(w4));
    fadd instance3 (.a(a[2]), .b(b[2]), .cin(w3), .cout(w5), .sum(w6));

    assign sum = {w6,w4,w2};
    assign cout = {w5,w3,w1};
endmodule
