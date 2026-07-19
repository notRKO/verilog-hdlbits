module top_module( 
    input a, b, cin,
    output cout, sum );

    //derive sum and Cout eqns
    assign sum = a^b^cin;
    assign cout = cin&(a^b) | a&b;
endmodule
