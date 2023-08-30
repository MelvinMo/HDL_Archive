module FourToOneMultiplexerWithOneBitLength
(
input input_1,
input input_2,
input input_3,
input input_4,
input [1:0] select,
output output_1
);
wire output_andGate[3:0];
wire output_notGate[1:0];
not notGate_1(output_notGate[0], select[0]),
 	notGate_2(output_notGate[1], select[1]);
and andGate_1(output_andGate[0], output_notGate[0], output_notGate[1], input_1),
 	andGate_2(output_andGate[1], select[0], output_notGate[1], input_2),
 	andGate_3(output_andGate[2], output_notGate[0], select[1], input_3),
 	andGate_4(output_andGate[3], select[0], select[1], input_4);
or orGate(output_1, output_andGate[0], output_andGate[1], output_andGate[2], output_andGate[3]);
endmodule