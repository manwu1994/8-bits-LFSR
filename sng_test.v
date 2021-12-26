`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/24/2021 09:41:52 PM
// Design Name: 
// Module Name: sng_test
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


module sng_test;
wire [7:0] data;
reg [7:0] seed;
reg enable;
reg reset;
reg clk;

//SNG(seed,data,enable,reset,clk);
SNG U1(.data(data),.seed(seed),.enable(enable),.reset(reset),.clk(clk));

initial 
    begin
        clk=0;reset=1;enable=0;seed=8'b0010_0001;
        #20;
        reset=0;
        enable=1;
     end
always #15 clk=~clk;
     
endmodule
