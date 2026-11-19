.data
msg: .asciiz"donner un entier: "

.text
.global main
main:

boucle:

li $v0,4
la $a0,msg
syscall
 
li $v0,5
syscall 
move $t0,$v0

bgez $t0,