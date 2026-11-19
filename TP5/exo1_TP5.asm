.data 
msg : .asciiz "Donnez un nombre entier : "
msg1: .asciiz "La table de multiplication du nombre donne est :"
msg2: .asciiz" x "
msg3: .asciiz" = "
.text
.global main 
main:

li $v0,4
la $a0,msg
syscall

li $v0, 5
move $t0, $v0
syscall

move $t0,$v0
syscall

li $v0,4
la $a0,msg1
syscall



li $t1,1

boucle :
beq $t1, 11, fin
mul $t2,$t0, $t1


li $v0,1
move  $a0,$t0
syscall

li $v0,4
la $a0,msg2
syscall

li $v0,1
move $a0,$t1
syscall

 li $v0,4
la $a0,msg3
syscall

li $v0,1
move  $a0,$t2
syscall

li $v0,11
li $a0,10
syscall

addi $t1, $t1,1
j boucle

fin:
li $v0,10
syscall