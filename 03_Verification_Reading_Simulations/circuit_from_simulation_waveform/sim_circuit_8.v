module top_module (
    input clock,
    input a,
    output p,
    output q );
    
    initial begin
        q=1;
    end
    
    always @(negedge clock) begin
        q<=p|clock;
    end

    always@(*)begin
        if(clock) begin
            p<=a;
        end
    end
endmodule
