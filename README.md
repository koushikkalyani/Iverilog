# Iverilog
My Verilog work in terminal 
This Repository is created for doing verilog in linux(mint) terminal.
required installations are iverilog and gtkwave.
open your terminal and type the following
.....sudo apt install iverilog gtkwave then enter your PC password.
note : here iverilog(compiler) and gtkwave(waveform viewer) are two different things but we can install at the sametime.
Now,create a folder for your work .
Here I am using Nvim text editor for writng source code and testbenches.
write your source code with the extension "filename.v" and a separate testbench file as "filename_tb.v".
your testbench file should include the following in the code.
$dumpfile("waveformfilename.vcd");
$dumpvars(0,filename_tb.v);
$finish;
refer to my codes for refernce.
now for compilation
open terminal in the same directory and type
1)iverilog -o filename_wave(user defined any name you can give) filename.v filename_tb.v
if there are no errors above command will generate filename_wave.
now type     vvp filename_wave
this will generate waveformfilename.vcd file
Now,to see waveforms type "gtkwave waveformfile.vcd" orelse double click on previously generated .vcd file.
