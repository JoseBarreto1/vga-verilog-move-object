module colide_min_y (
	input VGA_clk,
	input wire [6:0] tamanho,
	input wire [9:0] xPos,
	input wire [8:0] yPos,
	output wire colisao_min_y
);

// maximo keyboard up
	reg colisao_01, colisao_02, colisao_03, colisao_04, colisao_05, colisao_06, colisao_07, colisao_08, colisao_09, colisao_10;

	localparam obstaculo_01_y = 110;
	localparam obstaculo_01_ini_x = 100;
	localparam obstaculo_01_fin_x = 350;

	localparam obstaculo_02_y = 280;
	localparam obstaculo_02_ini_x = 340;
	localparam obstaculo_02_fin_x = 350;
	
	localparam obstaculo_03_y = 180;
	localparam obstaculo_03_ini_x = 100;
	localparam obstaculo_03_fin_x = 280;
	
	localparam obstaculo_04_y = 350;
	localparam obstaculo_04_ini_x = 270;
	localparam obstaculo_04_fin_x = 280;
	
	localparam obstaculo_05_y = 280;
	localparam obstaculo_05_ini_x = 340;
	localparam obstaculo_05_fin_x = 590;
	
	localparam obstaculo_06_y = 350;
	localparam obstaculo_06_ini_x = 270;
	localparam obstaculo_06_fin_x = 510;
	
	localparam obstaculo_07_y = 450;
	localparam obstaculo_07_ini_x = 580;
	localparam obstaculo_07_fin_x = 590;
	
	localparam obstaculo_08_y = 390;
	localparam obstaculo_08_ini_x = 500;
	localparam obstaculo_08_fin_x = 510;
	
	localparam obstaculo_09_y = 450;
	localparam obstaculo_09_ini_x = 100;
	localparam obstaculo_09_fin_x = 590;
	
	localparam obstaculo_10_y = 390;
	localparam obstaculo_10_ini_x = 100;
	localparam obstaculo_10_fin_x = 510;	
	
	always @(negedge VGA_clk)
		begin
			colisao_01 <= yPos < obstaculo_01_y && ((xPos + tamanho) > obstaculo_01_ini_x && xPos < obstaculo_01_fin_x);
			colisao_01 <= yPos < obstaculo_02_y && ((xPos + tamanho) > obstaculo_02_ini_x && xPos < obstaculo_02_fin_x);
			colisao_01 <= yPos < obstaculo_03_y && ((xPos + tamanho) > obstaculo_03_ini_x && xPos < obstaculo_03_fin_x);
			colisao_01 <= yPos < obstaculo_04_y && ((xPos + tamanho) > obstaculo_04_ini_x && xPos < obstaculo_04_fin_x);
			colisao_01 <= yPos < obstaculo_05_y && ((xPos + tamanho) > obstaculo_05_ini_x && xPos < obstaculo_05_fin_x);
			colisao_01 <= yPos < obstaculo_06_y && ((xPos + tamanho) > obstaculo_06_ini_x && xPos < obstaculo_06_fin_x);
			colisao_01 <= yPos < obstaculo_07_y && ((xPos + tamanho) > obstaculo_07_ini_x && xPos < obstaculo_07_fin_x);
			colisao_01 <= yPos < obstaculo_08_y && ((xPos + tamanho) > obstaculo_08_ini_x && xPos < obstaculo_08_fin_x);
			colisao_01 <= yPos < obstaculo_09_y && ((xPos + tamanho) > obstaculo_09_ini_x && xPos < obstaculo_09_fin_x);			
			colisao_01 <= yPos < obstaculo_10_y && ((xPos + tamanho) > obstaculo_10_ini_x && xPos < obstaculo_10_fin_x);			
		end

	assign colisao_min_y = colisao_01 ||
								  colisao_02 ||
								  colisao_03 ||
								  colisao_04 ||
								  colisao_05 ||
								  colisao_06 ||
								  colisao_07 ||
								  colisao_08 ||
								  colisao_09 ||
								  colisao_10;

endmodule