module TestbenchQ3;
reg clk = 1;
reg reset = 0;
reg input_se = 0;
reg [1:0] lookfor_seq = 0;
wire seq_detected;
wire [15:0] seq_count;
wire [0:4] sequance [3:0];
assign sequance [0] = 5'b10001;
assign sequance [1] = 5'b01110;
assign sequance [2] = 5'b10101;
assign sequance [3] = 5'b11110;
integer temp = 0;
sequence_detector moduleTest(clk, reset, input_se, lookfor_seq, seq_detected, seq_count);
always #15 clk = ~clk;
always @(posedge clk) begin
	input_se = sequance[lookfor_seq][temp % 5];
	temp = temp + 1;
	if( temp == 12)
		reset = 1;	
	if( temp == 38)
		lookfor_seq = 2'b11;
end
endmodule