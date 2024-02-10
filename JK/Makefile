
all:	result.vcd
result.vcd:	JK.vhdl	JK_tb.vhdl
	ghdl	-a	-fsynopsys	JK.vhdl
	ghdl	-a	 JK_tb.vhdl
	ghdl	-e	-fsynopsys JK_tb
	ghdl	-r	-fsynopsys JK_tb	--vcd=result.vcd	--stop-time=20us
clean:
	rm	-rf	result.vcd