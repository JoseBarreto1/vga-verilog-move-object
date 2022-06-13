module velocidade_objeto (
	input VGA_clk,
	input wire [2:0] velocidade,
	output reg vClock
);
	reg [28:0] countClk;	
	
	always @(posedge VGA_clk)
		begin			
			if(countClk == (100000 * velocidade)) begin
				countClk <= 0;
				vClock <= ~vClock;
			end
			else
				countClk <= countClk + 1;
		end
		
endmodule