`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/24/2021 09:16:33 PM
// Design Name: 
// Module Name: SNG
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Generate stochastic number for 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SNG(seed,data,enable,reset,clk);
    input [7:0] seed;
    output [7:0] data;
    input enable;
    input reset;
    input clk;
    
    reg [8:1] out_LFSR;
    wire feedback;
    
    assign feedback=out_LFSR[8]^out_LFSR[6]^out_LFSR[5]^out_LFSR[4];
    
    always @(posedge clk or posedge reset)
    begin
        if (reset)
            out_LFSR<=seed;
        else if (enable)
            out_LFSR= {out_LFSR[7:1],feedback};
     end
     
     assign data=out_LFSR;
        
    
endmodule
