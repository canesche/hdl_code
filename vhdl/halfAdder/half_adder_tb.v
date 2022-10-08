Stem_proc: process 
	begin
		B<='0'; A<='0';
		wait for 100 ns;
		A<='1';
		wait for 10 ns;
		B<='1'; A<='0';
		wait for 10 ns;
		B<='1'; A<='1';
		wait;
	end process;
