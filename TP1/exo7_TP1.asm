.data
m1: .asciiz "Entrer A : "
m2: .asciiz "Entrer B : "
nl: .asciiz "\n"

.text
.globl main

main:
li $v0, 4
la $a0, m1
syscall
li $v0, 5
syscall
move $t0, $v0

li $v0, 4
la $a0, m2
syscall
li $v0, 5
syscall
move $t1, $v0

add $a0, $t0, $t1
li $v0, 1
syscall
li $v0, 4
la $a0, nl
syscall

sub $a0, $t0, $t1
li $v0, 1
syscall
li $v0, 4
la $a0, nl
syscall

addi $a0, $t0, 1
li $v0, 1
syscall
li $v0, 4
la $a0, nl
syscall

addi $a0, $t1, 1
li $v0, 1
syscall

li $v0, 10
syscall