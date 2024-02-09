
all:	result.vcd
result.vcd:	GCD.vhdl	GCD_tb.vhdl
	ghdl	-a	-fsynopsys	GCD.vhdl
	ghdl	-a	 GCD_tb.vhdl
	ghdl	-e	-fsynopsys GCD_tb
	ghdl	-r	-fsynopsys GCD_tb	--vcd=result.vcd	--stop-time=20us
clean:
	rm	-rf	result.vcd