.data
msg: .asciiz "Donner N : "

.text
.globl main
main:
    li $v0, 4
    la $a0, msg
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    li $t0, 1
    li $t2, 0

boucle:
    add $t2, $t2, $t0

    beq $t0, $t1, fin
    addi $t0, $t0, 1
    j boucle

fin:
    li $v0, 1
    move $a0, $t2
    syscall

    li $v0, 10
    syscall