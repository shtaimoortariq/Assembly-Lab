.data
	
	
.text
.globl main
main:	
	li $v0, 7
	syscall
	
	li $v0, 3	
	mov.d $f12, $f0
	syscall
	
li $v0, 10
syscall
