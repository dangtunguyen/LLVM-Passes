	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
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
	leaq	L___unnamed_1(%rip), %rdi
	leaq	L___unnamed_2(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	incl	_FunctionCounter(%rip)
	leaq	L___unnamed_3(%rip), %rdi
	leaq	L___unnamed_4(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	callq	_InitSeed
	movq	_ArrayA@GOTPCREL(%rip), %rdi
	movq	_ArrayB@GOTPCREL(%rip), %rsi
	movq	_ResultArray@GOTPCREL(%rip), %rdx
	callq	_Test
	leaq	L___unnamed_5(%rip), %rdi
	leaq	L___unnamed_6(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movl	_FunctionCounter.4(%rip), %edx
	leaq	L___unnamed_7(%rip), %rbx
	leaq	L___unnamed_8(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter.1(%rip), %edx
	leaq	L___unnamed_9(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter(%rip), %edx
	leaq	L___unnamed_10(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter.2(%rip), %edx
	leaq	L___unnamed_11(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter.5(%rip), %edx
	leaq	L___unnamed_12(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter.3(%rip), %edx
	leaq	L___unnamed_13(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_InitSeed
	.p2align	4, 0x90
_InitSeed:                              ## @InitSeed
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
	incl	_FunctionCounter.1(%rip)
	leaq	L___unnamed_14(%rip), %rdi
	leaq	L___unnamed_15(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movq	_Seed@GOTPCREL(%rip), %rax
	movl	$0, (%rax)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_Test
	.p2align	4, 0x90
_Test:                                  ## @Test
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi7:
	.cfi_def_cfa_offset 16
Lcfi8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi9:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
Lcfi10:
	.cfi_offset %rbx, -40
Lcfi11:
	.cfi_offset %r14, -32
Lcfi12:
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	incl	_FunctionCounter.2(%rip)
	leaq	L___unnamed_16(%rip), %rdi
	leaq	L___unnamed_17(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movq	%rbx, -40(%rbp)
	movq	%r15, -32(%rbp)
	movq	%r14, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	_Initialize
	movq	-32(%rbp), %rdi
	callq	_Initialize
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	_Multiply
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_Initialize
	.p2align	4, 0x90
_Initialize:                            ## @Initialize
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi13:
	.cfi_def_cfa_offset 16
Lcfi14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi15:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
Lcfi16:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	incl	_FunctionCounter.3(%rip)
	leaq	L___unnamed_18(%rip), %rdi
	leaq	L___unnamed_19(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movq	%rbx, -24(%rbp)
	movl	$0, -16(%rbp)
	cmpl	$19, -16(%rbp)
	jle	LBB3_2
	jmp	LBB3_6
	.p2align	4, 0x90
LBB3_5:                                 ## %for.inc6
                                        ##   in Loop: Header=BB3_2 Depth=1
	incl	-16(%rbp)
	cmpl	$19, -16(%rbp)
	jg	LBB3_6
LBB3_2:                                 ## %for.body
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_4 Depth 2
	movl	$0, -12(%rbp)
	cmpl	$19, -12(%rbp)
	jg	LBB3_5
	.p2align	4, 0x90
LBB3_4:                                 ## %for.inc
                                        ##   Parent Loop BB3_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	callq	_RandomInteger
	movslq	-16(%rbp), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	shlq	$4, %rcx
	addq	-24(%rbp), %rcx
	movslq	-12(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	incl	-12(%rbp)
	cmpl	$19, -12(%rbp)
	jle	LBB3_4
	jmp	LBB3_5
LBB3_6:                                 ## %for.end8
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_Multiply
	.p2align	4, 0x90
_Multiply:                              ## @Multiply
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi17:
	.cfi_def_cfa_offset 16
Lcfi18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi19:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
Lcfi20:
	.cfi_offset %rbx, -40
Lcfi21:
	.cfi_offset %r14, -32
Lcfi22:
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	incl	_FunctionCounter.4(%rip)
	leaq	L___unnamed_20(%rip), %rdi
	leaq	L___unnamed_21(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movq	%rbx, -64(%rbp)
	movq	%r15, -56(%rbp)
	movq	%r14, -48(%rbp)
	movl	$0, -32(%rbp)
	cmpl	$19, -32(%rbp)
	jle	LBB4_2
	jmp	LBB4_9
	.p2align	4, 0x90
LBB4_8:                                 ## %for.inc24
                                        ##   in Loop: Header=BB4_2 Depth=1
	incl	-32(%rbp)
	cmpl	$19, -32(%rbp)
	jg	LBB4_9
LBB4_2:                                 ## %for.body
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB4_4 Depth 2
                                        ##       Child Loop BB4_6 Depth 3
	movl	$0, -28(%rbp)
	cmpl	$19, -28(%rbp)
	jle	LBB4_4
	jmp	LBB4_8
	.p2align	4, 0x90
LBB4_7:                                 ## %for.inc21
                                        ##   in Loop: Header=BB4_4 Depth=2
	incl	-28(%rbp)
	cmpl	$19, -28(%rbp)
	jg	LBB4_8
LBB4_4:                                 ## %for.body3
                                        ##   Parent Loop BB4_2 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB4_6 Depth 3
	movslq	-32(%rbp), %rax
	leaq	(%rax,%rax,4), %rax
	shlq	$4, %rax
	addq	-48(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
	movl	$0, -36(%rbp)
	cmpl	$19, -36(%rbp)
	jg	LBB4_7
	.p2align	4, 0x90
LBB4_6:                                 ## %for.inc
                                        ##   Parent Loop BB4_2 Depth=1
                                        ##     Parent Loop BB4_4 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movslq	-32(%rbp), %rax
	shlq	$4, %rax
	leaq	(%rax,%rax,4), %rax
	movq	-64(%rbp), %rcx
	addq	%rax, %rcx
	movslq	-36(%rbp), %rdx
	movl	(%rcx,%rdx,4), %ecx
	leaq	(%rdx,%rdx,4), %rdx
	shlq	$4, %rdx
	addq	-56(%rbp), %rdx
	movslq	-28(%rbp), %rsi
	imull	(%rdx,%rsi,4), %ecx
	addq	-48(%rbp), %rax
	addl	%ecx, (%rax,%rsi,4)
	incl	-36(%rbp)
	cmpl	$19, -36(%rbp)
	jle	LBB4_6
	jmp	LBB4_7
LBB4_9:                                 ## %for.end26
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_RandomInteger
	.p2align	4, 0x90
_RandomInteger:                         ## @RandomInteger
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi23:
	.cfi_def_cfa_offset 16
Lcfi24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi25:
	.cfi_def_cfa_register %rbp
	incl	_FunctionCounter.5(%rip)
	leaq	L___unnamed_22(%rip), %rdi
	leaq	L___unnamed_23(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movq	_Seed@GOTPCREL(%rip), %rcx
	imull	$133, (%rcx), %eax
	addl	$81, %eax
	cltq
	imulq	$271652039, %rax, %rdx  ## imm = 0x103114C7
	movq	%rdx, %rsi
	shrq	$63, %rsi
	sarq	$41, %rdx
	addl	%esi, %edx
	imull	$8095, %edx, %edx       ## imm = 0x1F9F
	subl	%edx, %eax
	movl	%eax, (%rcx)
                                        ## kill: %EAX<def> %EAX<kill> %RAX<kill>
	popq	%rbp
	retq
	.cfi_endproc

	.comm	_ArrayA,1600,4          ## @ArrayA
	.comm	_ArrayB,1600,4          ## @ArrayB
	.comm	_ResultArray,1600,4     ## @ResultArray
	.comm	_Seed,4,2               ## @Seed
.zerofill __DATA,__bss,_FunctionCounter,4,2 ## @FunctionCounter
.zerofill __DATA,__bss,_FunctionCounter.1,4,2 ## @FunctionCounter.1
.zerofill __DATA,__bss,_FunctionCounter.2,4,2 ## @FunctionCounter.2
.zerofill __DATA,__bss,_FunctionCounter.3,4,2 ## @FunctionCounter.3
.zerofill __DATA,__bss,_FunctionCounter.4,4,2 ## @FunctionCounter.4
.zerofill __DATA,__bss,_FunctionCounter.5,4,2 ## @FunctionCounter.5
	.section	__TEXT,__cstring,cstring_literals
L___unnamed_3:                          ## @0
	.asciz	"%s\n"

L___unnamed_4:                          ## @1
	.asciz	"main"

L___unnamed_5:                          ## @2
	.asciz	"\n%s\n"

	.p2align	4               ## @3
L___unnamed_6:
	.asciz	"****** Function frequencies ******"

L___unnamed_7:                          ## @4
	.asciz	"%s: %d\n"

L___unnamed_8:                          ## @5
	.asciz	"Multiply"

L___unnamed_9:                          ## @6
	.asciz	"InitSeed"

L___unnamed_10:                         ## @7
	.asciz	"main"

L___unnamed_11:                         ## @8
	.asciz	"Test"

L___unnamed_12:                         ## @9
	.asciz	"RandomInteger"

L___unnamed_13:                         ## @10
	.asciz	"Initialize"

L___unnamed_1:                          ## @11
	.asciz	"%s\n"

	.p2align	4               ## @12
L___unnamed_2:
	.asciz	"****** Call sequence ******"

L___unnamed_14:                         ## @13
	.asciz	"%s\n"

L___unnamed_15:                         ## @14
	.asciz	"InitSeed"

L___unnamed_16:                         ## @15
	.asciz	"%s\n"

L___unnamed_17:                         ## @16
	.asciz	"Test"

L___unnamed_18:                         ## @17
	.asciz	"%s\n"

L___unnamed_19:                         ## @18
	.asciz	"Initialize"

L___unnamed_20:                         ## @19
	.asciz	"%s\n"

L___unnamed_21:                         ## @20
	.asciz	"Multiply"

L___unnamed_22:                         ## @21
	.asciz	"%s\n"

L___unnamed_23:                         ## @22
	.asciz	"RandomInteger"


.subsections_via_symbols
