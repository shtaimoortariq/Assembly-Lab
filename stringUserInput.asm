.data
	userName: .asciiz ""
	
	
.text
.globl main
main:
	la $a0, userName
	#la $a2, userName
	li $a1, 6
	
	li $v0, 8
	syscall
	
	move $a2, $a0
	
	li $v0, 4
	la $a0, ($a2)
	syscall
	
	
	
li $v0, 10
syscall
