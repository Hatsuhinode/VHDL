
all:	result.vcd
result.vcd:	LCM.vhdl	LCM_tb.vhdl
	ghdl	-a	-fsynopsys	LCM.vhdl
	ghdl	-a	 LCM_tb.vhdl
	ghdl	-e	-fsynopsys LCM_tb
	ghdl	-r	-fsynopsys LCM_tb	--vcd=result.vcd	--stop-time=20us
clean:
	rm	-rf	result.vcd