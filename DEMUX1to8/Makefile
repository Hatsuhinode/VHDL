
all:	result.vcd
result.vcd:	DEMUX1to8.vhdl	DEMUX1to8_tb.vhdl
	ghdl	-a	-fsynopsys	DEMUX1to8.vhdl
	ghdl	-a	 DEMUX1to8_tb.vhdl
	ghdl	-e	-fsynopsys DEMUX1to8_tb
	ghdl	-r	-fsynopsys DEMUX1to8_tb	--vcd=result.vcd	--stop-time=20us
clean:
	rm	-rf	result.vcd