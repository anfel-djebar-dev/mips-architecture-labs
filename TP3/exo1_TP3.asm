.text
.globl main
main:
    li $t0, 1

boucle:
    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 11
    li $a0, 10
    syscall

    beq $t0, 10, fin
    addi $t0, $t0, 1
    j boucle

fin:
    li $v0, 10
    syscall