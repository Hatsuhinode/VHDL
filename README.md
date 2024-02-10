<div align = 'Center'>
<h1> VHDL </h1>
</div>
<div align = 'justify'>
This is the repo for working in VHDL as a project/lab of subject Embedded System (III/II). Before diving deeper, I want you to go through this documentation and get the gist of the lab. </div>

<div align = 'Center'>
<b> HAPPY LEARNING!!! </b>
</div>

## Introduction
<div align = 'justify'>
VHDL stands for VHSIC (Very High-Speed Integrated Circuit) Hardware Description Language. It is a hardware description language used in digital circuit design and simulation. VHDL serves as a means to describe the structure and behavior of digital systems. It allows engineers to model complex digital circuits, specify their functionality, and simulate their behavior before actual implementation in hardware.

To set up a VHDL development environment, you will need to install a VHDL simulator and a text editor or integrated development environment (IDE) that supports VHDL. `ghdl` is an open-source VHDL compiler that can compile VHDL code and run simulations. `gtkwave` is a waveform viewer for viewing the output of simulations. It integrates with GHDL and other VHDL tools. Before compiling we create a `Makefile` for the code as it specifies targets, dependencies, and commands needed to build each target. In other words, `Makefile` contains instructions on how to compile and link the project's source code files. It is read by the tool named `make`. `make` is a build automation tool used primarily for compiling and building software projects. It automates the process of determining which source files need to be recompiled and relinked, based on changes in the source code or dependencies.</div>

## About directories
<div align = 'justify'>
The folders in this repository are the past questions of 6th Semester Electronics exam paper taken by IoE, TU. Each folder includes its own `README.md` file which provides further details about the question and includes the achieved output.</div>

## Compatibility
<div align = 'justify'>
This lab is done in linux OS- Ubuntu 22.04 and the compiler used is GHDL having version `GHDL 1.0.0 (Ubuntu 1.0.0+dfsg-6) [Dunoon edition] Compiled with GNAT Version: 10.3.1 20211117`. So, make sure the compiler and waveform viewer are device compatible. Now, if you want the most from this repository, I would like you to install virtual machine and install Ubuntu OS. All the code written is in the Ubuntu 22.04 terminal and is followed until the end of the lab. </div>

## Setting Up
1. Open the terminal (Ctrl + Alt + T)
- Enter these commands line to line in the terminal to install the compiler and waveform viewer.
```bash
$ sudo apt update && sudo apt upgrade -y
$ sudo apt install ghdl
$ ghdl --version # Check the version of the ghdl
$ sudo apt install gtkwave 
$ sudo apt install make
``` 

2. Clone the repository to the local directory
```bash
$ git clone https://github.com/Hatsuhinode/VHDL.git
```

## Coding in VHDL
1. You need a text editor and that can be Visual Studio Code or you can write in teh terminal using keywords: `nano`, `vim`
- Install VSC (Visual Studio Code) and start writing code for any modification
```bash
$ sudo apt install code
```
- Write in a new file with extension `.vhd` in the terminal using keywords 
```bash
$ nano newfile.vhd
$ vim newfile.vhd
```
If vim isn't install in you device, make sure you install it as: `sudo apt install vim` and code with it in the terminal.

2. Compiling the files
- Analyze: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`$ ghdl -a newfile.vhd`; &nbsp;&nbsp;-a flag represents to analyze the code
- Elaborate: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`$ ghdl -e newwfile`;&nbsp;&nbsp; -e flag represents to elaborate the design, newfile here is the design unit
- Run: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`$ ghdl -r newfile`; &nbsp;&nbsp;-r flag represents to run the simulation 
- Convert `.vhd` file to `.vcd`: &nbsp; `$ ghdl -r newfile --vcd=newfile.vcd`
- Visualize: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`$ gtkwave newfile.vcd`

Instead we created a `Makefile` with the instructions for `ghdl` on how to compile code and test the testbench:

This is the general Makefile and it varies with the filename, source code and testbench.
```bash
all:	simulation_result.vcd
simulation_result.vcd:	vhdl_source_code.vhdl	testbench_source_code.vhdl
	ghdl	-a	-fsynopsys	vhdl_source_code.vhdl
	ghdl	-a	 testbench_source_code.vhdl
	ghdl	-e	-fsynopsys testbench_entity_name
	ghdl	-r	-fsynopsys testbench_entity_name	--vcd=simulation_result.vcd	--stop-time=20us
clean:
	rm	-rf	simulation_result.vcd
```
**Example: Makefile of the FullAdder**
```bash
all:	result.vcd
result.vcd:	FullAdder.vhdl	FullAdder_tb.vhdl
	ghdl	-a	-fsynopsys	FullAdder.vhdl
	ghdl	-a	 FullAdder_tb.vhdl
	ghdl	-e	-fsynopsys FullAdder_tb
	ghdl	-r	-fsynopsys FullAdder_tb	--vcd=result.vcd	--stop-time=20us
clean:
	rm	-rf	result.vcd
```

## Test Output
- Open the directory you want to test the output: Let's say we want to view output of the `FullAdder`. Open the terminal, I guess you are in the path:
```bash
.../VHDL$ cd FullAdder # Note: three dot represents the root path of your directory
.../VHDL/FullAdder$ make # Runs the Makefile and gives result.vcd output 
```

## View the Simulation
Here is the video for signal visualization of `SequenceDetector1011`


https://github.com/Hatsuhinode/VHDL/assets/63094975/96497e91-143e-42b5-95c1-514a4ae35057



## About Us
<div align = 'justify'>
We are BEI (Bachelor in Electronics, Communication and Information Engineering) student in Pashchimancal Campus, IoE, TU. </div>

**COLLABORATORS:**

Prakanda Bhandari (PAS077BEI030)

Sandesh Bashyal (PAS077BEI036)

<div align = 'center'><b>HAPPY SIMULATION!!!</b></div>
