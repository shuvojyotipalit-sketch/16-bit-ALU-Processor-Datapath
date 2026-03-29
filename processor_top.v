module processor_top #(parameter WIDTH=16)
(
    input clk,
    input [2:0] opcode,
    input [1:0] rs1,
    input [1:0] rs2,
    input [1:0] rd,
    output [WIDTH-1:0] Result_out,
    output Carry_out,
    output Zero_out,
    output Overflow_out,
    output [WIDTH-1:0] A_out,
    output [WIDTH-1:0] B_out
);

wire [WIDTH-1:0] A;
wire [WIDTH-1:0] B;
wire [WIDTH-1:0] Result;

wire [2:0] alu_sel;
wire reg_write;

wire Carry;
wire Zero;
wire Overflow;

control_unit CU(
    .opcode(opcode),
    .alu_sel(alu_sel),
    .reg_write(reg_write)
);

register_file RF(
    .clk(clk),
    .we(reg_write),
    .rs1(rs1),
    .rs2(rs2),
    .rd(rd),
    .write_data(Result),
    .read_data1(A),
    .read_data2(B)
);

alu #(WIDTH) ALU(
    .A(A),
    .B(B),
    .ALU_Sel(alu_sel),
    .Result(Result),
    .Carry(Carry),
    .Zero(Zero),
    .Overflow(Overflow)
);

assign Result_out   = Result;
assign Carry_out    = Carry;
assign Zero_out     = Zero;
assign Overflow_out = Overflow;
assign A_out        = A;
assign B_out        = B;

endmodule