module TestbenchQ1_5;
reg [0:31] input_1;
reg [0:31] input_2;
reg temp;
wire carry;
wire signed [0:31] total;
ModuleQ1_5 moduleTest(input_1, input_2, temp, carry, total);
initial begin
	input_1 = 1426;
	input_2 = 3803;
	temp = 1'b1;
	$monitor("input_1 = %d , input_2 = %d , temp = %b , total = %d , carry = %b", input_1, input_2, temp, total, carry);
	#10
	temp = 1'b0;
	$monitor("input_1 = %d , input_2 = %d , temp = %b , total = %d , carry = %b", input_1, input_2, temp, total, carry);
	#10
	input_1 = 3251;
	input_2 = 2489;
	temp = 1'b1;
	$monitor("input_1 = %d , input_2 = %d , temp = %b , total = %d , carry = %b", input_1, input_2, temp, total, carry);	
	#10
	temp = 1'b0;
	$monitor("input_1 = %d , input_2 = %d , temp = %b , total = %d , carry = %b", input_1, input_2, temp, total, carry);
end
endmodule