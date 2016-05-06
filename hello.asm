.data
	userName: .asciiz "M. TAIMOOR"

.text
.globl main
main:

	li $v0, 4
	la $a0, userName
	syscall

	li $v0, 10
	syscall