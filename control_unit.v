`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2026 03:28:29
// Design Name: 
// Module Name: control_unit
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


module control_unit(
    input [2:0] opcode,
    output reg [2:0] alu_sel,
    output reg reg_write
    );
    always @(*) begin

case(opcode)

3'b000: begin alu_sel=3'b000; reg_write=1; end // ADD
3'b001: begin alu_sel=3'b001; reg_write=1; end // SUB
3'b010: begin alu_sel=3'b010; reg_write=1; end // AND
3'b011: begin alu_sel=3'b011; reg_write=1; end // OR
3'b100: begin alu_sel=3'b100; reg_write=1; end // XOR
3'b101: begin alu_sel=3'b101; reg_write=1; end // SHIFT
3'b110: begin alu_sel=3'b110; reg_write=1; end
3'b111: begin alu_sel=3'b111; reg_write=1; end

endcase

end

endmodule
