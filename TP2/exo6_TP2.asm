.data
m1: .asciiz "Entrer a: "
m2: .asciiz "Entrer b: "
m3: .asciiz "Entrer c: "

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

li $v0, 4
la $a0, m3
syscall
li $v0, 5
syscall
move $t2, $v0

bgt $t0, $t1, test_a_c
bgt $t1, $t2, max_b
move $a0, $t2
j afficher_max

test_a_c:
bgt $t0, $t2, max_a
move $a0, $t2
j afficher_max

max_a:
move $a0, $t0
j afficher_max

max_b:
move $a0, $t1

afficher_max:
li $v0, 1
syscall

fin:
li $v0, 10
syscall