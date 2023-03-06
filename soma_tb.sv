// Code your testbench here
// or browse Examples


// Code your testbench here
// or browse Examples

module soma_tb;
  
  reg [1:0]a_tb, b_tb;
  wire [6:0] out_tb;
  
  soma soma_0 (a_tb,b_tb,out_tb);

  initial begin
    for (int j=0; j<=3; j=j+1)
	begin
      a_tb = j;
      for (int i=0; i<=3; i=i+1)
      	begin
        	b_tb = i;
        	#10;
        	$display("a:%d, b:%d, out:%b", a_tb, b_tb, out_tb);
      	end
    end
  end
        
endmodule 
