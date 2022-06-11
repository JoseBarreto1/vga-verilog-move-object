module interface_vga (
	input wire        clk, 
	input wire [2:0]  SW,
	input wire [3:0]  KEY,
	output wire [7:0] red, green, blue, 
	output wire       h_sync, v_sync, 
	output wire       n_sync, n_blank, 
	output wire       vga_clk
);

	wire clk_pll;
	wire [31:0] col, row;
	wire disp_ena;
	wire vsync;

	assign vga_clk = clk_pll;

// Instanciar PLL para converter os 50 MHz em 25MHz
	pll vgapll_inst (
		 .inclk0    (clk),
		 .c0        (clk_pll)
	);
	
// Controlador VGA instantâneo
	controlador_vga controle (
		.pixel_clk  (clk_pll),
		.reset_n    (1'b1),
		.h_sync     (h_sync),
		.v_sync     (v_sync),
		.disp_ena   (disp_ena),
		.column     (col),
		.row        (row),
		.n_blank		(n_blank),
		.n_sync		(n_sync)
	);

// Bloco lógico combinacional que determina as saídas de cores RGB fornecidas	
	movimenta_objetos movimenta (
		.col       (col[9:0]),
		.row       (row[8:0]),
		.disp_ena  (disp_ena),
		.clk		  (clk_pll),
		.SW        (SW),
		.KEY	 	  (KEY),
		.red       (red),
		.green     (green),
		.blue      (blue),
	);
		
endmodule