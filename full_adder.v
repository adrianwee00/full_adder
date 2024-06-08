`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2024 09:05:29 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input [3:0]a,b,
    output [3:0]z
    );
    wire [4:0]connect_wire;
    assign connect_wire[0] = 1'b0;

    genvar i;
    generate 
        for(i = 0; i < 4; i = i + 1) begin:full_adder_instances
            full_adder_1 full_adder_4(
                .a(a[i]),
                .b(b[i]),
                .ci(connect_wire[i]),
                .co(connect_wire[i+1]),
                .s(z[i])
                );
        end
    endgenerate
endmodule
