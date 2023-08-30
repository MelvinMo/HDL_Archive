module ModuleQ1_5
(
input [0:31] input_1,
input [0:31] input_2,
input temp,
output carry,
output [0:31] total
);
reg [0:31] temp2;
wire input_carry = !temp;
wire WIRE_1;
wire WIRE_2;
wire WIRE_3;
wire WIRE_4;
wire WIRE_5;
wire WIRE_6;
wire WIRE_7;
FourBitFullAdder full_adder_1(input_1[28:31], temp2[28:31], input_carry, WIRE_1, total[28:31]);
FourBitFullAdder full_adder_2(input_1[24:27], temp2[24:27], WIRE_1, WIRE_2, total[24:27]);
FourBitFullAdder full_adder_3(input_1[20:23], temp2[20:23], WIRE_2, WIRE_3, total[20:23]);
FourBitFullAdder full_adder_4(input_1[16:19], temp2[16:19], WIRE_3, WIRE_4, total[16:19]);
FourBitFullAdder full_adder_5(input_1[12:15], temp2[12:15], WIRE_4, WIRE_5, total[12:15]);
FourBitFullAdder full_adder_6(input_1[8:11], temp2[8:11], WIRE_5, WIRE_6, total[8:11]);
FourBitFullAdder full_adder_7(input_1[4:7], temp2[4:7], WIRE_6, WIRE_7, total[4:7]);
FourBitFullAdder full_adder_8(input_1[0:3], temp2[0:3], WIRE_7, carry, total[0:3]);
always @(temp) begin
	if (temp == 1'b0)
	begin
	temp2 = ~input_2;
	end
	else
	begin
	temp2 = input_2;
	end
end
endmodule