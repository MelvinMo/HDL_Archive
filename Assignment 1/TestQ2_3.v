module TestbenchQ2_3;
reg [2:0] input_1;
reg Enable;
wire [7:0] WIRE_1;
ThreeToEightDecoder moduleTest(input_1, Enable, WIRE_1);
initial begin
	Enable = 1'b0;
	for (input_1 = 3'b000 ; input_1 != 3'b111 ; input_1 = input_1 + 1'b1)
	begin
	#10;
	end
end
endmodule