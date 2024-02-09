
all:	result.vcd
result.vcd:	FullAdder.vhdl	FullAdder_tb.vhdl
	ghdl	-a	-fsynopsys	FullAdder.vhdl
	ghdl	-a	 FullAdder_tb.vhdl
	ghdl	-e	-fsynopsys FullAdder_tb
	ghdl	-r	-fsynopsys FullAdder_tb	--vcd=result.vcd	--stop-time=20us
clean:
	rm	-rf	result.vcd