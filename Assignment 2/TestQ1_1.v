module TestbenchQ1_1;
reg clk = 0;
reg reset = 0;
reg [15:0] pdata = 1;
wire [15:0] qdata;
reg load = 0;
reg shift_right = 0;
reg shift_left = 0;
reg serial_in = 0;
wire serial_out;
myReg moduleTest(clk, reset, pdata, qdata, load, shift_right, shift_left, serial_in, serial_out);
always #15 clk = ~clk;
always #30 load = ~load;
always #60 reset = ~reset;
always #120 shift_left = ~shift_left;
always #240 shift_right = ~shift_right;
always #480 {serial_in, pdata} = $random();
endmodule