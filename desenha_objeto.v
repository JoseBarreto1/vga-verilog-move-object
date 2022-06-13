module desenha_objeto (
	input VGA_clk,
	input wire [6:0] tamanho,
	input wire [9:0] xCol, xPos,
	input wire [8:0] yRow, yPos, 
	output wire desenho
);
	reg desenho_x, desenho_y;	
	
	always @(negedge VGA_clk)
		begin
			desenho_x <= (xCol > xPos && xCol < (xPos + tamanho));
			desenho_y <= (yRow > yPos && yRow < (yPos + tamanho));
		end
	
	assign desenho = desenho_x && desenho_y;

endmodule