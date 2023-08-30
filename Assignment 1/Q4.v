module SwitchCircuit
(
input_1,
input_2,
select,
output_1,
output_2
);
input [0:7] input_1;
input [0:7] input_2;
input select;
output reg [0:7] output_1;
output reg [0:7] output_2;
always @(select) begin
	if (select  ==  1'b0)
	begin
	output_1 = input_1;
	output_2 = input_2;
	end
	if (select  ==  1'b1)
	begin
	output_1 = input_2;
	output_2 = input_1;
	end
end
endmodule