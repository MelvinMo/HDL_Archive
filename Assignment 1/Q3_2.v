module FourToOneMultiplexerWithThirtyTwoBitLength
(
input_1, 
input_2, 
input_3, 
input_4, 
select, 
output_1
);
input [31:0] input_1;
input [31:0] input_2;
input [31:0] input_3;
input [31:0] input_4;
input [1:0] select;
output [31:0] output_1;
FourToOneMultiplexerWithOneBitLength Test_0(input_1[0], input_2[0], input_3[0], input_4[0], select, output_1[0]);
FourToOneMultiplexerWithOneBitLength Test_1(input_1[1], input_2[1], input_3[1], input_4[1], select, output_1[1]);
FourToOneMultiplexerWithOneBitLength Test_2(input_1[2], input_2[2], input_3[2], input_4[2], select, output_1[2]);
FourToOneMultiplexerWithOneBitLength Test_3(input_1[3], input_2[3], input_3[3], input_4[3], select, output_1[3]);
FourToOneMultiplexerWithOneBitLength Test_4(input_1[4], input_2[4], input_3[4], input_4[4], select, output_1[4]);
FourToOneMultiplexerWithOneBitLength Test_5(input_1[5], input_2[5], input_3[5], input_4[5], select, output_1[5]);
FourToOneMultiplexerWithOneBitLength Test_6(input_1[6], input_2[6], input_3[6], input_4[6], select, output_1[6]);
FourToOneMultiplexerWithOneBitLength Test_7(input_1[7], input_2[7], input_3[7], input_4[7], select, output_1[7]);
FourToOneMultiplexerWithOneBitLength Test_8(input_1[8], input_2[8], input_3[8], input_4[8], select, output_1[8]);
FourToOneMultiplexerWithOneBitLength Test_9(input_1[9], input_2[9], input_3[9], input_4[9], select, output_1[9]);
FourToOneMultiplexerWithOneBitLength Test_10(input_1[10], input_2[10], input_3[10], input_4[10], select, output_1[10]);
FourToOneMultiplexerWithOneBitLength Test_11(input_1[11], input_2[11], input_3[11], input_4[11], select, output_1[11]);
FourToOneMultiplexerWithOneBitLength Test_12(input_1[12], input_2[12], input_3[12], input_4[12], select, output_1[12]);
FourToOneMultiplexerWithOneBitLength Test_13(input_1[13], input_2[13], input_3[13], input_4[13], select, output_1[13]);
FourToOneMultiplexerWithOneBitLength Test_14(input_1[14], input_2[14], input_3[14], input_4[14], select, output_1[14]);
FourToOneMultiplexerWithOneBitLength Test_15(input_1[15], input_2[15], input_3[15], input_4[15], select, output_1[15]);
FourToOneMultiplexerWithOneBitLength Test_16(input_1[16], input_2[16], input_3[16], input_4[16], select, output_1[16]);
FourToOneMultiplexerWithOneBitLength Test_17(input_1[17], input_2[17], input_3[17], input_4[17], select, output_1[17]);
FourToOneMultiplexerWithOneBitLength Test_18(input_1[18], input_2[18], input_3[18], input_4[18], select, output_1[18]);
FourToOneMultiplexerWithOneBitLength Test_19(input_1[19], input_2[19], input_3[19], input_4[19], select, output_1[19]);
FourToOneMultiplexerWithOneBitLength Test_20(input_1[20], input_2[20], input_3[20], input_4[20], select, output_1[20]);
FourToOneMultiplexerWithOneBitLength Test_21(input_1[21], input_2[21], input_3[21], input_4[21], select, output_1[21]);
FourToOneMultiplexerWithOneBitLength Test_22(input_1[22], input_2[22], input_3[22], input_4[22], select, output_1[22]);
FourToOneMultiplexerWithOneBitLength Test_23(input_1[23], input_2[23], input_3[23], input_4[23], select, output_1[23]);
FourToOneMultiplexerWithOneBitLength Test_24(input_1[24], input_2[24], input_3[24], input_4[24], select, output_1[24]);
FourToOneMultiplexerWithOneBitLength Test_25(input_1[25], input_2[25], input_3[25], input_4[25], select, output_1[25]);
FourToOneMultiplexerWithOneBitLength Test_26(input_1[26], input_2[26], input_3[26], input_4[26], select, output_1[26]);
FourToOneMultiplexerWithOneBitLength Test_27(input_1[27], input_2[27], input_3[27], input_4[27], select, output_1[27]);
FourToOneMultiplexerWithOneBitLength Test_28(input_1[28], input_2[28], input_3[28], input_4[28], select, output_1[28]);
FourToOneMultiplexerWithOneBitLength Test_29(input_1[29], input_2[29], input_3[29], input_4[29], select, output_1[29]);
FourToOneMultiplexerWithOneBitLength Test_30(input_1[30], input_2[30], input_3[30], input_4[30], select, output_1[30]);
FourToOneMultiplexerWithOneBitLength Test_31(input_1[31], input_2[31], input_3[31], input_4[31], select, output_1[31]);
endmodule