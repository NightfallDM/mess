	.text
	.file	"main.7rcbfp3g-cgu.0"
	.section	.text._ZN3std2rt10lang_start17h364fe5eedd632d7aE,"ax",@progbits
	.hidden	_ZN3std2rt10lang_start17h364fe5eedd632d7aE
	.globl	_ZN3std2rt10lang_start17h364fe5eedd632d7aE
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start17h364fe5eedd632d7aE,@function
_ZN3std2rt10lang_start17h364fe5eedd632d7aE:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	leaq	.L__unnamed_1(%rip), %rax
	movq	%rdi, 32(%rsp)
	leaq	32(%rsp), %rcx
	movq	%rcx, %rdi
	movq	%rsi, 24(%rsp)
	movq	%rax, %rsi
	movq	24(%rsp), %rax
	movq	%rdx, 16(%rsp)
	movq	%rax, %rdx
	movq	16(%rsp), %rcx
	callq	*_ZN3std2rt19lang_start_internal17h72cc068ed2d0ac53E@GOTPCREL(%rip)
	movq	%rax, 8(%rsp)
	movq	8(%rsp), %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	_ZN3std2rt10lang_start17h364fe5eedd632d7aE, .Lfunc_end0-_ZN3std2rt10lang_start17h364fe5eedd632d7aE
	.cfi_endproc

	.section	".text._ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h74b12a20537b1ba7E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h74b12a20537b1ba7E,@function
_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h74b12a20537b1ba7E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	*(%rdi)
	callq	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hdf2b7c7c780f9063E
	movl	%eax, 4(%rsp)
	movl	4(%rsp), %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h74b12a20537b1ba7E, .Lfunc_end1-_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h74b12a20537b1ba7E
	.cfi_endproc

	.section	.text._ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h094602b7cebdf7e8E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h094602b7cebdf7e8E,@function
_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h094602b7cebdf7e8E:
	.cfi_startproc
	movzbl	(%rdi), %eax
	retq
.Lfunc_end2:
	.size	_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h094602b7cebdf7e8E, .Lfunc_end2-_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h094602b7cebdf7e8E
	.cfi_endproc

	.section	.text._ZN4core3fmt10ArgumentV13new17h76a8804b1a74d0aeE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3fmt10ArgumentV13new17h76a8804b1a74d0aeE,@function
