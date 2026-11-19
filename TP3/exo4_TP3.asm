.data
msg: .asciiz "Donner N : "
esp: .asciiz " "

.text
.globl main
main:
    li $v0, 4
    la $a0, msg
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    li $t0, 2

boucle:
    bgt $t0, $t1, fin

    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 4
    la $a0, esp
    syscall

    addi $t0, $t0, 2
    j boucle

fin:
    li $v0, 10
    syscall