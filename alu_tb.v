module alu_tb;

reg [31:0] A, B;
reg [2:0] sel;
wire [31:0] Y;

alu uut(A, B, sel, Y);

initial begin
    A = 32'd10; B = 32'd5;

    sel = 3'b000; #10; // ADD
    sel = 3'b001; #10; // SUB
    sel = 3'b010; #10; // AND
    sel = 3'b011; #10; // OR
    sel = 3'b100; #10; // XOR

    $finish;
end

endmodule
