module TestbenchQ1_1;
reg input_1;
reg input_2;
wire sum;
wire carry;	
HalfAdder half_adder(input_1, input_2, sum, carry);	
initial begin
	$monitor("input_1 = %b , input_2 = %b , sum = %b , carry = %b", input_1, input_2, sum, carry);
	input_1 = 1'b0;
	input_2 = 1'b0;
	#10
	input_1 = 1'b1;
	input_2 = 1'b1;
end	
endmodule