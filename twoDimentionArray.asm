.data
	int_arr: .word 0 1 2 3 4 5 6 7 8 9 
			 .word 0 1 2 3 4 5 6 7 8 9
			 .word 0 1 2 3 4 5 6 7 8 9
			 .word 0 1 2 3 4 5 6 7 8 9
			 .word 0 1 2 3 4 5 6 7 8 9
			 .word 0 1 2 3 4 5 6 7 8 9
			 .word 0 1 2 3 4 5 6 7 8 9
			 .word 0 1 2 3 4 5 6 7 8 9
			 .word 0 1 2 3 4 5 6 7 8 9
			 .word 0 1 2 3 4 5 6 7 8 9
			 
			 
	newLine: .asciiz "\n"
	
.text
.globl main
main:

	#registers
	#$t0 = i
	#$t1 = length
	#$t2 = sum of 2nd column
	#$t3 = temp value
	#$t4 = j
	
	li $t5, -4
	loop1:
	
	beq $t4, 10, end 
	
	la $a1, int_arr
	
	addi $t5, $t5, 4
	add $a1, $a1, $t5 
	addi $t4, $t4, 1
	
	loop:
	beq $t0, 10, loop2
		lw $t3, 0($a1)

		add $t2, $t2, $t3
		addi $a1, $a1, 40
		addi $t0, $t0, 1
			j loop

	loop2:
		li $v0, 1
		move $a0, $t2
		syscall
		
		li $v0, 4
		la $a0, newLine
		syscall 
		
		li $t2, 0
		li $t0, 0
		li $a1, 0
	j loop1			
end:
li $v0, 1
move $a0, $t2
syscall


li $v0, 10
syscall
