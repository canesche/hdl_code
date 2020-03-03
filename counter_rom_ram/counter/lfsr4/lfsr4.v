// Verilog version of a 4-bit LFSR (Linear Feedback shift registers) Counter
module lfsr4 (
	input 			 clk, 
	input			 rst, 
	output reg [3:0] lfsr_count
);

	always @(posedge clk or posedge rst)
		if (rst)
			lfsr_count <= 0;
		else begin
			lfsr_count[3:1] <= lfsr_count[2:0];
			lfsr_count[0] 	<= lfsr_count[3] ~^ lfsr_count[0];
		end

endmodule
