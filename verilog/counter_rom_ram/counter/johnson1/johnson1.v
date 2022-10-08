module johnson1 (
    input clk, reset,
    output reg [3:0] count_out
);

    always @(posedge clk or posedge reset)
        if (reset)
            count_out <= 0;
        else begin
            count_out[3:1] <= count_out[2:0];
            count_out[0]   <= ~count_out[3];
        end

endmodule
