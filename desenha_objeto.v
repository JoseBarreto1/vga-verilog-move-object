module desenha_objeto (
	input VGA_clk,
	input wire [6:0] tamanho,
	input wire [9:0] xCount, xPos,
	input wire [8:0] yCount, yPos, 
	output wire desenho
);
	reg desenho_x, desenho_y;	
	
	always @(negedge VGA_clk)
		begin
			desenho_x <= (xCount > xPos && xCount < (xPos + tamanho));
			desenho_y <= (yCount > yPos && yCount < (yPos + tamanho));
		end
	
	assign desenho = desenho_x && desenho_y;

endmodule