module ThreeToEightDecoder
(
input [2:0] input_1,
input Enable,
output [7:0] output_1
);
wire WIRE_1;
wire WIRE_2;
assign WIRE_1 = input_1[2] & Enable;
assign WIRE_2 = !input_1[2] & Enable;
TwoToFourDecoder Test_1(input_1[1:0], WIRE_1, output_1[7:4]);
TwoToFourDecoder Test_2(input_1[1:0], WIRE_2, output_1[3:0]);
endmodule