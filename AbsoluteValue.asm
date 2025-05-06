@R0             
D=M             

@POSITIVE       
D;JGE           // Jump to POSITIVE if D >= 0 (i.e., number is positive or zero)         

@R2
M=1
D=-D
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