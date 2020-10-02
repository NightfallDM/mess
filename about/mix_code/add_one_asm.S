.global add_one
add_one:
	movq %rdi, %rax
	addq $1, %rax
	ret
	
