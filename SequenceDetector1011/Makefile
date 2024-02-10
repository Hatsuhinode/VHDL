
all:	result.vcd
result.vcd:	SequenceDetector.vhdl	SequenceDetector_tb.vhdl
	ghdl	-a	-fsynopsys	SequenceDetector.vhdl
	ghdl	-a	 SequenceDetector_tb.vhdl
	ghdl	-e	-fsynopsys SequenceDetector_tb
	ghdl	-r	-fsynopsys SequenceDetector_tb	--vcd=result.vcd	--stop-time=20us
clean:
	rm	-rf	result.vcd