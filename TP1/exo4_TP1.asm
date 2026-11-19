.text
.global main
main:

li $t0,10
addi $t1,$t0,1
move $a0,$t1
li $v0,1
syscall