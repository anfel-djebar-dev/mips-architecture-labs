.data
pair: .asciiz "Pair"
impair: .asciiz "Impair"

.text
.globl main

main:
li $v0, 5
syscall
move $t0, $v0

li $t1, 2
div $t0, $t1
mfhi $t2

beq $t2, $zero, afficher_pair

la $a0, impair
li $v0, 4
syscall
j fin

afficher_pair:
la $a0, pair
li $v0, 4
syscall

fin:
li $v0, 10
syscall