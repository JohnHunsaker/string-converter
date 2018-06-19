#MIPS Assembly Programming Practice Exercise - String Converter
#Written by John Hunsaker

.data
string:  .asciiz    "ABCDEFG"

.text
.globl main

main:
	la $t0, string
        move $t1, $0
	add $t2, $0, 0x20
	add $t3, $0, 0x50

loopProc:
        lb $t1, ($t0)
	nop
        beq $t1, $0, doneProc
	nop
        move $t4, $t3
        sub $t5, $t1, $t4
	bge $t5, $0, helperProc
	nop
        add $t1, $t1, $t2
	sb $t1, ($t0)

helperProc:
	add $t0, $t0, 0x01
	nop
        j loopProc

doneProc:
	la $a0, string
	add $t0, $0, $0
	li $v0,4
	syscall
	li $v0,10
	syscall



