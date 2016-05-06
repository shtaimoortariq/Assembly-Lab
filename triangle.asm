.data
	star   : .asciiz "* "
	newLine: .asciiz "\n"
	space  : .asciiz " "

.text
.globl main
main:
	
	#register
	#$t0 = i
	#$t1 = j
	#$t2 = k
	
	loop:
	beq $t0, 5, end
		addi $t0, $t0, 1
		li $t1, 0
		
			li $v0, 4
			la $a0, newLine
			syscall
		
		move $t2, $t0
		
		loop1:
		beq $t2, 5, loop2
			
			li $v0, 4
			la $a0, space
			syscall
			
		addi $t2, $t2, 1
		j loop1
		
		loop2:
		beq $t1, $t0, loop
			
			li $v0, 4
			la $a0, star
			syscall
			
		
		addi $t1, $t1, 1
		j loop2
end:
li $v0, 10
syscall
