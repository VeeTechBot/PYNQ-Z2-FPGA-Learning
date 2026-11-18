`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2026 18:50:54
// Design Name: 
// Module Name: full_adder_using_HA
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


module full_adder_using_HA(
    output sum,
    output carry,
    input a,
    input b,
    input cin
    );
    wire w1, w2, w3;
    
    half_adder HA1(
    .Sum(w1),
    .Carry(w2),
    .A(a),
    .B(b)
    );
    
    half_adder HA2(
    .Sum(sum),
    .Carry(w3),
    .A(w1),
    .B(cin)
    );
    
    assign carry = w3 | w2;
endmodule
