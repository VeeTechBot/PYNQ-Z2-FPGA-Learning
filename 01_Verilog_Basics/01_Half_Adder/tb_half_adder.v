`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2026 17:36:46
// Design Name: 
// Module Name: tb_half_adder
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
`timescale 1ns / 1ps

module tb_half_adder();
    reg A, B;
    wire Sum, Carry;
    
    half_adder uut (
    .Sum(Sum),
    .Carry(Carry),
    .A(A),
    .B(B)
    );
    initial begin 
        A= 0; B = 0; #10;
        A= 0; B = 1; #10;
        A= 1; B = 0; #10;
        A= 1; B = 1; #10;
        $finish; 
    end
endmodule
