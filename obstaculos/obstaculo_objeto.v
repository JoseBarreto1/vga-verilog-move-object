module desenha_obstaculo (
	input VGA_clk,
	input wire [9:0] xCol, //640
	input wire [8:0] yRow, //480
	output wire obstaculo
);
	
	localparam obstaculo_01_ini_x = 100;
	localparam obstaculo_01_fin_x = 350;
	localparam obstaculo_01_ini_y = 100;
	localparam obstaculo_01_fin_y = 110;//largura em y
	
	localparam obstaculo_02_ini_x = 340;
	localparam obstaculo_02_fin_x = 350;//largura em x
	localparam obstaculo_02_ini_y = 100;
	localparam obstaculo_02_fin_y = 280;
	
	localparam obstaculo_03_ini_x = 100;
	localparam obstaculo_03_fin_x = 280;
	localparam obstaculo_03_ini_y = 170;
	localparam obstaculo_03_fin_y = 180;//largura em y
	
	localparam obstaculo_04_ini_x = 270;
	localparam obstaculo_04_fin_x = 280;//largura em x
	localparam obstaculo_04_ini_y = 170;
	localparam obstaculo_04_fin_y = 350;
	
	localparam obstaculo_05_ini_x = 340;
	localparam obstaculo_05_fin_x = 590;
	localparam obstaculo_05_ini_y = 270;
	localparam obstaculo_05_fin_y = 280;//largura em y
	
	localparam obstaculo_06_ini_x = 270;
	localparam obstaculo_06_fin_x = 510;
	localparam obstaculo_06_ini_y = 340;
	localparam obstaculo_06_fin_y = 350;//largura em y
	
	localparam obstaculo_07_ini_x = 580;
	localparam obstaculo_07_fin_x = 590;//largura em x
	localparam obstaculo_07_ini_y = 270;
	localparam obstaculo_07_fin_y = 450;
	
	localparam obstaculo_08_ini_x = 500;
	localparam obstaculo_08_fin_x = 510;//largura em x
	localparam obstaculo_08_ini_y = 340;
	localparam obstaculo_08_fin_y = 390;
	
	localparam obstaculo_09_ini_x = 100;
	localparam obstaculo_09_fin_x = 590;
	localparam obstaculo_09_ini_y = 440;
	localparam obstaculo_09_fin_y = 450;//largura em y
	
	localparam obstaculo_10_ini_x = 100;
	localparam obstaculo_10_fin_x = 510;
	localparam obstaculo_10_ini_y = 380;
	localparam obstaculo_10_fin_y = 390;//largura em y
	
	reg desenho_01_x, desenho_01_y;	
	reg desenho_02_x, desenho_02_y;	
	reg desenho_03_x, desenho_03_y;	
	reg desenho_04_x, desenho_04_y;
	reg desenho_05_x, desenho_05_y;	
	reg desenho_06_x, desenho_06_y;
	reg desenho_07_x, desenho_07_y;	
	reg desenho_08_x, desenho_08_y;
	reg desenho_09_x, desenho_09_y;	
	reg desenho_10_x, desenho_10_y;
	
	always @(negedge VGA_clk)
		begin
			desenho_01_x <= (xCol > obstaculo_01_ini_x && xCol < obstaculo_01_fin_x);
			desenho_01_y <= (yRow > obstaculo_01_ini_y && yRow < obstaculo_01_fin_y);
			
			desenho_02_x <= (xCol > obstaculo_02_ini_x && xCol < obstaculo_02_fin_x);
			desenho_02_y <= (yRow > obstaculo_02_ini_y && yRow < obstaculo_02_fin_y);
			
			desenho_03_x <= (xCol > obstaculo_03_ini_x && xCol < obstaculo_03_fin_x);
			desenho_03_y <= (yRow > obstaculo_03_ini_y && yRow < obstaculo_03_fin_y);
			
			desenho_04_x <= (xCol > obstaculo_04_ini_x && xCol < obstaculo_04_fin_x);
			desenho_04_y <= (yRow > obstaculo_04_ini_y && yRow < obstaculo_04_fin_y);
			
			desenho_05_x <= (xCol > obstaculo_05_ini_x && xCol < obstaculo_05_fin_x);
			desenho_05_y <= (yRow > obstaculo_05_ini_y && yRow < obstaculo_05_fin_y);
			
			desenho_06_x <= (xCol > obstaculo_06_ini_x && xCol < obstaculo_06_fin_x);
			desenho_06_y <= (yRow > obstaculo_06_ini_y && yRow < obstaculo_06_fin_y);
			
			desenho_07_x <= (xCol > obstaculo_07_ini_x && xCol < obstaculo_07_fin_x);
			desenho_07_y <= (yRow > obstaculo_07_ini_y && yRow < obstaculo_07_fin_y);
			
			desenho_08_x <= (xCol > obstaculo_08_ini_x && xCol < obstaculo_08_fin_x);
			desenho_08_y <= (yRow > obstaculo_08_ini_y && yRow < obstaculo_08_fin_y);
			
			desenho_09_x <= (xCol > obstaculo_09_ini_x && xCol < obstaculo_09_fin_x);
			desenho_09_y <= (yRow > obstaculo_09_ini_y && yRow < obstaculo_09_fin_y);
			
			desenho_10_x <= (xCol > obstaculo_10_ini_x && xCol < obstaculo_10_fin_x);
			desenho_10_y <= (yRow > obstaculo_10_ini_y && yRow < obstaculo_10_fin_y);
		end
		
	assign obstaculo = (desenho_01_x && desenho_01_y) ||
							 (desenho_02_x && desenho_02_y) ||
							 (desenho_03_x && desenho_03_y) ||
							 (desenho_04_x && desenho_04_y) ||
							 (desenho_05_x && desenho_05_y) ||
							 (desenho_06_x && desenho_06_y) ||
							 (desenho_07_x && desenho_07_y) ||
							 (desenho_08_x && desenho_08_y) ||
							 (desenho_09_x && desenho_09_y) ||
							 (desenho_10_x && desenho_10_y);

endmodule