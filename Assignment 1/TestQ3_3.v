module TestbenchQ3_3;
reg [31:0] input_1 [31:0];
reg [4:0] select;
wire [31:0] output_1;
integer counter;
SixteenToOneMultiplexerWithThirtyTwoBitLength moduleTest(input_1[0], input_1[1], input_1[2], input_1[3], input_1[4], input_1[5], input_1[6], input_1[7], input_1[8], input_1[9], input_1[10], input_1[11], input_1[12], input_1[13], input_1[14], input_1[15], select, output_1);
initial begin
	for (counter = 0; counter < 16; counter = counter + 1)
	begin
	input_1[counter] = $random;
	end
	for (select = 4'b0000; select != 4'b1111; select = select + 1'b1)
	begin
	#10;
	end
#10;
end
endmodule