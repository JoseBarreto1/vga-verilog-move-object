module linha_vertical (
	input VGA_clk,
	input wire [9:0] xCol, 
	input wire [8:0] yRow, 
	input wire [9:0] coordenada_x, //de 0 a 640
	input wire [8:0] coordenada_y, //de 0 a 480
	input wire [8:0] comprimento, //ate 480
	input wire [4:0] largura, //ate 32
	output wire desenha
);
	
	reg desenho_x, desenho_y;	
	
	always @(negedge VGA_clk)
		begin
			desenho_x <= (xCol > coordenada_x && xCol < (coordenada_x + largura));
			desenho_y <= (yRow > coordenada_y && yRow < (coordenada_y + comprimento));
		end
		
	assign desenha = (desenho_x && desenho_y);

endmodule