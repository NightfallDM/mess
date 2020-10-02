# fn add_three(x: i32, y: i32, z: i32) -> i32;

.global _start
_start:
	# save the reg state
	# because we use three regs.
	# "rax" use to save the "ret value"
	pushq %rax
	pushq %rdi
	pushq %rsi
	pushq %rdx
	
	# x = 4, y = 6, z = 20
	movq $4, %rdi
	movq $6, %rsi
	movq $10, %rdx
	call add_three
	
	# after "ret"
	movq %rax, %r8
	popq %rdx
	popq %rsi
	popq %rdi
	popq %rax

exit:
	movq $60, %rax
	movq $0, %rdi
	syscall
