`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2021 15:42:17
// Design Name: 
// Module Name: Sum_And_Threshold for XOR
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 4 clauses will give their input to this module
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Sum_And_Threshold(
    input [2-1:0] pos_clause,
    input [2-1:0] neg_clause,
    output reg decision
    );
    
    integer i,k;
    reg [2:0] countp,countn;
    
    always@(pos_clause,neg_clause)
    begin
        countp=0;
        countn=0;
        for (i=0;i<2;i=i+1)
        begin

            if (pos_clause[i]==1)
            countp=countp+1;
        end
        
        for (i=0;i<2;i=i+1)
        begin
            if (neg_clause[i]==1)
            countn=countn+1;
        end
        
            k=countp-countn;
        
        if (k<0)
        decision=0;
        else
        decision=1;
        
    end
               
endmodule
