 class and_mon;
	 trans tx;
	 virtual intf_gate vif;
 task run();
     vif = top.pif;
     
     repeat(10) begin
     tx = new();
     vif.a = tx.a;
     vif.b = tx.b; 
     vif.y = tx.y;
         mon2cov.put(tx);
	  //#2;

     end
     endtask
          endclass
