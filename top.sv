`include "andgate.v"
`include "common.sv"
`include "interface.sv"
`include "and_tranx.sv"
`include "and_gen.sv"
`include "and_drv.sv"
`include "and_mon.sv"
`include "and_cov.sv"
`include "and_env.sv"



module top();
and_env env;

intf_gate pif();
 andgate dut(.a(pif.a),.b(pif.b),.y(pif.y));

 initial begin
	   env = new();
	   env.run();
   end
   initial begin
	   #100;
	   $finish();
   end
   endmodule
