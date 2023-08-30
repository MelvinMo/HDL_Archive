module TestBenchQ1;
	reg [15:0] First_Num;
	reg [15:0] Second_Num;
	reg [15:0] Target_Num;
	reg Clock=0;
	reg Reset;
	wire [1:0] Result;

	Top_module #(16) Test_Module(First_Num, Second_Num, Target_Num, Clock, Reset, Result);
	always forever #15 Clock <= ~Clock;	
	initial
	begin
		Reset = 0;
		#10
		Target_Num = $random();
		Reset = 1;
		#20;
		Reset = 0;
		repeat(20)
		begin
			First_Num = $random();
			Second_Num = $random();
			#15;
		end
		#10;
		Reset = 1;
		Target_Num = $random();
		#20;
		Reset = 0;
		repeat(2)
		begin
			First_Num = $random();
			Second_Num = $random();
			#15;
		end
		First_Num = Target_Num;
		Second_Num = Target_Num;
		#30;
	end     
endmodule