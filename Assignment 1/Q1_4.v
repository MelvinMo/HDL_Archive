module FourBitFullAdder
(
input [0:3] input_1,
input [0:3] input_2,
input input_carry,
output output_carry,
output [0:3] sum
);
wire WIRE_1;
wire WIRE_2;
wire WIRE_3;
FullAdder full_adder_1(input_1[3], input_2[3], input_carry, WIRE_1, sum[3]);
FullAdder full_adder_2(input_1[2], input_2[2], WIRE_1, WIRE_2, sum[2]);
FullAdder full_adder_3(input_1[1], input_2[1], WIRE_2, WIRE_3, sum[1]);
FullAdder full_adder_4(input_1[0], input_2[0], WIRE_3, output_carry, sum[0]);
endmodule 