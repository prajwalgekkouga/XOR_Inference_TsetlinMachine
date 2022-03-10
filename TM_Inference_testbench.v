`timescale 1ns / 1ps
module Inference_TestBench;

    reg [109500-1:0] features;
    reg [109500-1:0] exclude_state_1;
    reg [219000-1:0] exclude_state_2;
    reg [219000-1:0] exclude_state_3;
    reg [219000-1:0] exclude_state_4;
    reg [219000-1:0] exclude_state_5;
    reg [219000-1:0] exclude_state_6;
    reg [219000-1:0] exclude_state_7;
    reg [219000-1:0] exclude_state_8;
    reg [219000-1:0] exclude_state_9;
    reg [219000-1:0] exclude_state_10;
    wire verdict;

Inference UUT (features,exclude_state_1,exclude_state_2,exclude_state_3,exclude_state_4,exclude_state_5,exclude_state_6,exclude_state_7,exclude_state_8,exclude_state_9,exclude_state_10,verdict);

initial
begin
exclude_state_1=325877265;
exclude_state_2=946867508;
exclude_state_3=835783467;
#20 features=3825738;
#20 $finish;
end


endmodule
