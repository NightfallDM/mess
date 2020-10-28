	.file	"mregparm_1_1.c"
	.text
	.p2align 4
	.globl	test_mregparm
	.type	test_mregparm, @function
test_mregparm:
.LFB0:
	.cfi_startproc
	movl	8(%esp), %eax
	addl	4(%esp), %eax
	addl	12(%esp), %eax
	ret
	.cfi_endproc
.LFE0:
	.size	test_mregparm, .-test_mregparm
	.ident	"GCC: (GNU) 10.2.1 20200723 (Red Hat 10.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
