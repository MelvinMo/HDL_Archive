module TestbenchQ1_2;
reg  input_1;
reg  input_2;
reg  input_carry;
wire carry;
wire sum;
FullAdder full_adder(input_1, input_2, input_carry, carry, sum);
initial begin
	$monitor("input_1 = %b , input_2 = %b , input_carry = %b , sum = %b , carry = %b", input_1, input_2, input_carry, sum, carry);
	input_1 = 1'b0;
	input_2 = 1'b0;
	input_carry = 1'b0;
	#10
	input_1 = 1'b1;
	input_2 = 1'b0;
	input_carry = 1'b0;
	#10
	input_1 = 1'b0;
	input_2 = 1'b1;
	input_carry = 1'b0;
	#10
	input_1 = 1'b1;
	input_2 = 1'b1;
	input_carry = 1'b1;
end
endmodule