module TestbenchQ4;
reg [0:7] input_1;
reg [0:7] input_2;
reg select;
wire [0:7] WIRE_1;
wire [0:7] WIRE_2;
SwitchCircuit switch(input_1, input_2, select, WIRE_1, WIRE_2);
initial begin
	input_1 = 250;
	input_2 = 350;
	select = 0;
	#10
	select = 1;
	#10;
end
endmodule