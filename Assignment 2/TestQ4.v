module TestbenchQ4;
reg String = 0;
reg Clock = 0;
reg Reset = 0;
wire [2:0] Remainder;
wire Divisible;
Binary_Divisibility_By_7 moduleTest(String, Clock, Reset, Remainder, Divisible);
always #15 Clock = ~Clock;
initial begin
	#200
	Reset = 1;
	#200;
	Reset = 0;
end
always begin
	#10 String = $random();
end
endmodule