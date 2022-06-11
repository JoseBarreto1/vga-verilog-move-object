module colide_objeto (
	input VGA_clk,
	input wire [6:0] tamanho,
	input wire [9:0] xPos,
	input wire [8:0] yPos, 
	output reg colisao_max_x,
	output reg colisao_min_x,
	output reg colisao_max_y,
	output reg colisao_min_y
);
	
	localparam min_x = 1;
	localparam max_x = 640;
	localparam min_y = 1;
	localparam max_y = 480;	
	
	always @(negedge VGA_clk)
		begin
			colisao_max_x <= xPos > (max_x - tamanho);	
			colisao_min_x <= xPos < min_x;
			colisao_max_y <= yPos > (max_y - tamanho);
			colisao_min_y <= yPos < min_y;
		end

endmodule