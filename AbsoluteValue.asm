@R0             // Load the address of R0 into the A register
D=M             // D = M[R0], i.e., the value stored at R0

@POSITIVE       // Define label POSITIVE for positive number handling
D;JGE。         // Jump to POSITIVE if D >= 0 (i.e., number is positive or zero)

@R2
M=1
D=-D
@OVERFLOW
D;JLT           // Jump to OVERFLOW if D < 0 (i.e., overflow occurred)

@R1
M=D
@R3
M=0            // Set R2 to 0, indicating a positive number by default

@END
0;JMP

(OVERFLOW)
@R3
M=1
@R0
D=M
@R1
M=D
@END
0;JMP

(POSITIVE)
@R1
M=D
@R2
M=0
@R3
M=0

(END)
@END
0;JMP