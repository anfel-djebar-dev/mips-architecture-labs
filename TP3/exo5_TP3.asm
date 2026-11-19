.data
msg1: .asciiz "Entrer un nombre : "

.text
.globl main
main:
boucle:
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    beq $t0, $zero, fin

    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 11
    li $a0, 10
    syscall

    j boucle

fin:
    li $v0, 10
    syscall