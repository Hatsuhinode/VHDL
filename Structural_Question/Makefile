
all:	result.vcd
result.vcd:	and_or.vhdl	and_or_tb.vhdl
	ghdl	-a	-fsynopsys and_or.vhdl
	ghdl	-a	 and_or_tb.vhdl
	ghdl	-e	-fsynopsys and_or_tb
	ghdl	-r	-fsynopsys and_or_tb	--vcd=result.vcd	--stop-time=20us
clean:
	rm	-rf	result.vcd