.data 
A: .asciiz "donner a: "
B: .asciiz "donner b:"
equal: .asciiz "Les nombres sont égaux"
non_equal: .asciiz "Les deux nombres sont différents"
.text
.global main 

main:
#lire A
la $a0,A
li $v0,4
syscall

li $v0,5
syscall
move $t0,$v0

#lire B
la $a0,B
li $v0,4
syscall

li $v0,5
syscall
move $t1,$v0

#IF A != B
li $v0,4
la $a0,non_equal
syscall
j fin

#IF A == B
beq $t0,$t1, affiche_equal

affiche_equal:
li $v0,4
la $a0,equal
syscall
j fin

fin:
li $v0,10
syscall
