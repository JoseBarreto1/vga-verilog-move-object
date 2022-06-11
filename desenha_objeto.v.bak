module desenha_objeto (
	input wire [9:0] col, xpos,
	input wire [8:0] row, ypos, 
	output wire desenho
);

	localparam TAMANHO = 100;
	
	assign desenho = (col > xpos & col < (xpos+TAMANHO) & row > ypos & row < (ypos+TAMANHO)) ? 1'b1 : 1'b0;

endmodule