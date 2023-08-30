module m_counter
(
Clock,
Reset,
Count_m,
Pulse1000,
Pulse2000,
Pulse5000,
Out,
Coin1000,
Coin2000,
Coin5000
);
input Clock;
input Reset;
input [18:0] Count_m;
input Pulse1000;
input Pulse2000;
input Pulse5000;
output Out;
output reg [8:0] Coin1000;
output reg [7:0] Coin2000;
output reg [6:0] Coin5000;
assign Out = ((Coin1000 * 1000 + Coin2000 * 2000 + Coin5000 * 5000) >= Count_m);
reg temp1;
reg temp2;
reg temp3;					
always @(posedge Clock or negedge Reset) begin
	if (Reset == 0)
	begin
		Coin1000 <= 0;
		Coin2000 <= 0;
		Coin5000 <= 0;
		temp1 <= 0;
		temp2 <= 0;
		temp3 <= 0;
	end
	else
	begin
		temp1 <= Pulse1000;
		temp2 <= Pulse2000;
		temp3 <= Pulse5000;
		if(temp1 == 0 && Pulse1000 == 1)
			Coin1000 <= (Coin1000 + Pulse1000);
		if(temp2 == 0 && Pulse2000 == 1)
			Coin2000 <= (Coin2000 + Pulse2000);
		if(temp3 == 0 && Pulse5000 == 1)
			Coin5000 <= (Coin5000 + Pulse5000);
	end
end
endmodule