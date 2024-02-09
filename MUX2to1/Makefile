
all:	result.vcd
result.vcd:	MUX2to1.vhdl	MUX2to1_tb.vhdl
	ghdl	-a	-fsynopsys	MUX2to1.vhdl
	ghdl	-a	 MUX2to1_tb.vhdl
	ghdl	-e	-fsynopsys MUX2to1_tb
	ghdl	-r	-fsynopsys MUX2to1_tb	--vcd=result.vcd	--stop-time=20us
clean:
	rm	-rf	result.vcd