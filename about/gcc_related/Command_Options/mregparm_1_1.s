	.file	"mregparm_1_1.c"
	.text
	.globl	test_mregparm
	.type	test_mregparm, @function
test_mregparm:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	movl	%eax, -4(%ebp)
	movl	%edx, -8(%ebp)
	movl	%ecx, -12(%ebp)
	movl	-4(%ebp), %edx
	movl	-8(%ebp), %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	test_mregparm, .-test_mregparm
	.ident	"GCC: (GNU) 10.2.1 20200723 (Red Hat 10.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
