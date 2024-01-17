 class and_env;
	 and_gen gen=new();
	 and_drv drv=new();
	 and_mon mon=new();
	 and_cov coverage=new();
 task run();
 fork
gen.run();
drv.run();
mon.run();
coverage.run();
join
endtask
endclass
