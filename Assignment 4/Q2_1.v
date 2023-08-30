module Correlation_32(input [31:0] Num_1, input [31:0] Num_2, input [31:0] Num_3, input [31:0] Num_4, input [31:0] Num_5, input [31:0] Num_6, input [31:0] Num_7, input [31:0] Num_8, input [31:0] Num_9, input [31:0] Num_10, input [31:0] Num_11, input [31:0] Num_12, input [31:0] Num_13, input [31:0] Num_14, input [31:0] Num_15, input [31:0] Num_16, input [31:0] Target_Num, input Clock, input Reset, output reg [3:0] Out_4);	
	reg [5:0] Correl_Num [14:0];
	integer MaxNum;
	integer c;
	
	function [5:0] Correl;
		input [31:0] Num;		
		input [31:0] Target;
		integer index;
		begin
		Correl = 0;
		for (index = 0; index < 32; index = index + 1)
			Correl = Correl + (Target[index] == Num[index]);
		end
	endfunction	 
	always @(posedge Clock or posedge Reset) begin
		if (Reset)
		begin
			Out_4 <= 0;
		end
		else
		begin
			Correl_Num[0] = Correl(Num_1, Target_Num);
			Correl_Num[1] = Correl(Num_2, Target_Num);
			Correl_Num[2] = Correl(Num_3, Target_Num);
			Correl_Num[3] = Correl(Num_4, Target_Num);
			Correl_Num[4] = Correl(Num_5, Target_Num);
			Correl_Num[5] = Correl(Num_6, Target_Num);
			Correl_Num[6] = Correl(Num_7, Target_Num);
			Correl_Num[7] = Correl(Num_8, Target_Num);
			Correl_Num[8] = Correl(Num_9, Target_Num);
			Correl_Num[9] = Correl(Num_10, Target_Num);
			Correl_Num[10] = Correl(Num_11, Target_Num);
			Correl_Num[11] = Correl(Num_12, Target_Num);
			Correl_Num[12] = Correl(Num_13, Target_Num);
			Correl_Num[13] = Correl(Num_14, Target_Num);
			Correl_Num[14] = Correl(Num_15, Target_Num);
			MaxNum = Correl(Num_16, Target_Num);
			Out_4 <= 15;
			for(c = 14; c >= 0; c = c - 1)
			begin
				if (Correl_Num[c] >= MaxNum)
				begin
					MaxNum = Correl_Num[c];
					Out_4 <= c;
				end
			end
		end
	 end
endmodule