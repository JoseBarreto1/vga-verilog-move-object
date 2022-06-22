module colide_max_y (
	input VGA_clk,
	input wire [6:0] tamanho,
	input wire [9:0] xPos,
	input wire [8:0] yPos,
	output wire colisao_max_y
);

// maximo keyboard down
	reg colisao_01, colisao_02, colisao_03, colisao_04, colisao_05, colisao_06, colisao_07, colisao_08, colisao_09, colisao_10;

	localparam obstaculo_01_ini_y = 100;
	localparam obstaculo_01_fin_y = 105;
	localparam obstaculo_01_ini_x = 100;
	localparam obstaculo_01_fin_x = 350;

	localparam obstaculo_02_ini_y = 100;
	localparam obstaculo_02_fin_y = 275;
	localparam obstaculo_02_ini_x = 340;
	localparam obstaculo_02_fin_x = 350;
	
	localparam obstaculo_03_ini_y = 170;
	localparam obstaculo_03_fin_y = 175;
	localparam obstaculo_03_ini_x = 100;
	localparam obstaculo_03_fin_x = 280;
	
	localparam obstaculo_04_ini_y = 170;
	localparam obstaculo_04_fin_y = 345;
	localparam obstaculo_04_ini_x = 270;
	localparam obstaculo_04_fin_x = 280;
	
	localparam obstaculo_05_ini_y = 270;
	localparam obstaculo_05_fin_y = 275;
	localparam obstaculo_05_ini_x = 340;
	localparam obstaculo_05_fin_x = 590;
	
	localparam obstaculo_06_ini_y = 340;
	localparam obstaculo_06_fin_y = 345;
	localparam obstaculo_06_ini_x = 270;
	localparam obstaculo_06_fin_x = 510;
	
	localparam obstaculo_07_ini_y = 270;
	localparam obstaculo_07_fin_y = 445;
	localparam obstaculo_07_ini_x = 580;
	localparam obstaculo_07_fin_x = 590;
	
	localparam obstaculo_08_ini_y = 340;
	localparam obstaculo_08_fin_y = 385;
	localparam obstaculo_08_ini_x = 500;
	localparam obstaculo_08_fin_x = 510;
	
	localparam obstaculo_09_ini_y = 440;
	localparam obstaculo_09_fin_y = 445;
	localparam obstaculo_09_ini_x = 100;
	localparam obstaculo_09_fin_x = 590;
	
	localparam obstaculo_10_ini_y = 380;
	localparam obstaculo_10_fin_y = 385;
	localparam obstaculo_10_ini_x = 100;
	localparam obstaculo_10_fin_x = 510;	
	
	always @(negedge VGA_clk)
		begin
			colisao_01 <= (yPos > (obstaculo_01_ini_y - tamanho) && yPos < (obstaculo_01_fin_y - tamanho)) && ((xPos + tamanho) > obstaculo_01_ini_x && xPos < obstaculo_01_fin_x);
			colisao_02 <= (yPos > (obstaculo_02_ini_y - tamanho) && yPos < (obstaculo_02_fin_y - tamanho)) && ((xPos + tamanho) > obstaculo_02_ini_x && xPos < obstaculo_02_fin_x);
			colisao_03 <= (yPos > (obstaculo_03_ini_y - tamanho) && yPos < (obstaculo_03_fin_y - tamanho)) && ((xPos + tamanho) > obstaculo_03_ini_x && xPos < obstaculo_03_fin_x);
			colisao_04 <= (yPos > (obstaculo_04_ini_y - tamanho) && yPos < (obstaculo_04_fin_y - tamanho)) && ((xPos + tamanho) > obstaculo_04_ini_x && xPos < obstaculo_04_fin_x);
			colisao_05 <= (yPos > (obstaculo_05_ini_y - tamanho) && yPos < (obstaculo_05_fin_y - tamanho)) && ((xPos + tamanho) > obstaculo_05_ini_x && xPos < obstaculo_05_fin_x);
			colisao_06 <= (yPos > (obstaculo_06_ini_y - tamanho) && yPos < (obstaculo_06_fin_y - tamanho)) && ((xPos + tamanho) > obstaculo_06_ini_x && xPos < obstaculo_06_fin_x);
			colisao_07 <= (yPos > (obstaculo_07_ini_y - tamanho) && yPos < (obstaculo_07_fin_y - tamanho)) && ((xPos + tamanho) > obstaculo_07_ini_x && xPos < obstaculo_07_fin_x);
			colisao_08 <= (yPos > (obstaculo_08_ini_y - tamanho) && yPos < (obstaculo_08_fin_y - tamanho)) && ((xPos + tamanho) > obstaculo_08_ini_x && xPos < obstaculo_08_fin_x);
			colisao_09 <= (yPos > (obstaculo_09_ini_y - tamanho) && yPos < (obstaculo_09_fin_y - tamanho)) && ((xPos + tamanho) > obstaculo_09_ini_x && xPos < obstaculo_09_fin_x);			
			colisao_10 <= (yPos > (obstaculo_10_ini_y - tamanho) && yPos < (obstaculo_10_fin_y - tamanho)) && ((xPos + tamanho) > obstaculo_10_ini_x && xPos < obstaculo_10_fin_x);			
		end

	assign colisao_max_y =  colisao_01 ||
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