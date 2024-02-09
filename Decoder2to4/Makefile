
all:	result.vcd
result.vcd:	Decoder2to4.vhdl	Decoder2to4_tb.vhdl
	ghdl	-a	-fsynopsys	Decoder2to4.vhdl
	ghdl	-a	 Decoder2to4_tb.vhdl
	ghdl	-e	-fsynopsys Decoder2to4_tb
	ghdl	-r	-fsynopsys Decoder2to4_tb	--vcd=result.vcd	--stop-time=20us
clean:
	rm	-rf	result.vcd