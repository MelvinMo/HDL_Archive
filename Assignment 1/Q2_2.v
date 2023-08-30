module TwoToFourDecoder
(
input [1:0] input_1,
input Enable,
output [3:0] output_1
);
wire WIRE_1;
wire WIRE_2;
OneToTwoDecoder Test_1(input_1[1], Enable, WIRE_1, WIRE_2);
OneToTwoDecoder Test_2(input_1[0], WIRE_1, output_1[0], output_1[1]);
OneToTwoDecoder Test_3(input_1[0], WIRE_2, output_1[2], output_1[3]);
endmodule