module TestbenchQ2;
reg Clock = 0;
reg Reset = 1;
reg [18:0] Count_m = 19'd25752;
reg Pulse1000 = 0;
reg Pulse2000 = 0;
reg Pulse5000 = 0;
wire Out;
wire [8:0] Coin1000;
wire [7:0] Coin2000;
wire [6:0] Coin5000;
m_counter moduleTest(Clock, Reset, Count_m, Pulse1000, Pulse2000, Pulse5000, Out, Coin1000, Coin2000, Coin5000);
always #5 Clock = ~Clock;
always begin
	Reset = 0;
	#50
	Reset = 1;
	#100
	Reset = 0;
	Count_m = 19'd444444;
	#150;
	Reset = 1;
end
always #15 Pulse1000 = ~Pulse1000;
always #30 Pulse2000 = ~Pulse2000;
always #60 Pulse5000 = ~Pulse5000;
endmodule