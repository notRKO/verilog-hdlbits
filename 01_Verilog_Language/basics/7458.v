module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );


    wire abc_1 = p1a&p1b&p1c;
    wire def_1 = p1d&p1e&p1f;
    wire ab_2 = p2a&p2b;
    wire cd_2 = p2c&p2d;
    assign p1y = abc_1|def_1;
    assign p2y = ab_2|cd_2;
endmodule