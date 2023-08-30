module FullAdder 
(
input_1,
input_2,
input_carry,
output_carry,
sum
); 
input  input_1;
input  input_2;
input  input_carry;
output sum;
output output_carry;
wire   WIRE_1;
wire   WIRE_2;
wire   WIRE_3;
HalfAdder half_adder_1(input_1, input_2, WIRE_3, WIRE_1);
HalfAdder half_adder_2(input_carry, WIRE_3, sum, WIRE_2);
assign output_carry = WIRE_1 | WIRE_2;
endmodule