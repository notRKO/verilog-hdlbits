module top_module ( input clk, input d, output q );

    wire out_1,out_2;
    my_dff instance1 (.clk(clk), .d(d), .q(out_1));
    my_dff instance2 (.clk(clk), .d(out_1), .q(out_2));
    my_dff instance3 (.clk(clk), .d(out_2), .q(q));
endmodule
