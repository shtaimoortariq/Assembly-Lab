.data
	str_input1: .asciiz "\nPLEASE ENTER FIRST NUMBER?\n"
	str_input2: .asciiz "\nPLEASE ENTER SECOND NUMBER?\n"
	str_result: .asciiz "\nTHE CALCULATION IS :   "
	str_menu  : .asciiz "\n 1. ADD \n 2. SUBTRACT \n 3. MULTIPLY \n 4. DIVIDE \n"
	

.text
.globl main
main:

	#REGSTERS
	#$F4 = 1ST VALUE
	#$F6 = 2ND VALUE
	#$t0 = OPERATION
	
	li $v0, 4
	la $a0, str_input1
	syscall
	
	li $v0, 6
	syscall
	mov.d $f4, $f0
	
	li $v0, 4
	la $a0, str_input2
	syscall
	
	li $v0, 6
	syscall
	mov.d $f6, $f0
	
	li $v0, 4
	la $a0, str_menu
	syscall

	li $v0, 5
	syscall
	move $t0, $v0
	
	beq $t0, 1, ADD
	
	ADD:
		add.d $f8, $f4, $f6
		j END
	
	
END:
li $v0, 3
mov.d $f12, $f8
syscall
		
li $v0, 10
syscall
