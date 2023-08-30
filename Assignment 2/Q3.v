module sequence_detector
(
clk,
reset,
input_se,
lookfor_seq,
seq_detected,
seq_count
);	
input clk;
input reset;
input input_se;
input [1:0] lookfor_seq;
output reg seq_detected = 0;
output reg [15:0] seq_count = 0;
reg [1:0] temp_1;
reg [3:0] counter = 0;		
reg [4:0] sequance;
always @(negedge clk) begin
	sequance <= {sequance[3:0], input_se};
	seq_detected <= 0;					
	if (reset)
	begin
		counter = 0;
		seq_count <= 0;
	end
	else
	begin
		if(counter >= 4)
			case (lookfor_seq)
				2'b00:	if({sequance[3:0], input_se} == 5'b00101) begin
						seq_detected <= 1;
						seq_count <= seq_count + 1;
						end
				2'b01: if({sequance[3:0], input_se} == 5'b01110) begin
						seq_detected <= 1;
						seq_count <= seq_count + 1;
						end
				2'b10: if({sequance[3:0], input_se} == 5'b10001) begin
						seq_detected <= 1;
						seq_count <= seq_count + 1;
						end
				2'b11: 	if({sequance[3:0], input_se} == 5'b11100) begin
						seq_detected <= 1;
						seq_count <= seq_count + 1;
						end
			endcase
		else
			counter = counter + 1;
	end
	temp_1 <= lookfor_seq;
	if(temp_1 != lookfor_seq)
		seq_count <= 0;
end		
endmodule