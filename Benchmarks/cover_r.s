	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_swi120
	.p2align	4, 0x90
_swi120:                                ## @swi120
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Lcfi3:
	.cfi_offset %rbx, -24
	movl	%edi, %ebx
	incl	_FunctionCounter(%rip)
	leaq	L___unnamed_1(%rip), %rdi
	leaq	L___unnamed_2(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movl	%ebx, -16(%rbp)
	movl	$0, -12(%rbp)
	leaq	LJTI0_0(%rip), %rax
	cmpl	$119, -12(%rbp)
	jle	LBB0_2
	jmp	LBB0_6
	.p2align	4, 0x90
LBB0_3:                                 ## %for.body
                                        ##   in Loop: Header=BB0_2 Depth=1
	movslq	(%rax,%rcx,4), %rcx
	addq	%rax, %rcx
	jmpq	*%rcx
LBB0_4:                                 ## %sw.bb
                                        ##   in Loop: Header=BB0_2 Depth=1
	incl	-16(%rbp)
	incl	-12(%rbp)
	cmpl	$119, -12(%rbp)
	jg	LBB0_6
LBB0_2:                                 ## %for.body
                                        ## =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %ecx
	cmpq	$119, %rcx
	jbe	LBB0_3
## BB#5:                                ## %sw.default
                                        ##   in Loop: Header=BB0_2 Depth=1
	decl	-16(%rbp)
	incl	-12(%rbp)
	cmpl	$119, -12(%rbp)
	jle	LBB0_2
LBB0_6:                                 ## %for.end
	movl	-16(%rbp), %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L0_0_set_4 = LBB0_4-LJTI0_0
LJTI0_0:
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.end_data_region

	.globl	_swi50
	.p2align	4, 0x90
_swi50:                                 ## @swi50
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi4:
	.cfi_def_cfa_offset 16
Lcfi5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi6:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Lcfi7:
	.cfi_offset %rbx, -24
	movl	%edi, %ebx
	incl	_FunctionCounter.1(%rip)
	leaq	L___unnamed_3(%rip), %rdi
	leaq	L___unnamed_4(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movl	%ebx, -16(%rbp)
	movl	$0, -12(%rbp)
	leaq	LJTI1_0(%rip), %rax
	cmpl	$49, -12(%rbp)
	jle	LBB1_2
	jmp	LBB1_6
	.p2align	4, 0x90
LBB1_3:                                 ## %for.body
                                        ##   in Loop: Header=BB1_2 Depth=1
	movslq	(%rax,%rcx,4), %rcx
	addq	%rax, %rcx
	jmpq	*%rcx
LBB1_4:                                 ## %sw.bb
                                        ##   in Loop: Header=BB1_2 Depth=1
	incl	-16(%rbp)
	incl	-12(%rbp)
	cmpl	$49, -12(%rbp)
	jg	LBB1_6
LBB1_2:                                 ## %for.body
                                        ## =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %ecx
	cmpq	$59, %rcx
	jbe	LBB1_3
## BB#5:                                ## %sw.default
                                        ##   in Loop: Header=BB1_2 Depth=1
	decl	-16(%rbp)
	incl	-12(%rbp)
	cmpl	$49, -12(%rbp)
	jle	LBB1_2
LBB1_6:                                 ## %for.end
	movl	-16(%rbp), %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L1_0_set_4 = LBB1_4-LJTI1_0
LJTI1_0:
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.long	L1_0_set_4
	.end_data_region

	.globl	_swi10
	.p2align	4, 0x90
_swi10:                                 ## @swi10
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi8:
	.cfi_def_cfa_offset 16
Lcfi9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi10:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Lcfi11:
	.cfi_offset %rbx, -24
	movl	%edi, %ebx
	incl	_FunctionCounter.2(%rip)
	leaq	L___unnamed_5(%rip), %rdi
	leaq	L___unnamed_6(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movl	%ebx, -16(%rbp)
	movl	$0, -12(%rbp)
	leaq	LJTI2_0(%rip), %rax
	cmpl	$9, -12(%rbp)
	jle	LBB2_2
	jmp	LBB2_6
	.p2align	4, 0x90
LBB2_3:                                 ## %for.body
                                        ##   in Loop: Header=BB2_2 Depth=1
	movslq	(%rax,%rcx,4), %rcx
	addq	%rax, %rcx
	jmpq	*%rcx
LBB2_4:                                 ## %sw.bb
                                        ##   in Loop: Header=BB2_2 Depth=1
	incl	-16(%rbp)
	incl	-12(%rbp)
	cmpl	$9, -12(%rbp)
	jg	LBB2_6
LBB2_2:                                 ## %for.body
                                        ## =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %ecx
	cmpq	$9, %rcx
	jbe	LBB2_3
## BB#5:                                ## %sw.default
                                        ##   in Loop: Header=BB2_2 Depth=1
	decl	-16(%rbp)
	incl	-12(%rbp)
	cmpl	$9, -12(%rbp)
	jle	LBB2_2
LBB2_6:                                 ## %for.end
	movl	-16(%rbp), %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L2_0_set_4 = LBB2_4-LJTI2_0
LJTI2_0:
	.long	L2_0_set_4
	.long	L2_0_set_4
	.long	L2_0_set_4
	.long	L2_0_set_4
	.long	L2_0_set_4
	.long	L2_0_set_4
	.long	L2_0_set_4
	.long	L2_0_set_4
	.long	L2_0_set_4
	.long	L2_0_set_4
	.end_data_region

	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi12:
	.cfi_def_cfa_offset 16
Lcfi13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi14:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
Lcfi15:
	.cfi_offset %rbx, -32
Lcfi16:
	.cfi_offset %r14, -24
	leaq	L___unnamed_7(%rip), %rdi
	leaq	L___unnamed_8(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	incl	_FunctionCounter.3(%rip)
	leaq	L___unnamed_9(%rip), %rdi
	leaq	L___unnamed_10(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	_swi10
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	_swi50
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	_swi120
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %r14d
	leaq	L___unnamed_11(%rip), %rdi
	leaq	L___unnamed_12(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movl	_FunctionCounter.2(%rip), %edx
	leaq	L___unnamed_13(%rip), %rbx
	leaq	L___unnamed_14(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter.3(%rip), %edx
	leaq	L___unnamed_15(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter(%rip), %edx
	leaq	L___unnamed_16(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter.1(%rip), %edx
	leaq	L___unnamed_17(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	%r14d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

.zerofill __DATA,__bss,_FunctionCounter,4,2 ## @FunctionCounter
.zerofill __DATA,__bss,_FunctionCounter.1,4,2 ## @FunctionCounter.1
.zerofill __DATA,__bss,_FunctionCounter.2,4,2 ## @FunctionCounter.2
.zerofill __DATA,__bss,_FunctionCounter.3,4,2 ## @FunctionCounter.3
	.section	__TEXT,__cstring,cstring_literals
L___unnamed_1:                          ## @0
	.asciz	"%s\n"

L___unnamed_2:                          ## @1
	.asciz	"swi120"

L___unnamed_3:                          ## @2
	.asciz	"%s\n"

L___unnamed_4:                          ## @3
	.asciz	"swi50"

L___unnamed_5:                          ## @4
	.asciz	"%s\n"

L___unnamed_6:                          ## @5
	.asciz	"swi10"

L___unnamed_9:                          ## @6
	.asciz	"%s\n"

L___unnamed_10:                         ## @7
	.asciz	"main"

L___unnamed_11:                         ## @8
	.asciz	"\n%s\n"

	.p2align	4               ## @9
L___unnamed_12:
	.asciz	"****** Function frequencies ******"

L___unnamed_13:                         ## @10
	.asciz	"%s: %d\n"

L___unnamed_14:                         ## @11
	.asciz	"swi10"

L___unnamed_15:                         ## @12
	.asciz	"main"

L___unnamed_16:                         ## @13
	.asciz	"swi120"

L___unnamed_17:                         ## @14
	.asciz	"swi50"

L___unnamed_7:                          ## @15
	.asciz	"%s\n"

	.p2align	4               ## @16
L___unnamed_8:
	.asciz	"****** Call sequence ******"


.subsections_via_symbols
