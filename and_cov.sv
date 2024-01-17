 class and_cov;
	 trans tx;

  covergroup cg;
   c1: coverpoint tx.a;
   c2: coverpoint tx.b;
  endgroup

  function new();
	  cg = new();
  endfunction

  task run();
	  repeat(10) begin
        mon2cov.get(tx);	        
       	cg.sample();
  end
  endtask
 endclass  
