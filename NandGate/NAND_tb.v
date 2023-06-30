module Nand_tb();
reg a,b;
wire f;

Nand DUT(.a(a),.b(b),.f(f));
initial begin
	$dumpfile("Nand_test.vcd");
	$dumpvars(0,Nand_tb);

	a=0;b=0;
	#5 a=0;b=1;
	#5 a=1;b=0;
	#5 a=1;b=1;
	#5 $finish;
end
endmodule
