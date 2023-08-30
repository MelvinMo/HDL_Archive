module RFCorrelator(input Bit_stream, input Clock, input Reset, output reg [3:0] Out_str);
	reg [31:0] serial_to_parallel;
	reg [4:0] count;
	wire [3:0] Out_4;
	wire [31:0] in [15:0];
	
	always @(posedge Clock or posedge Reset) begin
		if (Reset)
		begin
			serial_to_parallel <= 0;
			count <= 0;
			Out_str <= 0;
		end
		else
		begin
			count <= count + 1;
			serial_to_parallel <= {serial_to_parallel[30:0], Bit_stream};
			if (count == 5'b11111)
			begin
				Out_str <= Out_4;
			end
		end
	end	 
	Correlation_32 module_correl({serial_to_parallel[30:0],Bit_stream}, in[0], in[1], in[2], in[3], in[4], in[5], in[6], in[7], in[8], in[9], in[10], in[11], in[12], in[13], in[14], in[15], Clock, Reset, Out_4);
	genvar c;
	generate
		for(c = 0; c < 16; c = c + 1)
		begin: assigning
			assign in[c] = c == 15?0 : 32'hFFFF_FFFF;
		end
	endgenerate
endmodule