//====================================================
// 1-Digit BCD Adder
//====================================================
// Inputs  : A[3:0], B[3:0], Cin
// Outputs : Sum[3:0], Cout
//
// If binary sum > 9, add 6 (0110) for BCD correction.
//====================================================

module bcd_adder (
    input  [3:0] A,
    input  [3:0] B,
    input        Cin,
    output reg [3:0] Sum,
    output reg       Cout
);

reg [4:0] Binary_Sum;

always @(*) begin

    // Binary addition
    Binary_Sum = A + B + Cin;

    // BCD correction
    if (Binary_Sum > 5'd9) begin
        Binary_Sum = Binary_Sum + 5'd6;
        Cout = 1'b1;
    end
    else begin
        Cout = 1'b0;
    end

    // BCD result
    Sum = Binary_Sum[3:0];

end

endmodule