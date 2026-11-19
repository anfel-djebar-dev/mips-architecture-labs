1.data
p: .asciiz "Positif"
n: .asciiz "Negatif"
z: .asciiz "Nul"

.text
.globl main

main:
li $v0, 5
syscall
move $t0, $v0

beq $t0, $zero, afficher_nul
bgt $t0, $zero, afficher_pos

la $a0, n
li $v0, 4
syscall
j fin

afficher_pos:
la $a0, p
li $v0, 4
syscall
j fin

afficher_nul:
la $a0, z
li $v0, 4
syscall

fin:
li $v0, 10
syscall
