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
// Borda do monitor
	localparam monitor_min_x = 1;
	localparam monitor_max_x = 640;
	localparam monitor_min_y = 1;
	localparam monitor_max_y = 480;	
	
// Instancia obstaculos do keyboard Right (->)
	colide_max_x maxX (
		 .VGA_clk       (VGA_clk),
		 .tamanho       (tamanho),
		 .xPos          (xPos),
		 .yPos			 (yPos),
		 .colisao_max_x (max_x)
	);
	
// Instancia obstaculos do keyboard Left(<-)
	colide_min_x minX (
		 .VGA_clk       (VGA_clk),
		 .tamanho       (tamanho),
		 .xPos          (xPos),
		 .yPos			 (yPos),
		 .colisao_min_x (min_x)
	);
	
// Instancia obstaculos do keyboard Down(v)
	colide_max_y maxY (
		 .VGA_clk       (VGA_clk),
		 .tamanho       (tamanho),
		 .xPos          (xPos),
		 .yPos			 (yPos),
		 .colisao_max_y (max_y)
	);
	
// Instancia obstaculos do keyboard Up(^)
	colide_min_y minY (
		 .VGA_clk       (VGA_clk),
		 .tamanho       (tamanho),
		 .xPos          (xPos),
		 .yPos			 (yPos),
		 .colisao_min_y (min_y)
	);
	
	always @(negedge VGA_clk)
		begin
			colisao_max_x <= xPos > (monitor_max_x - tamanho) || max_x;	
			colisao_min_x <= xPos < monitor_min_x;
			colisao_max_y <= yPos > (monitor_max_y - tamanho);
			colisao_min_y <= yPos < monitor_min_y;
		end

endmodule