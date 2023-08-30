module TestbenchQ3_1;
reg [3:0] input_1;
reg [1:0] select;
wire WIRE_1;
FourToOneMultiplexerWithOneBitLength moduleTest(input_1[0], input_1[1], input_1[2], input_1[3], select, WIRE_1);
initial begin
	for (input_1 = 4'b0000 ; input_1 != 4'b1111; input_1 = input_1 + 1'b1)
	begin
		for (select = 4'b00 ; select != 4'b11 ; select = select + 1'b1)
		begin
		#5;
		end
	#5;
	end
end
endmodule