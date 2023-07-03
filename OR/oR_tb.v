
module oR_tb();
reg at;
reg bt;
wire ft;

oRk u0_DUT(.a(at),.b(bt),.f(ft));
always begin 
$dumpfile("test_oR.vcd");
$dumpvars(0,oR_tb);

 at=0;bt=0;
#5 at=0;bt=1;
#5 at=1;bt=0;
#5 at=1;bt=1;
#5 at=1;bt=1;
$finish;
end

endmodule
