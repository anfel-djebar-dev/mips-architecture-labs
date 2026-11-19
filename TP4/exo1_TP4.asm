.data
ln: .asciiz "\n"
.text
.global main
main:
#afficher les entiers de 10 a 1 dans l'ordre decroissant:
li $t0, 10

boucle:
blt $t0,1,fin
li $v0,1
move $a0,$t0
syscall


li $v0,11
la $a0,10
syscall

subi $t0,$t0,1
j boucle

fin:
li $v0,10
syscall