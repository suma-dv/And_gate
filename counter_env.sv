class counter_env extends uvm_env;
	`uvm_component_utils(counter_env)
	counter_agent agent;

	function new(string name = "counter_env",uvm_component parent = null);	
		super.new(name,parent);
	endfunction

	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		agent = counter_agent::type_id::create("agent",this);
	endfunction
endclass


