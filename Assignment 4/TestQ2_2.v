module TestBenchQ2_2;
	reg Bit_stream = 0;
	reg Clock = 0;
	reg Reset = 0;
	reg Temp = 0;
	wire [3:0] Out_str;

	RFCorrelator module_test_Q2_2(Bit_stream, Clock, Reset, Out_str);
	always forever #10 Clock = ~Clock;
	always forever #20 Bit_stream = Temp ? $random() : 1;
	initial begin
	#5;
	Reset=1;
	#5;
	Reset=0;
	#200
	Temp=1;
   end
endmodule