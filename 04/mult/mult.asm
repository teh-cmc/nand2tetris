// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

(MAIN)
	@R2
	M=0

(MULTLOOP)
	@R0
	MD=M-1
	@EXIT
	D;JLT
	@R1
	D=M
	@R2
	M=M+D
	@MULTLOOP
	0;JMP

(EXIT)
	@EXIT
	0;JMP
