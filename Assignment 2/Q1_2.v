module myReg_2
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
input [31:0] pdata;
output wire [31:0] qdata;
input load;
input shift_right;
input shift_left;
input serial_in;
output wire serial_out;
wire [1:0] serial_in_temp;
wire [1:0] serial_out_temp;
assign serial_in_temp[1] = shift_right 	 ? serial_in		: qdata[15];
assign serial_in_temp[0] = shift_right 	 ? qdata[16]		: serial_in;
assign serial_out = shift_right			 ? serial_out_temp[0]	: serial_out_temp[1];
myReg regTemp_1(clk, reset, pdata[31:16], qdata[31:16], load, shift_right, shift_left, serial_in_temp[1], serial_out_temp[1]);
myReg regTemp_2(clk, reset, pdata[15:0], qdata[15:0], load, shift_right, shift_left, serial_in_temp[0], serial_out_temp[0]);
endmodule	
module RegisterBank
(
clk,
flush,
load,
reset,
shift_right,
shift_left,
output_enable,
reg_select,
serial_in,
data_in,
serial_out,
data_out
);
input clk;
input reset;
input load;
input shift_left;
input shift_right;
input flush;
input output_enable;
input [5:0] reg_select;
input serial_in;
input [31:0] data_in;
output serial_out;
output [31:0] data_out;
wire [63:0] reset_total;
wire [63:0] load_total;
wire [63:0] shift_right_total;
wire [63:0] shift_left_total;
wire [63:0] serial_in_total;	
wire [63:0] serial_out_total;
wire [31:0] data_out_total [63:0];
wire serial_out_reg;
wire [31:0] data_out_reg;
reg [63:0] decoder;
genvar counter;
always @(reg_select) begin
	decoder = 64'h0;
	decoder[reg_select] = 1'b1;
end
assign data_out_reg = data_out_total [reg_select];
assign serial_out_reg = serial_out_total [reg_select];
assign reset_total = flush ? 64'hffffffffffffffff : (reset ? decoder : 0 );
assign load_total = load ? decoder : 0;
assign shift_right_total = shift_right ? decoder : 0;
assign shift_left_total = shift_left ? decoder : 0;
assign serial_in_total = serial_in ? decoder : 0;
generate
	for (counter = 0; counter < 64; counter = counter + 1)
	begin
		myReg_2 regTemp_3(clk, reset_total[counter], data_in, data_out_total[counter], load_total[counter], shift_right_total[counter], shift_left_total[counter], serial_in_total[counter], serial_out_total[counter]);
	end
	for (counter = 0; counter < 32; counter = counter + 1)
	begin
		bufif1 Temp(data_out[counter], data_out_reg[counter], output_enable);
	end
endgenerate
bufif1 Temp(serial_out, serial_out_reg, output_enable);
endmodule