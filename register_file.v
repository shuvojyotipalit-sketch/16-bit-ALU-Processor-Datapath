`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2026 03:25:01
// Design Name: 
// Module Name: register_file
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module register_file #(parameter WIDTH=16)
(
    input clk,
    input we,
    input [1:0] rs1,
    input [1:0] rs2,
    input [1:0] rd,
    input [WIDTH-1:0] write_data,
    output [WIDTH-1:0] read_data1,
    output [WIDTH-1:0] read_data2
    );
    reg [WIDTH-1:0] regfile [3:0];

assign read_data1 = regfile[rs1];
assign read_data2 = regfile[rs2];

always @(posedge clk)
begin
    if(we)
        regfile[rd] <= write_data;
end
endmodule
