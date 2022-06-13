module movimenta_objetos (
	input wire [9:0] col, //640
	input wire [8:0] row, //480
	input wire disp_ena, clk,
	input wire [2:0] SW, 
	input wire [3:0] KEY,
	output reg [7:0] red, green, blue
);

	localparam object_size = 50;
	localparam velocidade = 1; //max 7x
	
	reg [7:0] red_obj, green_obj, blue_obj;
	reg [9:0] countX = 150;	
	reg [8:0] countY = 150;

// Velocidade objeto
	velocidade_objeto speed (
		 .VGA_clk     (clk),
		 .velocidade  (velocidade),
	    .vClock      (vClock)
	);
	
// Instancia Obstaculos
	desenha_obstaculo obstaculos (
		 .VGA_clk   (clk),
		 .xCol      (col),
		 .yRow      (row),
		 .obstaculo (obstaculo)
	);
		
// Instancia Quadrado
	desenha_objeto quadrado (
		 .VGA_clk  (clk),
		 .tamanho  (object_size),
		 .xCol     (col),
		 .xPos     (countX),
		 .yRow     (row),
		 .yPos     (countY),
		 .desenho  (desenho)
	);
	
// Instancia limites objeto
	colide_objeto limites (
		 .VGA_clk  		  (clk),
		 .tamanho  		  (object_size),
		 .xPos     		  (countX),
		 .yPos     		  (countY),
		 .colisao_max_x  (max_x),
		 .colisao_min_x  (min_x),
		 .colisao_max_y  (max_y),
		 .colisao_min_y  (min_y)
	);
	
//	Movimenta objeto
	always @(posedge vClock)		
		begin
			if(!KEY[0] && !max_x) countX <= countX+2;
			if(!KEY[1] && !min_x) countX <= countX-2;
			if(!KEY[2] && !min_y) countY <= countY-2;
			if(!KEY[3] && !max_y) countY <= countY+2;
		end

//	Pinta objeto caso exista 
	always @(disp_ena) begin	
		if (disp_ena == 1'b1) begin	
			if(desenho) begin
				red   <= 8'hff;
				green <= 8'h0;
				blue  <= 8'h0;				
			end
			else if(obstaculo) begin
				red   <= 8'hff;
				green <= 8'hff;
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
