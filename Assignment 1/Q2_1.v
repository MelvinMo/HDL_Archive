module OneToTwoDecoder
(
input input_1,
input Enable,
output output_1,
output output_2
);
assign output_1  =  Enable & !input_1;
assign output_2  =  Enable &  input_1;
endmodule