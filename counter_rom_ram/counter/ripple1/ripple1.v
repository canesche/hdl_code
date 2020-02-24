/*
    The problem with the ripple counter is that, because more than one 
    output is changing at once, using combinational logic to decode output
    states results in glitchy signals. To avoid this problem, use counters
    like Gray Code or Johnson counters.
*/
module ripple1(
    output reg [3:0] count_out, 
    input            clk, 
    input            reset
);
    always @(posedge clk or posedge reset)
        if (reset)
            count_out <= 0;
        else
            count_out <= count_out + 1;

endmodule