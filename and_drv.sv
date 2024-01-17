 class and_drv;
	 trans tx;
	 virtual intf_gate vif;

task run();
	vif=top.pif;
	forever begin
	gen2drv.get(tx);
        drive(tx);
	#2;
        tx.print("driver");
end
endtask

task drive(trans tx);
	vif.a = tx.a;
	vif.b = tx.b;
	tx.y=vif.y;
endtask

endclass
