.data
n: .asciiz "\n"
.text
.globl main

main:
li $t0, 8
li $t1, 8
beq $t0, $t1, equal

equal:
li $a0, 1
li $v0, 1
syscall
j suite

suite:
li $t1, 19
beq $t0, $t1, equal

la $a0,n
li $v0,4
syscall

li $a0, 0
li $v0, 1
syscall

fin:
li $v0, 10
syscall