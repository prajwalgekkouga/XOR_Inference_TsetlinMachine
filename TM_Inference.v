`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2021 16:02:26
// Design Name: 
// Module Name: Inference
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
    input [109500-1:0] features,
    input [219000-1:0] exclude_state_1,
    input [219000-1:0] exclude_state_2,
    input [219000-1:0] exclude_state_3,
    input [219000-1:0] exclude_state_4,
    input [219000-1:0] exclude_state_5,
    input [219000-1:0] exclude_state_6,
    input [219000-1:0] exclude_state_7,
    input [219000-1:0] exclude_state_8,
    input [219000-1:0] exclude_state_9,
    input [219000-1:0] exclude_state_10,
    output verdict
    );

wire [9:0] clause_outputs;

//genvar i;
//generate for (i = 0; i < 1999; i = i + 1) 
//begin
    ClauseCalculation CC1 (features,exclude_state_1,clause_outputs[0]);
    ClauseCalculation CC2 (features,exclude_state_2,clause_outputs[1]);
ClauseCalculation CC3 (features,exclude_state_3,clause_outputs[2]);
ClauseCalculation CC4 (features,exclude_state_4,clause_outputs[3]);
ClauseCalculation CC5 (features,exclude_state_5,clause_outputs[4]);
ClauseCalculation CC6 (features,exclude_state_6,clause_outputs[5]);
ClauseCalculation CC7 (features,exclude_state_7,clause_outputs[6]);
ClauseCalculation CC8 (features,exclude_state_8,clause_outputs[7]);
ClauseCalculation CC9 (features,exclude_state_9,clause_outputs[8]);
ClauseCalculation CC10 (features,exclude_state_10,clause_outputs[9]);
//end endgenerate



Sum_And_Threshold SAT(clause_outputs[9:5],clause_outputs[4:0],verdict);
   
endmodule
