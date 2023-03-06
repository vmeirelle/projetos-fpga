// Code your design here


module soma(input [1:0] a, b, output reg [7:0] out );
  
  always @(*)
    case(a+b)
      0: out = ~7'b0111111;
      1: out = ~7'b0000110;
      2: out = ~7'b1011011;
      3: out = ~7'b1001111;
      4: out = ~7'b1100110;
      5: out = ~7'b1101101;
      6: out = ~7'b1111101;
      //7: out = ~7'b0000111;
      //8: out = ~7'b1101111;
    endcase
 // end
  
  
endmodule