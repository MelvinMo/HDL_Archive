module ModuleQ1_3
(
input [0:19] input_1, 
output [0:4] output_1
);
wire CARRYWIRE_1;
wire CARRYWIRE_2;
wire CARRYWIRE_3;
wire CARRYWIRE_4;
wire CARRYWIRE_5;
wire CARRYWIRE_6;
wire CARRYWIRE_7;
wire CARRYWIRE_8;
wire CARRYWIRE_9;
wire CARRYWIRE_10;
wire CARRYWIRE_11;
wire CARRYWIRE_12;
wire CARRYWIRE_13;
wire CARRYWIRE_14;
wire SUMWIRE_1;
wire SUMWIRE_2;
wire SUMWIRE_3;
wire SUMWIRE_4;
wire SUMWIRE_5;
wire SUMWIRE_6;
wire SUMWIRE_8;
wire SUMWIRE_9;
wire SUMWIRE_10;
wire SUMWIRE_11;
wire SUMWIRE_12;
wire SUMWIRE_13;
wire temp_1 = 1'b0;
wire temp_2 = 1'b0;
FullAdder full_adder_1(input_1[0], input_1[1], input_1[2], CARRYWIRE_1, SUMWIRE_1);
FullAdder full_adder_2(input_1[3], input_1[4], input_1[5], CARRYWIRE_2, SUMWIRE_2);
FullAdder full_adder_3(input_1[7], input_1[8], input_1[9], CARRYWIRE_3, SUMWIRE_3);
FullAdder full_adder_4(input_1[10], input_1[11], input_1[12], CARRYWIRE_4, SUMWIRE_4);
FullAdder full_adder_5(input_1[14], input_1[15], input_1[16], CARRYWIRE_5, SUMWIRE_5);
FullAdder full_adder_6(input_1[17], input_1[18], input_1[19], CARRYWIRE_6, SUMWIRE_6);
FullAdder full_adder_7(SUMWIRE_1, SUMWIRE_2, input_1[6], CARRYWIRE_7, SUMWIRE_7);
FullAdder full_adder_8(CARRYWIRE_1, CARRYWIRE_2, CARRYWIRE_7, CARRYWIRE_8, SUMWIRE_8);
FullAdder full_adder_9(SUMWIRE_3, SUMWIRE_4, input_1[13], CARRYWIRE_9, SUMWIRE_9);
FullAdder full_adder_10(CARRYWIRE_3, CARRYWIRE_4, CARRYWIRE_9, CARRYWIRE_10, SUMWIRE_10);
FullAdder full_adder_11(SUMWIRE_5, SUMWIRE_6, temp_2, CARRYWIRE_11, SUMWIRE_11);
FullAdder full_adder_12(CARRYWIRE_5, CARRYWIRE_6, CARRYWIRE_11, CARRYWIRE_12, SUMWIRE_12);
FullAdder full_adder_13(CARRYWIRE_8, CARRYWIRE_10, CARRYWIRE_12, CARRYWIRE_13, SUMWIRE_13);
FullAdder full_adder_15(SUMWIRE_7, SUMWIRE_9, SUMWIRE_11, CARRYWIRE_14, output_1[4]);
FullAdder full_adder_14(SUMWIRE_8, SUMWIRE_10, SUMWIRE_12, output_1[2], output_1[3]);
FullAdder full_adder_16(SUMWIRE_13, CARRYWIRE_13, CARRYWIRE_14, output_1[0], output_1[1]);
endmodule