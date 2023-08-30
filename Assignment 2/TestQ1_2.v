module TestbenchQ1_2;
reg clk = 0;
reg flush = 0;
reg load = 0;
reg reset = 0;
reg shift_right = 0;
reg shift_left = 0;
reg output_enable = 1;
reg [5:0] reg_select = 0;
reg serial_in = 0;
reg [31:0] data_in;
wire serial_out;
wire [31:0] data_out;
RegisterBank moduleTest(clk, flush, load, reset, shift_right, shift_left, output_enable, reg_select, serial_in, data_in, serial_out, data_out);
always #15 clk <= ~clk;
initial
begin
data_in = $random();
#15;
flush=1;
#30;
flush=0;
reg_select=0;
load=1;
#60;
load=0;
shift_left=1;
#60;
serial_in=1;
#60;
shift_right=1;
#60;
serial_in=0;
#60
data_in = $random();
reg_select=24;
load=1;
#60;
load=0;
shift_right=0;
shift_left=1;
#60;
serial_in=1;
#60;
shift_right=1;
#60;
serial_in=0;
#60;
shift_right=0;
shift_left=0;
output_enable=0;
#60;
output_enable=1;
#60;
reg_select=0;
#40;
shift_left=1;
#40
shift_right=1;
#40;
serial_in=1;
end
endmodule