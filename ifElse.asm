.data
	str_intro: .asciiz "\nPLEASE ENTER THE NUMBER?\n"
	str_even : .asciiz "\nTHE NUMBER IS EVEN"
	str_odd :  .asciiz "\nTHE NUMBER IS ODD"
	
	
	
.text
.globl main
main:
	
	#registers
	#$t0 = value
	#$t1 = 2
	#$t2 = 0	remainder value
	#$t3 = 0	0 value
	
	li $v0, 4
	la $a0, str_intro
	syscall
	
	li $t1, 2
	li $v0, 5
	syscall
	move $t0, $v0
	
	div $t0, $t1
	mfhi $t2

	beq $t2, $t3, even
	bne $t2, $t3, odd

		even:
			li $v0, 4
			la $a0, str_even
			syscall
			j end
			
		odd:
			li $v0, 4
			la $a0, str_odd
			syscall
			j end
	
end:
li $v0, 10
syscall