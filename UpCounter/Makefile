
all:	result.vcd
result.vcd:	UpCounter.vhdl	UpCounter_tb.vhdl
	ghdl	-a	-fsynopsys	UpCounter.vhdl
	ghdl	-a	 UpCounter_tb.vhdl
	ghdl	-e	-fsynopsys UpCounter_tb
	ghdl	-r	-fsynopsys UpCounter_tb	--vcd=result.vcd	--stop-time=20us
clean:
	rm	-rf	result.vcd