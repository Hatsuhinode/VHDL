
all:	result.vcd
result.vcd:	UpCounter_T_FF.vhdl	UpCounter_T_FF_tb.vhdl
	ghdl	-a	-fsynopsys	UpCounter_T_FF.vhdl
	ghdl	-a	 UpCounter_T_FF_tb.vhdl
	ghdl	-e	-fsynopsys UpCounter_tb
	ghdl	-r	-fsynopsys UpCounter_tb	--vcd=result.vcd	--stop-time=20us
clean:
	rm	-rf	result.vcd