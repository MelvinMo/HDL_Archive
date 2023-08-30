module HalfAdder 
(
input_1,
input_2,
sum,
carry
); 
input  input_1;
input  input_2;
output sum;
output carry;
assign sum   = input_1 ^ input_2;
assign carry = input_1 & input_2;
endmodule