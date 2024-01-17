class trans;
	randc bit a;
	randc bit b;
	     bit y;
	function void print(string name);
		$display("%t a=%0d b=%0d y=%0d",$time,a,b,y);
	endfunction
endclass
