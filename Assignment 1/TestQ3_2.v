module TestbenchQ3_2;
reg [31:0] input_1 [3:0];
reg [1:0] select;
wire [31:0] WIRE_1;
FourToOneMultiplexerWithThirtyTwoBitLength moduleTest(input_1[0], input_1[1], input_1[2], input_1[3], select, WIRE_1);
initial begin
	for (select = 2'b00 ; select != 2'b11 ; select = select + 1'b1)
	begin
	input_1[0] = $random;
	input_1[1] = $random;
	input_1[2] = $random;
	input_1[3] = $random;
	#10;
	end
#10;
end
endmodule