module TestbenchQ1_3;
reg [0:19] input_1;
wire [0:4] output_1;
ModuleQ1_3 moduleTest(input_1, output_1);
initial begin
	for (input_1 = 20'b00000000000000000000 ; input_1 != 20'b11111111111111111111 ; input_1 = input_1 + 1'b1)
	begin
	#10
	$monitor("input_1 = %b , output_1 = %d  %b", input_1, output_1, output_1);
	end
end
endmodule