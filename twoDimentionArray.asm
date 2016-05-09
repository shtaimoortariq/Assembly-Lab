.data
	int_arr: .word 0 1 2 3
		 .word 0 1 2 3
		 .word 0 1 2 3
		 .word 0 1 2 3
		 .word 0 1 2 3
		 .word 0 1 2 3
		 .word 0 1 2 3
		 .word 0 1 2 3
		 .word 0 1 2 3
		 .word 0 1 2 3

	newLine: .asciiz "\n"
	
.text
.globl main
main:

	#registers
	
	li $t1, 40
	la $a1, int_arr
	
	loop:
	beq $t0, $t1, end
		
		li $v0, 1
		lw $a0, ($a1)
		syscall
				
		add $t0, $t0, 1
		add $a1, $a1, 4
		
	j loop
end:	
li $v0, 10
syscall
