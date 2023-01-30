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

(INFLOOP)

// key-input
@KBD
D=M
@WHITE
D;JEQ

// BLACK
@0
D=A
@R0
M=!D
@FILL
0;JMP

(WHITE)
@0
D=A
@R0
M=D

// fill
(FILL)
@8191
D=A
@i
M=D
(FILLLOOP)
@i
D=M
@INFLOOP
D;JLT

@SCREEN
D=A
@i
D=D+M
@R1
M=D

@R0
D=M
@R1
A=M
M=D

@i
M=M-1
@FILLLOOP
0;JMP
