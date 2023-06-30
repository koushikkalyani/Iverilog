module Nand(a,b,f);
input a,b;
output f;
assign f=~(a & b);
endmodule
