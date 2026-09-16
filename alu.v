module alu(
    input [31:0] A, B,
    input [2:0] sel,
    output reg [31:0] Y
);

always @(*) begin
    case(sel)
        3'b000: Y = A + B;
3'b001: Y = A - B;
        3'b010: Y = A & B;
        3'b011: Y = A | B;
        3'b100: Y = A ^ B;
        default: Y = 32'b0;
    endcase
end

endmodule
