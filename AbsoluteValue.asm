@R0             // Load the address of R0 into the A register
D=M             // D = M[R0], i.e., the value stored at R0

@POSITIVE       // Define label POSITIVE for positive number handling
D;JGE           // Jump to POSITIVE if D >= 0 (i.e., number is positive or zero)         

@R2
M=1             // Set R2 to 1, indicating a negative number
D=-D            // Negate D to compute the absolute value
@OVERFLOW
D;JLT          

@R1
M=D
@R3
M=0           
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