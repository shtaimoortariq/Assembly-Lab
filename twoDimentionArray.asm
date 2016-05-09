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
	#$t0 = i
	#$t1 = length
	#$t2 = sum of 2nd column
	#$t3 = temp value
	
	
	li $t1, 40
	la $a1, int_arr
	addi $a1, $a1, 4
	
	loop:
	beq $t0, 10, end
		lw $t3, ($a1)

		add $t2, $t2, $t3
		addi $a1, $a1, 16
		addi $t0, $t0, 1
			j loop

			
end:
li $v0, 1
move $a0, $t2
syscall


li $v0, 10
syscall
