/*
    Circuit johnson with fault recovery
*/
module johnson2 (
    input clk, reset,
    output reg [3:0] count_out    
);
    always @(posedge clk or posedge reset) 
        if (reset)
            count_out <= 0;
        // add fault recovery
        else if (count_out == 4'h2) count_out <= 0;
        else if (count_out == 4'h4) count_out <= 0;
        else if (count_out == 4'h5) count_out <= 0;
        else if (count_out == 4'h6) count_out <= 0;
        else if (count_out == 4'h9) count_out <= 0;
        else if (count_out == 4'ha) count_out <= 0;
        else if (count_out == 4'hb) count_out <= 0;
        else if (count_out == 4'hd) count_out <= 0;
        else begin
            count_out [3:1] <= count_out[2:0];
            count_out [0]   <= ~count_out[3];
        end
endmodule
