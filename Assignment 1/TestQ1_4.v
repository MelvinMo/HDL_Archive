module TestbenchQ1_4;
reg [0:3] input_1;
reg [0:3] input_2;
reg input_carry;
wire output_carry;
wire [0:3] sum;
FourBitFullAdder full_adder(input_1, input_2, input_carry, output_carry, sum);
initial begin
	for (input_1 = 4'b0000 ; input_1 != 4'b1111 ; input_1 = input_1 + 1'b1)
	begin
	for (input_2 = 4'b0000 ; input_2 != 4'b1111 ; input_2 = input_2 + 1'b1)
	begin
	#10
	input_carry = 1'b1;			
	$monitor("input_1 = %d , input_2 = %d , input_carry = %b , sum = %d , output_carry = %b", input_1, input_2, input_carry, sum, output_carry);
	end
	end	
end
endmodule