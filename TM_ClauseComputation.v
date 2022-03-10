
//////////////////////////////////////////////////////////////////////////////////
// Company: IIT Bhubaneswar
// Engineer: Prajwal Kumar Sahu
// 
// Create Date: 27.12.2021 15:13:16
// Design Name: Clause Computation Model
// Module Name: ClauseCalculation
// Project Name: Clause Computation for Image Classification
// Target Devices: 
// Tool Versions: 
// Description: To take the exclude states and the literals to compute the clause output
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module ClauseCalculation(
    input [109500-1:0] features,
    input [219000-1:0] exclude_state,
    output reg clause
    );
    
    wire [219000-1:0] literals;
    reg [219000-1:0] in_and;
    integer i;
    
    assign literals={features,~features};
    
    always @(literals,exclude_state)
    begin  
        for (i=0; i<219000; i=i+1)
        begin
            if (exclude_state[i]==1)
            in_and[i]=1;
            else
            in_and[i]=literals[i]; 
        end
        
        clause=&in_and;
    end
    
endmodule
