	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI0_0:
	.quad	-9223372036854775808    ## double -0
	.quad	-9223372036854775808    ## double -0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_minver_fabs
	.p2align	4, 0x90
_minver_fabs:                           ## @minver_fabs
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
	subq	$32, %rsp
	movsd	%xmm0, -24(%rbp)        ## 8-byte Spill
	incl	_FunctionCounter(%rip)
	leaq	L___unnamed_1(%rip), %rdi
	leaq	L___unnamed_2(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movsd	-24(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	movsd	%xmm1, -16(%rbp)
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jb	LBB0_2
## BB#1:                                ## %if.then
	movsd	-16(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	LBB0_3
LBB0_2:                                 ## %if.else
	movsd	-16(%rbp), %xmm0        ## xmm0 = mem[0],zero
	xorpd	LCPI0_0(%rip), %xmm0
	movlpd	%xmm0, -8(%rbp)
LBB0_3:                                 ## %if.end
	movsd	-8(%rbp), %xmm0         ## xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi3:
	.cfi_def_cfa_offset 16
Lcfi4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi5:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
Lcfi6:
	.cfi_offset %rbx, -24
	leaq	L___unnamed_3(%rip), %rdi
	leaq	L___unnamed_4(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	incl	_FunctionCounter.1(%rip)
	leaq	L___unnamed_5(%rip), %rdi
	leaq	L___unnamed_6(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movl	$0, -28(%rbp)
	movabsq	$4517329193108106637, %rax ## imm = 0x3EB0C6F7A0B5ED8D
	movq	%rax, -24(%rbp)
	movl	$0, -16(%rbp)
	leaq	_a(%rip), %rbx
	movq	_aa@GOTPCREL(%rip), %rax
	cmpl	$2, -16(%rbp)
	jle	LBB1_2
	jmp	LBB1_6
	.p2align	4, 0x90
LBB1_5:                                 ## %for.inc10
                                        ##   in Loop: Header=BB1_2 Depth=1
	incl	-16(%rbp)
	cmpl	$2, -16(%rbp)
	jg	LBB1_6
LBB1_2:                                 ## %for.body
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_4 Depth 2
	movl	$0, -12(%rbp)
	cmpl	$2, -12(%rbp)
	jg	LBB1_5
	.p2align	4, 0x90
LBB1_4:                                 ## %for.inc
                                        ##   Parent Loop BB1_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movslq	-16(%rbp), %rcx
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%rbx,%rcx), %rdx
	movslq	-12(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm0    ## xmm0 = mem[0],zero
	addq	%rax, %rcx
	movsd	%xmm0, (%rcx,%rsi,8)
	incl	-12(%rbp)
	cmpl	$2, -12(%rbp)
	jle	LBB1_4
	jmp	LBB1_5
LBB1_6:                                 ## %for.end12
	movsd	-24(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movl	$3, %edi
	movl	$3, %esi
	callq	_minver
	movl	$0, -16(%rbp)
	movq	_a_i@GOTPCREL(%rip), %rax
	cmpl	$2, -16(%rbp)
	jle	LBB1_8
	jmp	LBB1_12
	.p2align	4, 0x90
LBB1_11:                                ## %for.inc30
                                        ##   in Loop: Header=BB1_8 Depth=1
	incl	-16(%rbp)
	cmpl	$2, -16(%rbp)
	jg	LBB1_12
LBB1_8:                                 ## %for.body15
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_10 Depth 2
	movl	$0, -12(%rbp)
	cmpl	$2, -12(%rbp)
	jg	LBB1_11
	.p2align	4, 0x90
LBB1_10:                                ## %for.inc27
                                        ##   Parent Loop BB1_8 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movslq	-16(%rbp), %rcx
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%rbx,%rcx), %rdx
	movslq	-12(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm0    ## xmm0 = mem[0],zero
	addq	%rax, %rcx
	movsd	%xmm0, (%rcx,%rsi,8)
	incl	-12(%rbp)
	cmpl	$2, -12(%rbp)
	jle	LBB1_10
	jmp	LBB1_11
LBB1_12:                                ## %for.end32
	movl	$3, %edi
	movl	$3, %esi
	movl	$3, %edx
	movl	$3, %ecx
	callq	_mmul
	leaq	L___unnamed_7(%rip), %rdi
	leaq	L___unnamed_8(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movl	_FunctionCounter.1(%rip), %edx
	leaq	L___unnamed_9(%rip), %rbx
	leaq	L___unnamed_10(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter(%rip), %edx
	leaq	L___unnamed_11(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter.3(%rip), %edx
	leaq	L___unnamed_12(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter.2(%rip), %edx
	leaq	L___unnamed_13(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI2_0:
	.quad	-9223372036854775808    ## double -0
	.quad	-9223372036854775808    ## double -0
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3
LCPI2_1:
	.quad	4607182418800017408     ## double 1
LCPI2_2:
	.quad	0                       ## double 0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_minver
	.p2align	4, 0x90
_minver:                                ## @minver
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
	pushq	%r14
	pushq	%rbx
	subq	$2128, %rsp             ## imm = 0x850
Lcfi10:
	.cfi_offset %rbx, -32
Lcfi11:
	.cfi_offset %r14, -24
	movsd	%xmm0, -2136(%rbp)      ## 8-byte Spill
	movl	%esi, %r14d
	movl	%edi, %ebx
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	incl	_FunctionCounter.2(%rip)
	leaq	L___unnamed_14(%rip), %rdi
	leaq	L___unnamed_15(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movl	%ebx, -2048(%rbp)
	movl	%r14d, -2068(%rbp)
	movsd	-2136(%rbp), %xmm0      ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	%xmm0, -2128(%rbp)
	cmpl	$2, -2048(%rbp)
	jl	LBB2_3
## BB#1:                                ## %lor.lhs.false
	cmpl	$500, -2048(%rbp)       ## imm = 0x1F4
	jg	LBB2_3
## BB#2:                                ## %lor.lhs.false2
	xorpd	%xmm0, %xmm0
	ucomisd	-2128(%rbp), %xmm0
	jb	LBB2_4
LBB2_3:                                 ## %if.then
	movl	$999, -2080(%rbp)       ## imm = 0x3E7
LBB2_43:                                ## %return
	movl	-2080(%rbp), %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	cmpq	-24(%rbp), %rcx
	jne	LBB2_45
## BB#44:                               ## %return
	addq	$2128, %rsp             ## imm = 0x850
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB2_4:                                 ## %if.end
	movabsq	$4607182418800017408, %rax ## imm = 0x3FF0000000000000
	movq	%rax, -2088(%rbp)
	movl	$0, -2036(%rbp)
	jmp	LBB2_5
	.p2align	4, 0x90
LBB2_6:                                 ## %for.inc
                                        ##   in Loop: Header=BB2_5 Depth=1
	movslq	-2036(%rbp), %rax
	movl	%eax, -2032(%rbp,%rax,4)
	incl	-2036(%rbp)
LBB2_5:                                 ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movl	-2036(%rbp), %eax
	cmpl	-2048(%rbp), %eax
	jl	LBB2_6
## BB#7:                                ## %for.end
	movl	$0, -2040(%rbp)
	leaq	_a(%rip), %rbx
	jmp	LBB2_8
	.p2align	4, 0x90
LBB2_34:                                ## %for.inc123
                                        ##   in Loop: Header=BB2_8 Depth=1
	movsd	LCPI2_1(%rip), %xmm0    ## xmm0 = mem[0],zero
	divsd	-2104(%rbp), %xmm0
	movslq	-2040(%rbp), %rax
	leaq	(%rax,%rax,2), %rcx
	leaq	(%rbx,%rcx,8), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	incl	-2040(%rbp)
LBB2_8:                                 ## %for.cond5
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_10 Depth 2
                                        ##     Child Loop BB2_18 Depth 2
                                        ##     Child Loop BB2_21 Depth 2
                                        ##     Child Loop BB2_24 Depth 2
                                        ##       Child Loop BB2_28 Depth 3
	movl	-2040(%rbp), %eax
	cmpl	-2048(%rbp), %eax
	jge	LBB2_35
## BB#9:                                ## %for.body7
                                        ##   in Loop: Header=BB2_8 Depth=1
	movq	$0, -2120(%rbp)
	movl	-2040(%rbp), %eax
	movl	%eax, -2036(%rbp)
	jmp	LBB2_10
	.p2align	4, 0x90
LBB2_13:                                ## %for.inc18
                                        ##   in Loop: Header=BB2_10 Depth=2
	incl	-2036(%rbp)
LBB2_10:                                ## %for.cond8
                                        ##   Parent Loop BB2_8 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-2036(%rbp), %eax
	cmpl	-2048(%rbp), %eax
	jge	LBB2_14
## BB#11:                               ## %for.body10
                                        ##   in Loop: Header=BB2_10 Depth=2
	movslq	-2036(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	(%rbx,%rax,8), %rax
	movslq	-2040(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	callq	_minver_fabs
	movsd	%xmm0, -2064(%rbp)
	ucomisd	-2120(%rbp), %xmm0
	jbe	LBB2_13
## BB#12:                               ## %if.then16
                                        ##   in Loop: Header=BB2_10 Depth=2
	movsd	-2064(%rbp), %xmm0      ## xmm0 = mem[0],zero
	movsd	%xmm0, -2120(%rbp)
	movl	-2036(%rbp), %eax
	movl	%eax, -2052(%rbp)
	jmp	LBB2_13
	.p2align	4, 0x90
LBB2_14:                                ## %for.end20
                                        ##   in Loop: Header=BB2_8 Depth=1
	movslq	-2052(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	(%rbx,%rax,8), %rax
	movslq	-2040(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, -2104(%rbp)
	callq	_minver_fabs
	movsd	%xmm0, -2144(%rbp)
	movsd	-2128(%rbp), %xmm1      ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	LBB2_15
## BB#16:                               ## %if.end28
                                        ##   in Loop: Header=BB2_8 Depth=1
	movsd	-2088(%rbp), %xmm0      ## xmm0 = mem[0],zero
	mulsd	-2104(%rbp), %xmm0
	movsd	%xmm0, -2088(%rbp)
	movl	-2040(%rbp), %eax
	imull	-2068(%rbp), %eax
	movl	%eax, -2072(%rbp)
	movl	-2052(%rbp), %eax
	imull	-2068(%rbp), %eax
	movl	%eax, -2092(%rbp)
	movl	-2052(%rbp), %eax
	cmpl	-2040(%rbp), %eax
	je	LBB2_20
## BB#17:                               ## %if.then32
                                        ##   in Loop: Header=BB2_8 Depth=1
	movsd	-2064(%rbp), %xmm0      ## xmm0 = mem[0],zero
	xorpd	LCPI2_0(%rip), %xmm0
	movlpd	%xmm0, -2088(%rbp)
	movslq	-2040(%rbp), %rax
	movl	-2032(%rbp,%rax,4), %eax
	movl	%eax, -2076(%rbp)
	movslq	-2052(%rbp), %rax
	movl	-2032(%rbp,%rax,4), %eax
	movslq	-2040(%rbp), %rcx
	movl	%eax, -2032(%rbp,%rcx,4)
	movl	-2076(%rbp), %eax
	movslq	-2052(%rbp), %rcx
	movl	%eax, -2032(%rbp,%rcx,4)
	movl	$0, -2044(%rbp)
	jmp	LBB2_18
	.p2align	4, 0x90
LBB2_19:                                ## %for.inc61
                                        ##   in Loop: Header=BB2_18 Depth=2
	movl	-2072(%rbp), %eax
	addl	-2044(%rbp), %eax
	movl	%eax, -2096(%rbp)
	movl	-2092(%rbp), %eax
	addl	-2044(%rbp), %eax
	movl	%eax, -2108(%rbp)
	movslq	-2040(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	(%rbx,%rax,8), %rax
	movslq	-2044(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, -2064(%rbp)
	movslq	-2052(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	(%rbx,%rax,8), %rax
	movslq	-2044(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	movslq	-2040(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	(%rbx,%rax,8), %rax
	movsd	%xmm0, (%rax,%rcx,8)
	movsd	-2064(%rbp), %xmm0      ## xmm0 = mem[0],zero
	movslq	-2052(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	(%rbx,%rax,8), %rax
	movslq	-2044(%rbp), %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	incl	-2044(%rbp)
LBB2_18:                                ## %for.cond41
                                        ##   Parent Loop BB2_8 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-2044(%rbp), %eax
	cmpl	-2048(%rbp), %eax
	jl	LBB2_19
LBB2_20:                                ## %if.end64
                                        ##   in Loop: Header=BB2_8 Depth=1
	movl	$0, -2036(%rbp)
	jmp	LBB2_21
	.p2align	4, 0x90
LBB2_22:                                ## %for.inc72
                                        ##   in Loop: Header=BB2_21 Depth=2
	movslq	-2040(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	(%rbx,%rax,8), %rax
	movslq	-2036(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	divsd	-2104(%rbp), %xmm0
	movsd	%xmm0, (%rax,%rcx,8)
	incl	-2036(%rbp)
LBB2_21:                                ## %for.cond65
                                        ##   Parent Loop BB2_8 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-2036(%rbp), %eax
	cmpl	-2048(%rbp), %eax
	jl	LBB2_22
## BB#23:                               ## %for.end74
                                        ##   in Loop: Header=BB2_8 Depth=1
	movl	$0, -2036(%rbp)
	jmp	LBB2_24
	.p2align	4, 0x90
LBB2_33:                                ## %for.inc115
                                        ##   in Loop: Header=BB2_24 Depth=2
	incl	-2036(%rbp)
LBB2_24:                                ## %for.cond75
                                        ##   Parent Loop BB2_8 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB2_28 Depth 3
	movl	-2036(%rbp), %eax
	cmpl	-2048(%rbp), %eax
	jge	LBB2_34
## BB#25:                               ## %for.body77
                                        ##   in Loop: Header=BB2_24 Depth=2
	movl	-2036(%rbp), %eax
	cmpl	-2040(%rbp), %eax
	je	LBB2_33
## BB#26:                               ## %if.then79
                                        ##   in Loop: Header=BB2_24 Depth=2
	movl	-2036(%rbp), %eax
	imull	-2068(%rbp), %eax
	movl	%eax, -2092(%rbp)
	addl	-2040(%rbp), %eax
	movl	%eax, -2096(%rbp)
	movslq	-2036(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	(%rbx,%rax,8), %rax
	movslq	-2040(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, -2064(%rbp)
	ucomisd	LCPI2_2(%rip), %xmm0
	jne	LBB2_27
	jnp	LBB2_33
LBB2_27:                                ## %if.then87
                                        ##   in Loop: Header=BB2_24 Depth=2
	movl	$0, -2044(%rbp)
	jmp	LBB2_28
	.p2align	4, 0x90
LBB2_31:                                ## %for.inc104
                                        ##   in Loop: Header=BB2_28 Depth=3
	incl	-2044(%rbp)
LBB2_28:                                ## %for.cond88
                                        ##   Parent Loop BB2_8 Depth=1
                                        ##     Parent Loop BB2_24 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	-2044(%rbp), %eax
	cmpl	-2048(%rbp), %eax
	jge	LBB2_32
## BB#29:                               ## %for.body90
                                        ##   in Loop: Header=BB2_28 Depth=3
	movl	-2044(%rbp), %eax
	cmpl	-2040(%rbp), %eax
	je	LBB2_31
## BB#30:                               ## %if.then92
                                        ##   in Loop: Header=BB2_28 Depth=3
	movsd	-2064(%rbp), %xmm0      ## xmm0 = mem[0],zero
	movslq	-2040(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	(%rbx,%rax,8), %rax
	movslq	-2044(%rbp), %rcx
	mulsd	(%rax,%rcx,8), %xmm0
	movslq	-2036(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	(%rbx,%rax,8), %rax
	movsd	(%rax,%rcx,8), %xmm1    ## xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%rax,%rcx,8)
	jmp	LBB2_31
	.p2align	4, 0x90
LBB2_32:                                ## %for.end106
                                        ##   in Loop: Header=BB2_24 Depth=2
	movsd	-2064(%rbp), %xmm0      ## xmm0 = mem[0],zero
	xorpd	LCPI2_0(%rip), %xmm0
	divsd	-2104(%rbp), %xmm0
	movslq	-2036(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	(%rbx,%rax,8), %rax
	movslq	-2040(%rbp), %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	jmp	LBB2_33
LBB2_35:                                ## %for.end125
	movl	$0, -2036(%rbp)
	jmp	LBB2_36
	.p2align	4, 0x90
LBB2_41:                                ## %for.inc167
                                        ##   in Loop: Header=BB2_36 Depth=1
	incl	-2036(%rbp)
LBB2_36:                                ## %for.cond126
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_37 Depth 2
                                        ##       Child Loop BB2_39 Depth 3
	movl	-2036(%rbp), %eax
	cmpl	-2048(%rbp), %eax
	jl	LBB2_37
	jmp	LBB2_42
	.p2align	4, 0x90
LBB2_38:                                ## %if.end133
                                        ##   in Loop: Header=BB2_37 Depth=2
	movslq	-2040(%rbp), %rax
	movl	-2032(%rbp,%rax,4), %eax
	movl	%eax, -2076(%rbp)
	movslq	-2036(%rbp), %rax
	movl	-2032(%rbp,%rax,4), %eax
	movslq	-2040(%rbp), %rcx
	movl	%eax, -2032(%rbp,%rcx,4)
	movl	-2076(%rbp), %eax
	movslq	-2036(%rbp), %rcx
	movl	%eax, -2032(%rbp,%rcx,4)
	movl	$0, -2044(%rbp)
	jmp	LBB2_39
	.p2align	4, 0x90
LBB2_40:                                ## %for.inc164
                                        ##   in Loop: Header=BB2_39 Depth=3
	movl	-2044(%rbp), %eax
	imull	-2068(%rbp), %eax
	movl	%eax, -2072(%rbp)
	addl	-2036(%rbp), %eax
	movl	%eax, -2096(%rbp)
	movl	-2072(%rbp), %eax
	addl	-2040(%rbp), %eax
	movl	%eax, -2108(%rbp)
	movslq	-2040(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	(%rbx,%rax,8), %rax
	movslq	-2036(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, -2064(%rbp)
	movslq	-2040(%rbp), %rax
	leaq	(%rax,%rax,2), %rcx
	leaq	(%rbx,%rcx,8), %rcx
	movsd	(%rcx,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	movslq	-2036(%rbp), %rax
	movsd	%xmm0, (%rcx,%rax,8)
	movsd	-2064(%rbp), %xmm0      ## xmm0 = mem[0],zero
	movslq	-2040(%rbp), %rax
	leaq	(%rax,%rax,2), %rcx
	leaq	(%rbx,%rcx,8), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	incl	-2044(%rbp)
LBB2_39:                                ## %for.cond142
                                        ##   Parent Loop BB2_36 Depth=1
                                        ##     Parent Loop BB2_37 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	-2044(%rbp), %eax
	cmpl	-2048(%rbp), %eax
	jl	LBB2_40
LBB2_37:                                ## %while.body
                                        ##   Parent Loop BB2_36 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB2_39 Depth 3
	movslq	-2036(%rbp), %rax
	movl	-2032(%rbp,%rax,4), %eax
	movl	%eax, -2040(%rbp)
	cmpl	-2036(%rbp), %eax
	jne	LBB2_38
	jmp	LBB2_41
LBB2_42:                                ## %for.end169
	movsd	-2088(%rbp), %xmm0      ## xmm0 = mem[0],zero
	movq	_det@GOTPCREL(%rip), %rax
	movsd	%xmm0, (%rax)
	movl	$0, -2080(%rbp)
	jmp	LBB2_43
LBB2_15:                                ## %if.then27
	movsd	-2088(%rbp), %xmm0      ## xmm0 = mem[0],zero
	movq	_det@GOTPCREL(%rip), %rax
	movsd	%xmm0, (%rax)
	movl	$1, -2080(%rbp)
	jmp	LBB2_43
LBB2_45:                                ## %return
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_mmul
	.p2align	4, 0x90
_mmul:                                  ## @mmul
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
Lcfi15:
	.cfi_offset %rbx, -48
Lcfi16:
	.cfi_offset %r12, -40
Lcfi17:
	.cfi_offset %r14, -32
Lcfi18:
	.cfi_offset %r15, -24
	movl	%ecx, %r14d
	movl	%edx, %r15d
	movl	%esi, %r12d
	movl	%edi, %ebx
	incl	_FunctionCounter.3(%rip)
	leaq	L___unnamed_16(%rip), %rdi
	leaq	L___unnamed_17(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movl	%ebx, -84(%rbp)
	movl	%r12d, -80(%rbp)
	movl	%r15d, -48(%rbp)
	movl	%r14d, -76(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -56(%rbp)
	jle	LBB3_4
## BB#1:                                ## %lor.lhs.false
	cmpl	$0, -48(%rbp)
	jle	LBB3_4
## BB#2:                                ## %lor.lhs.false2
	cmpl	$0, -52(%rbp)
	jle	LBB3_4
## BB#3:                                ## %lor.lhs.false4
	movl	-80(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	LBB3_5
LBB3_4:                                 ## %if.then
	movl	$999, -60(%rbp)         ## imm = 0x3E7
LBB3_15:                                ## %return
	movl	-60(%rbp), %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB3_5:                                 ## %if.end
	movl	$0, -40(%rbp)
	leaq	_a(%rip), %rax
	movq	_b@GOTPCREL(%rip), %rcx
	movq	_c@GOTPCREL(%rip), %rdx
	jmp	LBB3_6
	.p2align	4, 0x90
LBB3_13:                                ## %for.inc26
                                        ##   in Loop: Header=BB3_6 Depth=1
	incl	-40(%rbp)
LBB3_6:                                 ## %for.cond
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_8 Depth 2
                                        ##       Child Loop BB3_10 Depth 3
	movl	-40(%rbp), %esi
	cmpl	-56(%rbp), %esi
	jge	LBB3_14
## BB#7:                                ## %for.body
                                        ##   in Loop: Header=BB3_6 Depth=1
	movl	$0, -36(%rbp)
	jmp	LBB3_8
	.p2align	4, 0x90
LBB3_12:                                ## %for.inc23
                                        ##   in Loop: Header=BB3_8 Depth=2
	movsd	-72(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movslq	-40(%rbp), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	shlq	$3, %rsi
	addq	%rdx, %rsi
	movslq	-36(%rbp), %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	incl	-36(%rbp)
LBB3_8:                                 ## %for.cond7
                                        ##   Parent Loop BB3_6 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB3_10 Depth 3
	movl	-36(%rbp), %esi
	cmpl	-52(%rbp), %esi
	jge	LBB3_13
## BB#9:                                ## %for.body9
                                        ##   in Loop: Header=BB3_8 Depth=2
	movq	$0, -72(%rbp)
	movl	$0, -44(%rbp)
	jmp	LBB3_10
	.p2align	4, 0x90
LBB3_11:                                ## %for.inc
                                        ##   in Loop: Header=BB3_10 Depth=3
	movslq	-40(%rbp), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	leaq	(%rax,%rsi,8), %rsi
	movslq	-44(%rbp), %rdi
	movsd	(%rsi,%rdi,8), %xmm0    ## xmm0 = mem[0],zero
	leaq	(%rdi,%rdi,2), %rsi
	shlq	$3, %rsi
	addq	%rcx, %rsi
	movslq	-36(%rbp), %rdi
	mulsd	(%rsi,%rdi,8), %xmm0
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	incl	-44(%rbp)
LBB3_10:                                ## %for.cond10
                                        ##   Parent Loop BB3_6 Depth=1
                                        ##     Parent Loop BB3_8 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	-44(%rbp), %esi
	cmpl	-48(%rbp), %esi
	jl	LBB3_11
	jmp	LBB3_12
LBB3_14:                                ## %for.end28
	movl	$0, -60(%rbp)
	jmp	LBB3_15
	.cfi_endproc

	.section	__DATA,__data
	.p2align	4               ## @a
_a:
	.quad	4613937818241073152     ## double 3
	.quad	-4604930618986332160    ## double -6
	.quad	4619567317775286272     ## double 7
	.quad	4621256167635550208     ## double 9
	.quad	0                       ## double 0
	.quad	-4606056518893174784    ## double -5
	.quad	4617315517961601024     ## double 5
	.quad	-4602678819172646912    ## double -8
	.quad	4618441417868443648     ## double 6

	.comm	_aa,72,4                ## @aa
	.comm	_a_i,72,4               ## @a_i
	.comm	_b,72,4                 ## @b
	.comm	_c,72,4                 ## @c
	.comm	_det,8,3                ## @det
	.comm	_e,72,4                 ## @e
.zerofill __DATA,__bss,_FunctionCounter,4,2 ## @FunctionCounter
.zerofill __DATA,__bss,_FunctionCounter.1,4,2 ## @FunctionCounter.1
.zerofill __DATA,__bss,_FunctionCounter.2,4,2 ## @FunctionCounter.2
.zerofill __DATA,__bss,_FunctionCounter.3,4,2 ## @FunctionCounter.3
	.section	__TEXT,__cstring,cstring_literals
L___unnamed_1:                          ## @0
	.asciz	"%s\n"

L___unnamed_2:                          ## @1
	.asciz	"minver_fabs"

L___unnamed_5:                          ## @2
	.asciz	"%s\n"

L___unnamed_6:                          ## @3
	.asciz	"main"

L___unnamed_7:                          ## @4
	.asciz	"\n%s\n"

	.p2align	4               ## @5
L___unnamed_8:
	.asciz	"****** Function frequencies ******"

L___unnamed_9:                          ## @6
	.asciz	"%s: %d\n"

L___unnamed_10:                         ## @7
	.asciz	"main"

L___unnamed_11:                         ## @8
	.asciz	"minver_fabs"

L___unnamed_12:                         ## @9
	.asciz	"mmul"

L___unnamed_13:                         ## @10
	.asciz	"minver"

L___unnamed_3:                          ## @11
	.asciz	"%s\n"

	.p2align	4               ## @12
L___unnamed_4:
	.asciz	"****** Call sequence ******"

L___unnamed_14:                         ## @13
	.asciz	"%s\n"

L___unnamed_15:                         ## @14
	.asciz	"minver"

L___unnamed_16:                         ## @15
	.asciz	"%s\n"

L___unnamed_17:                         ## @16
	.asciz	"mmul"


.subsections_via_symbols