_ZN4core3fmt10ArgumentV13new17h76a8804b1a74d0aeE:
	.cfi_startproc
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rsi, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rdi, 16(%rsp)
	movq	%rax, 8(%rsp)
	movq	16(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	8(%rsp), %rcx
	movq	%rcx, 32(%rsp)
	movq	24(%rsp), %rax
	movq	32(%rsp), %rdx
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	_ZN4core3fmt10ArgumentV13new17h76a8804b1a74d0aeE, .Lfunc_end3-_ZN4core3fmt10ArgumentV13new17h76a8804b1a74d0aeE
	.cfi_endproc

	.section	.text._ZN4core3fmt9Arguments6new_v117hd11211e9ad0f32ecE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3fmt9Arguments6new_v117hd11211e9ad0f32ecE,@function
_ZN4core3fmt9Arguments6new_v117hd11211e9ad0f32ecE:
	.cfi_startproc
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
	movq	%rdi, %rax
	movq	$0, (%rsp)
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movq	(%rsp), %rdx
	movq	8(%rsp), %rsi
	movq	%rdx, 16(%rdi)
	movq	%rsi, 24(%rdi)
	movq	%rcx, 32(%rdi)
	movq	%r8, 40(%rdi)
	addq	$16, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	_ZN4core3fmt9Arguments6new_v117hd11211e9ad0f32ecE, .Lfunc_end4-_ZN4core3fmt9Arguments6new_v117hd11211e9ad0f32ecE
	.cfi_endproc

	.section	".text._ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hcc8a2a2684613721E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hcc8a2a2684613721E,@function
_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hcc8a2a2684613721E:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	(%rdi), %rdi
	callq	_ZN4core3ops8function6FnOnce9call_once17h3781df3cc17170b2E
	movl	%eax, 12(%rsp)
	movl	12(%rsp), %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hcc8a2a2684613721E, .Lfunc_end5-_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hcc8a2a2684613721E
	.cfi_endproc

	.section	.text._ZN4core3ops8function6FnOnce9call_once17h3781df3cc17170b2E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17h3781df3cc17170b2E,@function
_ZN4core3ops8function6FnOnce9call_once17h3781df3cc17170b2E:
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception0
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
.Ltmp0:
	leaq	8(%rsp), %rdi
	callq	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h74b12a20537b1ba7E
.Ltmp1:
	movl	%eax, 4(%rsp)
	jmp	.LBB6_1
.LBB6_1:
	jmp	.LBB6_2
.LBB6_2:
	movl	4(%rsp), %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB6_3:
	.cfi_def_cfa_offset 48
	jmp	.LBB6_4
.LBB6_4:
	movq	24(%rsp), %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB6_5:
.Ltmp2:
	movq	%rax, 24(%rsp)
	movl	%edx, 32(%rsp)
	jmp	.LBB6_3
.Lfunc_end6:
	.size	_ZN4core3ops8function6FnOnce9call_once17h3781df3cc17170b2E, .Lfunc_end6-_ZN4core3ops8function6FnOnce9call_once17h3781df3cc17170b2E
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table6:
.Lexception0:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0
	.uleb128 .Ltmp1-.Ltmp0
	.uleb128 .Ltmp2-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp1-.Lfunc_begin0
	.uleb128 .Lfunc_end6-.Ltmp1
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2

	.section	.text._ZN4core3ptr13drop_in_place17h5ffed929b82e9e01E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr13drop_in_place17h5ffed929b82e9e01E,@function
_ZN4core3ptr13drop_in_place17h5ffed929b82e9e01E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	_ZN4core3ptr13drop_in_place17h5ffed929b82e9e01E, .Lfunc_end7-_ZN4core3ptr13drop_in_place17h5ffed929b82e9e01E
	.cfi_endproc

	.section	".text._ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hdf2b7c7c780f9063E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hdf2b7c7c780f9063E,@function
_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hdf2b7c7c780f9063E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	xorl	%edi, %edi
	callq	_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h4e3b916b76b20f82E
	movl	%eax, 4(%rsp)
	movl	4(%rsp), %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end8:
	.size	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hdf2b7c7c780f9063E, .Lfunc_end8-_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hdf2b7c7c780f9063E
	.cfi_endproc

	.section	".text._ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h4e3b916b76b20f82E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h4e3b916b76b20f82E,@function
_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h4e3b916b76b20f82E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movb	%dil, 7(%rsp)
	leaq	7(%rsp), %rdi
	callq	_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h094602b7cebdf7e8E
	movl	%eax, (%rsp)
	movl	(%rsp), %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end9:
	.size	_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h4e3b916b76b20f82E, .Lfunc_end9-_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h4e3b916b76b20f82E
	.cfi_endproc

	.section	.text._ZN4main4main17h2d6c3d678af9e020E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4main4main17h2d6c3d678af9e020E,@function
_ZN4main4main17h2d6c3d678af9e020E:
	.cfi_startproc
	subq	$168, %rsp
	.cfi_def_cfa_offset 176
	movq	.L__unnamed_2(%rip), %rax
	movq	.L__unnamed_3(%rip), %rcx
	movl	$4, %edi
	movq	%rax, 56(%rsp)
	movq	%rcx, 48(%rsp)
	callq	*add_one@GOTPCREL(%rip)
	movl	%eax, 164(%rsp)
	movq	_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hdff7ceae31515f76E@GOTPCREL(%rip), %rsi
	movq	48(%rsp), %rax
	movq	%rax, 144(%rsp)
	leaq	164(%rsp), %rcx
	movq	%rcx, 152(%rsp)
	movq	144(%rsp), %rdi
	movq	152(%rsp), %rcx
	movq	%rcx, 40(%rsp)
	callq	_ZN4core3fmt10ArgumentV13new17h76a8804b1a74d0aeE
	movq	%rax, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movq	_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hdff7ceae31515f76E@GOTPCREL(%rip), %rsi
	movq	40(%rsp), %rdi
	callq	_ZN4core3fmt10ArgumentV13new17h76a8804b1a74d0aeE
	movq	%rax, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	24(%rsp), %rcx
	movq	%rcx, 120(%rsp)
	movq	16(%rsp), %rdx
	movq	%rdx, 128(%rsp)
	movq	8(%rsp), %rsi
	movq	%rsi, 136(%rsp)
	leaq	112(%rsp), %rdi
	leaq	64(%rsp), %r8
	movq	%rdi, (%rsp)
	movq	%r8, %rdi
	movq	56(%rsp), %rsi
	movl	$3, %edx
	movq	(%rsp), %rcx
	movl	$2, %r8d
	callq	_ZN4core3fmt9Arguments6new_v117hd11211e9ad0f32ecE
	leaq	64(%rsp), %rdi
	callq	*_ZN3std2io5stdio6_print17h59a395b7f155a198E@GOTPCREL(%rip)
	addq	$168, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end10:
	.size	_ZN4main4main17h2d6c3d678af9e020E, .Lfunc_end10-_ZN4main4main17h2d6c3d678af9e020E
	.cfi_endproc

	.section	.text.main,"ax",@progbits
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movslq	%edi, %rax
	leaq	_ZN4main4main17h2d6c3d678af9e020E(%rip), %rdi
	movq	%rsi, (%rsp)
	movq	%rax, %rsi
	movq	(%rsp), %rdx
	callq	_ZN3std2rt10lang_start17h364fe5eedd632d7aE
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end11:
	.size	main, .Lfunc_end11-main
	.cfi_endproc

	.type	.L__unnamed_1,@object
	.section	.data.rel.ro..L__unnamed_1,"aw",@progbits
	.p2align	3
.L__unnamed_1:
	.quad	_ZN4core3ptr13drop_in_place17h5ffed929b82e9e01E
	.quad	8
	.quad	8
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h74b12a20537b1ba7E
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h74b12a20537b1ba7E
	.quad	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hcc8a2a2684613721E
	.size	.L__unnamed_1, 48

	.type	.L__unnamed_4,@object
	.section	.rodata..L__unnamed_4,"a",@progbits
.L__unnamed_4:
	.ascii	"add_one : "
	.size	.L__unnamed_4, 10

	.type	.L__unnamed_5,@object
	.section	.rodata.cst4,"aM",@progbits,4
.L__unnamed_5:
	.ascii	" -> "
	.size	.L__unnamed_5, 4

	.type	.L__unnamed_6,@object
	.section	.rodata..L__unnamed_6,"a",@progbits
.L__unnamed_6:
	.byte	10
	.size	.L__unnamed_6, 1

	.type	.L__unnamed_7,@object
	.section	.data.rel.ro..L__unnamed_7,"aw",@progbits
	.p2align	3
.L__unnamed_7:
	.quad	.L__unnamed_4
	.asciz	"\n\000\000\000\000\000\000"
	.quad	.L__unnamed_5
	.asciz	"\004\000\000\000\000\000\000"
	.quad	.L__unnamed_6
	.asciz	"\001\000\000\000\000\000\000"
	.size	.L__unnamed_7, 48

	.type	.L__unnamed_2,@object
	.section	.data.rel.ro..L__unnamed_2,"aw",@progbits
	.p2align	3
.L__unnamed_2:
	.quad	.L__unnamed_7
	.size	.L__unnamed_2, 8

	.type	.L__unnamed_8,@object
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.L__unnamed_8:
	.asciz	"\004\000\000"
	.size	.L__unnamed_8, 4

	.type	.L__unnamed_3,@object
	.section	.data.rel.ro..L__unnamed_3,"aw",@progbits
	.p2align	3
.L__unnamed_3:
	.quad	.L__unnamed_8
	.size	.L__unnamed_3, 8

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.section	".note.GNU-stack","",@progbits
