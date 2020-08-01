// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
@R1
M=0
(LOOP)
    @24576    
    D=M
    @BLACK
    D;JNE
    @WHITE
    0;JMP
    (BLACK)
        @R1
        M=-1
        @INIT
        0;JMP 
    (WHITE)
        @R1
        M=0
        @INIT
        0;JMP

(INIT)
    @8192
    D=A
    @i
    M=D
    @SCREEN  
    D=A
    @addr
    M=D
    @FILL
    0;JMP

    (FILL)
        @R1
        D=M
        @addr
        A=M
        M=D
        @addr
        M=M+1
        @i
        M=M-1
        D=M
        @LOOP
        D;JEQ
        @FILL
        0;JMP 

    @LOOP
    0;JMP