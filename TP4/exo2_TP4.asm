.data
msg: .asciiz"donner un entier N:"

.text
.global main
main:

li $v0,4
la $a0,msg
syscall
 
li $v0,5
syscall
move $t0,$v0


boucle:
blez $t0,fin

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