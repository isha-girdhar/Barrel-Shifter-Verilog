`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2025 16:06:41
// Design Name: 
// Module Name: barrel_shifter
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


module barrel_shifter(
 input  [N-1:0] data_in,
    input  [$clog2(N)-1:0] shift_amt,  // Shift amount barrel shifter with N-bit input, so the maximum you can shift is N-1 positions can represent values from 0 to 7 for shifting an 8-bit value for N=8
    input  shift_dir,                  // 0: left, 1: right
    output [N-1:0] data_out

    );
    assign data_out = (shift_dir == 0) ? 
                      (data_in << shift_amt) : 
                      (data_in >> shift_amt);
endmodule
