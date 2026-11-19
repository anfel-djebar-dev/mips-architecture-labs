.data #declaration de chaine des characteres
msg0: .asciiz "donner le premier entier: "
msg1: .asciiz "donner le premier entier: "
n: .asciiz "\n"

.text
.global main
main:

#affichage de message 1:
la $a0,msg0
li $v0,4
syscall

#lecture de entier 1:
li $v0,5
syscall
move $t0,$v0

#affichage de message 2: 
la $a0,msg1
li $v0,4
syscall

#lecture de message 2:
li $v0,5
syscall
move $t1,$v0

#les operations addition et sousraction:
add $t2,$t0,$t1
sub $t3,$t0,$t1

#affichage de resultat d'addition:
move $a0,$t2
li $v0,1
syscall

#retoure a nouveau line
la $a0,n
li $v0,4
syscall

#affichage de resultat de soustraction:
move $a0,$t3
li $v0,1
syscall 

#fin de programme
li $v0,10
syscall