`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2026 10:21:27
// Design Name: 
// Module Name: alu
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


module alu #(parameter WIDTH = 16)
(
    input [WIDTH-1:0] A,
    input [WIDTH-1:0] B,
    input [2:0] ALU_Sel,
    output reg [WIDTH-1:0] Result,
    output reg Carry,
    output Zero,
    output Overflow
    );
    reg [WIDTH:0] temp;

always @(*) begin
case(ALU_Sel)
3'b000: begin
temp = A + B;
Result = temp[WIDTH-1:0];
Carry = temp[WIDTH];
end

3'b001: begin
temp = A - B;
Result = temp[WIDTH-1:0];
Carry = temp[WIDTH];
end

3'b010: Result = A & B;
3'b011: Result = A | B;
3'b100: Result = A ^ B;
3'b101: Result = A << 1;
3'b110: Result = A >> 1;
3'b111: Result = ~(A | B);
endcase
end
assign Zero = (Result == 0);
assign Overflow =
(A[WIDTH-1] & B[WIDTH-1] & ~Result[WIDTH-1]) |
(~A[WIDTH-1] & ~B[WIDTH-1] & Result[WIDTH-1]);

endmodule
