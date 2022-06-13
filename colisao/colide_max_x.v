module colide_max_x (
	input VGA_clk,
	input wire [6:0] tamanho,
	input wire [9:0] xPos,
	input wire [8:0] yPos,
	output wire colisao_max_x
);

// maximo keyboard right
	reg colisao_01, colisao_02, colisao_03, colisao_04, colisao_05, colisao_06, colisao_07, colisao_08, colisao_09, colisao_10;

	localparam obstaculo_01_x = 100;
	localparam obstaculo_01_ini_y = 100;
	localparam obstaculo_01_fin_y = 110;

	localparam obstaculo_02_x = 340;
	localparam obstaculo_02_ini_y = 100;
	localparam obstaculo_02_fin_y = 280;
	
	localparam obstaculo_03_x = 100;
	localparam obstaculo_03_ini_y = 170;
	localparam obstaculo_03_fin_y = 180;
	
	localparam obstaculo_04_x = 270;
	localparam obstaculo_04_ini_y = 170;
	localparam obstaculo_04_fin_y = 350;
	
	localparam obstaculo_05_x = 340;
	localparam obstaculo_05_ini_y = 270;
	localparam obstaculo_05_fin_y = 280;
	
	localparam obstaculo_06_x = 270;
	localparam obstaculo_06_ini_y = 340;
	localparam obstaculo_06_fin_y = 350;
	
	localparam obstaculo_07_x = 580;
	localparam obstaculo_07_ini_y = 270;
	localparam obstaculo_07_fin_y = 450;
	
	localparam obstaculo_08_x = 500;
	localparam obstaculo_08_ini_y = 340;
	localparam obstaculo_08_fin_y = 390;
	
	localparam obstaculo_09_x = 100;
	localparam obstaculo_09_ini_y = 440;
	localparam obstaculo_09_fin_y = 450;
	
	localparam obstaculo_10_x = 100;
	localparam obstaculo_10_ini_y = 380;
	localparam obstaculo_10_fin_y = 390;	
	
	always @(negedge VGA_clk)
		begin
			colisao_01 <= xPos > (obstaculo_01_x - tamanho) && ((yPos + tamanho) > obstaculo_01_ini_y && yPos < obstaculo_01_fin_y);			
			colisao_02 <= xPos > (obstaculo_02_x - tamanho) && ((yPos + tamanho) > obstaculo_02_ini_y && yPos < obstaculo_02_fin_y);			
			colisao_03 <= xPos > (obstaculo_03_x - tamanho) && ((yPos + tamanho) > obstaculo_03_ini_y && yPos < obstaculo_03_fin_y);			
			colisao_04 <= xPos > (obstaculo_04_x - tamanho) && ((yPos + tamanho) > obstaculo_04_ini_y && yPos < obstaculo_04_fin_y);			
			colisao_05 <= xPos > (obstaculo_05_x - tamanho) && ((yPos + tamanho) > obstaculo_05_ini_y && yPos < obstaculo_05_fin_y);			
			colisao_06 <= xPos > (obstaculo_06_x - tamanho) && ((yPos + tamanho) > obstaculo_06_ini_y && yPos < obstaculo_06_fin_y);			
			colisao_07 <= xPos > (obstaculo_07_x - tamanho) && ((yPos + tamanho) > obstaculo_07_ini_y && yPos < obstaculo_07_fin_y);			
			colisao_08 <= xPos > (obstaculo_08_x - tamanho) && ((yPos + tamanho) > obstaculo_08_ini_y && yPos < obstaculo_08_fin_y);			
			colisao_09 <= xPos > (obstaculo_09_x - tamanho) && ((yPos + tamanho) > obstaculo_09_ini_y && yPos < obstaculo_09_fin_y);			
			colisao_10 <= xPos > (obstaculo_10_x - tamanho) && ((yPos + tamanho) > obstaculo_10_ini_y && yPos < obstaculo_10_fin_y);
		end

	assign colisao_max_x = colisao_01 ||
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