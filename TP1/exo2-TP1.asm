.data
space: .asciiz "  "

.text
.globl main

main:
li $t0, 20
li $t1, 6

add $t2, $t0, $t1
sub $t3, $t0, $t1

move $a0, $t2
li $v0, 1
syscall

la $a0, space
li $v0, 4
syscall

move $a0, $t3
li $v0, 1
syscall

li $v0, 10
syscall
