.data
m_A: .asciiz "Entrer A : "
m_B: .asciiz "Entrer B : "
msg_egal: .asciiz "Les deux nombres sont egaux"

.text
.globl main

main:
li $v0, 4
la $a0, m_A
syscall
li $v0, 5
syscall
move $t0, $v0

li $v0, 4
la $a0, m_B
syscall
li $v0, 5
syscall
move $t1, $v0

beq $t0, $t1, afficher_egal
bgt $t0, $t1, afficher_a

move $a0, $t1
li $v0, 1
syscall
j fin

afficher_a:
move $a0, $t0
li $v0, 1
syscall
j fin

afficher_egal:
li $v0, 4
la $a0, msg_egal
syscall

fin:
li $v0, 10
syscall