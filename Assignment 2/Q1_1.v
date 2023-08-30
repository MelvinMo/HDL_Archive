module myReg
(
clk,
reset,
pdata,
qdata,
load,
shift_right,
shift_left,
serial_in,
serial_out
);
input clk;
input reset;
input [15:0] pdata;
output reg [15:0] qdata;
input load;
input shift_right;
input shift_left;
input serial_in;
output reg serial_out;	
always @(posedge clk) begin
	serial_out <= 0;
	if (reset)
	begin
		qdata <= 16'h0000;
	end
	else if (load)
	begin
		qdata <= pdata;
	end
	else if (shift_right)
	begin
		qdata[15:0] <= {serial_in, qdata[15:1]};
		serial_out <= qdata[0];
	end
	else if (shift_left)
	begin
		qdata[15:0] <= {qdata[14:0], serial_in};
		serial_out <= qdata[15];
	end	
end
endmodule