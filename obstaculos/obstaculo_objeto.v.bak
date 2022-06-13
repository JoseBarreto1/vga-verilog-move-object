module obstaculo_objeto (
	input wire [9:0] col, //640
	input wire [8:0] row, //480
	input wire disp_ena, clk,
	output reg [7:0] red, green, blue
);
	
	localparam min_x = 1;
	localparam max_x = 340;
	localparam min_y = 1;
	localparam max_y = 280;	
	
	//	Pinta obstaculo caso exista 
	always @(disp_ena) begin	
		if (disp_ena == 1'b1) begin	
			if(desenho) begin
				red   <= 8'hff;
				green <= 8'h0;
				blue  <= 8'h0;				
			end
			else begin
				red   <= 8'h0;
				green <= 8'h0;
				blue  <= 8'hff;			
			end
		end 
		
		else begin
			red   <= 8'h0;
			green <= 8'h0;
			blue  <= 8'h0;
		end
	end

endmodule