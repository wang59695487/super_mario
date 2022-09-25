`timescale 1ns / 1ps

module clkdiv(
    input wire clk,
    input wire rst,
    output wire [31:0] clk_div
    );
    reg [31:0] counter;
	 
	 initial begin
		counter = 0;
	 end
    
    always @ (posedge clk) begin
        if(rst == 1'b1) begin
            counter <= 0;
        end
        else begin
            counter <= counter + 1;
        end
    end
    
    assign clk_div = counter;
endmodule
