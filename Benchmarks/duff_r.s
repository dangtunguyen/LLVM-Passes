	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_duffcopy
	.p2align	4, 0x90
_duffcopy:                              ## @duffcopy
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
Lcfi3:
	.cfi_offset %rbx, -40
Lcfi4:
	.cfi_offset %r14, -32
Lcfi5:
	.cfi_offset %r15, -24
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r15
	incl	_FunctionCounter(%rip)
	leaq	L___unnamed_1(%rip), %rdi
	leaq	L___unnamed_2(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movq	%r15, -40(%rbp)
	movq	%r14, -32(%rbp)
	movl	%ebx, -48(%rbp)
	leal	7(%rbx), %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	7(%rbx,%rax), %eax
	sarl	$3, %eax
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	addl	%eax, %ecx
	andl	$-8, %ecx
	subl	%ecx, %eax
	cmpl	$7, %eax
	ja	LBB0_10
## BB#1:                                ## %entry
	leaq	LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB0_2:                                 ## %do.body
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %al
	movq	-40(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -40(%rbp)
	movb	%al, (%rcx)
LBB0_3:                                 ## %sw.bb2
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %al
	movq	-40(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -40(%rbp)
	movb	%al, (%rcx)
LBB0_4:                                 ## %sw.bb5
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %al
	movq	-40(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -40(%rbp)
	movb	%al, (%rcx)
LBB0_5:                                 ## %sw.bb8
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %al
	movq	-40(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -40(%rbp)
	movb	%al, (%rcx)
LBB0_6:                                 ## %sw.bb11
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %al
	movq	-40(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -40(%rbp)
	movb	%al, (%rcx)
LBB0_7:                                 ## %sw.bb14
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %al
	movq	-40(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -40(%rbp)
	movb	%al, (%rcx)
LBB0_8:                                 ## %sw.bb17
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %al
	movq	-40(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -40(%rbp)
	movb	%al, (%rcx)
LBB0_9:                                 ## %do.cond
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %al
	movq	-40(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -40(%rbp)
	movb	%al, (%rcx)
	decl	-44(%rbp)
	jg	LBB0_2
LBB0_10:                                ## %sw.epilog
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L0_0_set_2 = LBB0_2-LJTI0_0
L0_0_set_9 = LBB0_9-LJTI0_0
L0_0_set_8 = LBB0_8-LJTI0_0
L0_0_set_7 = LBB0_7-LJTI0_0
L0_0_set_6 = LBB0_6-LJTI0_0
L0_0_set_5 = LBB0_5-LJTI0_0
L0_0_set_4 = LBB0_4-LJTI0_0
L0_0_set_3 = LBB0_3-LJTI0_0
LJTI0_0:
	.long	L0_0_set_2
	.long	L0_0_set_9
	.long	L0_0_set_8
	.long	L0_0_set_7
	.long	L0_0_set_6
	.long	L0_0_set_5
	.long	L0_0_set_4
	.long	L0_0_set_3
	.end_data_region

	.globl	_initialize
	.p2align	4, 0x90
_initialize:                            ## @initialize
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi6:
	.cfi_def_cfa_offset 16
Lcfi7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi8:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
Lcfi9:
	.cfi_offset %rbx, -32
Lcfi10:
	.cfi_offset %r14, -24
	movl	%esi, %r14d
	movq	%rdi, %rbx
	incl	_FunctionCounter.1(%rip)
	leaq	L___unnamed_3(%rip), %rdi
	leaq	L___unnamed_4(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movq	%rbx, -32(%rbp)
	movl	%r14d, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	LBB1_1
	.p2align	4, 0x90
LBB1_2:                                 ## %for.body
                                        ##   in Loop: Header=BB1_1 Depth=1
	movl	-24(%rbp), %eax
	movslq	-20(%rbp), %rcx
	subl	%ecx, %eax
	movq	-32(%rbp), %rdx
	movb	%al, (%rdx,%rcx)
	incl	-20(%rbp)
LBB1_1:                                 ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	LBB1_2
## BB#3:                                ## %for.end
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi11:
	.cfi_def_cfa_offset 16
Lcfi12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi13:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Lcfi14:
	.cfi_offset %rbx, -24
	leaq	L___unnamed_5(%rip), %rdi
	leaq	L___unnamed_6(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	incl	_FunctionCounter.2(%rip)
	leaq	L___unnamed_7(%rip), %rdi
	leaq	L___unnamed_8(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movq	_source@GOTPCREL(%rip), %rbx
	movl	$100, %esi
	movq	%rbx, %rdi
	callq	_initialize
	movq	_target@GOTPCREL(%rip), %rsi
	movl	$43, %edx
	movq	%rbx, %rdi
	callq	_duffcopy
	leaq	L___unnamed_9(%rip), %rdi
	leaq	L___unnamed_10(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movl	_FunctionCounter.2(%rip), %edx
	leaq	L___unnamed_11(%rip), %rbx
	leaq	L___unnamed_12(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter.1(%rip), %edx
	leaq	L___unnamed_13(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter(%rip), %edx
	leaq	L___unnamed_14(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.comm	_source,100,4           ## @source
	.comm	_target,100,4           ## @target
.zerofill __DATA,__bss,_FunctionCounter,4,2 ## @FunctionCounter
.zerofill __DATA,__bss,_FunctionCounter.1,4,2 ## @FunctionCounter.1
.zerofill __DATA,__bss,_FunctionCounter.2,4,2 ## @FunctionCounter.2
	.section	__TEXT,__cstring,cstring_literals
L___unnamed_1:                          ## @0
	.asciz	"%s\n"

L___unnamed_2:                          ## @1
	.asciz	"duffcopy"

L___unnamed_3:                          ## @2
	.asciz	"%s\n"

L___unnamed_4:                          ## @3
	.asciz	"initialize"

L___unnamed_7:                          ## @4
	.asciz	"%s\n"

L___unnamed_8:                          ## @5
	.asciz	"main"

L___unnamed_9:                          ## @6
	.asciz	"\n%s\n"

	.p2align	4               ## @7
L___unnamed_10:
	.asciz	"****** Function frequencies ******"

L___unnamed_11:                         ## @8
	.asciz	"%s: %d\n"

L___unnamed_12:                         ## @9
	.asciz	"main"

L___unnamed_13:                         ## @10
	.asciz	"initialize"

L___unnamed_14:                         ## @11
	.asciz	"duffcopy"

L___unnamed_5:                          ## @12
	.asciz	"%s\n"

	.p2align	4               ## @13
L___unnamed_6:
	.asciz	"****** Call sequence ******"


.subsections_via_symbols
