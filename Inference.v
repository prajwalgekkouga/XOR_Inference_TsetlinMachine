`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2021 16:02:26
// Design Name: 
// Module Name: Inference for XOR
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


module Inference(
    input [2-1:0] features,
    input [4-1:0] exclude_state1,
    input [4-1:0] exclude_state2,
    input [4-1:0] exclude_state3,
    input [4-1:0] exclude_state4,
    output verdict
    );

wire [4-1:0] clause_outputs;

ClauseCalculation CC1 (features,exclude_state1,clause_outputs[3]);
ClauseCalculation CC2 (features,exclude_state2,clause_outputs[2]);
ClauseCalculation CC3 (features,exclude_state3,clause_outputs[1]);
ClauseCalculation CC4 (features,exclude_state4,clause_outputs[0]);



Sum_And_Threshold SAT(clause_outputs[3:2],clause_outputs[1:0],verdict);
   
endmodule
