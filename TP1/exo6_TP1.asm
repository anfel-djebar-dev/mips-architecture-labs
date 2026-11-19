.data 
a: .asciiz "A = "
b: .asciiz "B = "
n: .asciiz "\n"
.text
.gloabl main
main:
#declataion des entiers A er B:
li $t0,5
li $t1,9
#l'échange de deux valeurs
move $t2,$t0
move $t0,$t1
move $t1,$t2

#affichage de A
la $a0,a
li $v0,4
syscall 

move $a0,$t0
li $v0,1
syscall

la $a0,n
li $v0,4
syscall 

#affichage de B
la $a0,b
li $v0,4
syscall 

move $a0,$t1
li $v0,1
syscall 

li $v0,10
syscall 


