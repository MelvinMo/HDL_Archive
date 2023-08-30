module TestbenchQ2_2;
reg [1:0] input_1;
reg Enable = 1'b1;
wire [3:0] WIRE_1;
TwoToFourDecoder moduleTest(input_1, Enable, WIRE_1);
initial begin
	Enable = 1'b1;
	for (input_1 = 2'b00 ; input_1 != 2'b11 ; input_1 = input_1 + 1'b1)
	begin
		#10
		$monitor("input_1 = %b , Enable = %b , WIRE_1 = %b", input_1, Enable, WIRE_1);
	end
	#10
	$monitor("input_1 = %b , Enable = %b , WIRE_1 = %b", input_1, Enable, WIRE_1);
	end
endmodule