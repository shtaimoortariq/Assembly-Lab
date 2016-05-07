.data
	str_userInput: .space 20
	
.text
.globl main
main:
	la $a0, str_userInput
	li $a1, 6
	
	li $v0, 8
	syscall
	
li $v0, 10
syscall
