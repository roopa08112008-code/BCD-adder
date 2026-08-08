//====================================================
// Testbench for 1-Digit BCD Adder
//====================================================

module bcd_adder_tb;

reg [3:0] A;
reg [3:0] B;
reg       Cin;

wire [3:0] Sum;
wire       Cout;

// Instantiate BCD Adder
bcd_adder uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin

    $display("==============================================");
    $display("              BCD ADDER TEST");
    $display("==============================================");
    $display(" A     B    Cin | Cout  Sum");
    $display("----------------------------");

    // Test 1: 2 + 3 = 5
    A = 4'b0010;
    B = 4'b0011;
    Cin = 0;
    #10;
    $display("%b  %b    %b  |  %b    %b",
             A, B, Cin, Cout, Sum);

    // Test 2: 4 + 5 = 9
    A = 4'b0100;
    B = 4'b0101;
    Cin = 0;
    #10;
    $display("%b  %b    %b  |  %b    %b",
             A, B, Cin, Cout, Sum);

    // Test 3: 5 + 6 = 11
    A = 4'b0101;
    B = 4'b0110;
    Cin = 0;
    #10;
    $display("%b  %b    %b  |  %b    %b",
             A, B, Cin, Cout, Sum);

    // Test 4: 7 + 8 = 15
    A = 4'b0111;
    B = 4'b1000;
    Cin = 0;
    #10;
    $display("%b  %b    %b  |  %b    %b",
             A, B, Cin, Cout, Sum);

    // Test 5: 9 + 1 = 10
    A = 4'b1001;
    B = 4'b0001;
    Cin = 0;
    #10;
    $display("%b  %b    %b  |  %b    %b",
             A, B, Cin, Cout, Sum);

    // Test 6: 8 + 1 + 1 = 10
    A = 4'b1000;
    B = 4'b0001;
    Cin = 1;
    #10;
    $display("%b  %b    %b  |  %b    %b",
             A, B, Cin, Cout, Sum);

    // Test 7: 9 + 9 = 18
    A = 4'b1001;
    B = 4'b1001;
    Cin = 0;
    #10;
    $display("%b  %b    %b  |  %b    %b",
             A, B, Cin, Cout, Sum);

    // Test 8: 9 + 9 + 1 = 19
    A = 4'b1001;
    B = 4'b1001;
    Cin = 1;
    #10;
    $display("%b  %b    %b  |  %b    %b",
             A, B, Cin, Cout, Sum);

    $display("----------------------------");
    $display("Simulation completed successfully.");

    $finish;
end

endmodule