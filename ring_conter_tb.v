`timescale 1ns / 1ps



module ring_conter_tb;
reg clc,rst;
wire [3:0]out;
ring_counter uut(out,clc,rst);
always #20 clc=~clc;
initial begin
rst=1; clc=0;
#40
rst=0;
end
endmodule
