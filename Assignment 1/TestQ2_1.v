module TestbenchQ2_1;
reg input_1;
reg Enable;
wire WIRE_1;
wire WIRE_2;
OneToTwoDecoder moduleTest(input_1, Enable, WIRE_1, WIRE_2);
initial begin
	input_1 = 1;
	Enable = 0;
	$monitor("input_1 = %b , Enable = %b , WIRE_1 = %b , WIRE_2 = %b", input_1, Enable, WIRE_1, WIRE_2);
	#10
	input_1 = 1;
	Enable = 1;
	$monitor("input_1 = %b , Enable = %b , WIRE_1 = %b , WIRE_2 = %b", input_1, Enable, WIRE_1, WIRE_2);
end
endmodule