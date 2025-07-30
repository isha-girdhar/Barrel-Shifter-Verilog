`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2025 16:14:40
// Design Name: 
// Module Name: barrel_shifter_tb
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


module barrel_shifter_tb;
 parameter N=8;
 reg  [N-1:0] data_in;
    reg  [$clog2(N)-1:0] shift_amt;
    reg  shift_dir;
    wire [N-1:0] data_out;
    
    barrel_shifter uut(
    .data_in(data_in),
    .shift_amt(shift_amt),
    .shift_dir(shift_dir),
        .data_out(data_out)
    );
    initial begin
    $monitor("Time=%t | data_in=%b | shift_amt = %d | shift_dir = %b | data_out = %b",$time,data_in, shift_amt, shift_dir, data_out);
    data_in = 8'b10101010; shift_amt = 1; shift_dir = 0; #10;
    data_in = 8'b10101010; shift_amt = 2; shift_dir = 0; #10;
            // Test right shift
        data_in = 8'b10101010; shift_amt = 1; shift_dir = 1; #10;
        data_in = 8'b10101010; shift_amt = 3; shift_dir = 1; #10;
        $finish;
        end

endmodule
