class and_gen;
	trans tx;
task run();
	repeat(10) begin
	tx =new();
	tx.randomize();
	gen2drv.put(tx);
end
endtask
endclass
