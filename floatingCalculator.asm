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
	
	li $v0, 7
	syscall
	mov.d $f4, $f0
	
	li $v0, 4
	la $a0, str_input2
	syscall
	
	li $v0, 7
	syscall
	mov.d $f6, $f0
	
	li $v0, 4
	la $a0, str_menu
	syscall

	li $v0, 5
	syscall
	move $t0, $v0
	
	beq $t0, 1, ADD
	beq $t0, 2, SUB
	beq $t0, 3, MUL
	beq $t0, 4, DIV
	
	ADD:
		add.d $f4, $f4, $f6
		j END
	
	SUB:
		sub.d $f4, $f4, $f6
		j END

	MUL:
		mul.d $f4, $f4, $f6
		j END

	DIV:
		div.d $f4, $f4, $f6
		j END

	
	
END:
li $v0, 3
mov.d $f12, $f4
syscall
		
li $v0, 10
syscall
