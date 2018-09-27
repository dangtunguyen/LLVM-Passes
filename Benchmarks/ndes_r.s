	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_des
	.p2align	4, 0x90
_des:                                   ## @des
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
Lcfi3:
	.cfi_offset %rbx, -56
Lcfi4:
	.cfi_offset %r12, -48
Lcfi5:
	.cfi_offset %r13, -40
Lcfi6:
	.cfi_offset %r14, -32
Lcfi7:
	.cfi_offset %r15, -24
	movl	%r9d, -92(%rbp)         ## 4-byte Spill
	movq	%r8, %r15
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %r14
	incl	_FunctionCounter(%rip)
	leaq	L___unnamed_1(%rip), %rdi
	leaq	L___unnamed_2(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movq	%r14, -152(%rbp)
	movq	%rbx, -144(%rbp)
	movq	%r13, -136(%rbp)
	movq	%r12, -128(%rbp)
	movq	%r15, -120(%rbp)
	movl	-92(%rbp), %eax         ## 4-byte Reload
	movl	%eax, -100(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -80(%rbp)
	cmpl	$0, _des.initflag(%rip)
	je	LBB0_4
## BB#1:                                ## %if.then
	movl	$0, _des.initflag(%rip)
	movq	$1, -112(%rbp)
	movq	_bit@GOTPCREL(%rip), %rax
	movq	$1, 8(%rax)
	movl	$2, -44(%rbp)
	cmpl	$32, -44(%rbp)
	jg	LBB0_4
	.p2align	4, 0x90
LBB0_3:                                 ## %for.inc
                                        ## =>This Inner Loop Header: Depth=1
	movq	-112(%rbp), %rcx
	addq	%rcx, %rcx
	movq	%rcx, -112(%rbp)
	movslq	-44(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
	incl	-44(%rbp)
	cmpl	$32, -44(%rbp)
	jle	LBB0_3
LBB0_4:                                 ## %if.end
	movq	-120(%rbp), %rax
	cmpl	$0, (%rax)
	je	LBB0_11
## BB#5:                                ## %if.then2
	movq	-120(%rbp), %rax
	movl	$0, (%rax)
	movq	$0, _icd(%rip)
	movq	$0, _icd+8(%rip)
	movl	$28, -44(%rbp)
	movl	$56, -52(%rbp)
	leaq	_ipc1(%rip), %r14
	cmpl	$0, -44(%rbp)
	jle	LBB0_8
	.p2align	4, 0x90
LBB0_7:                                 ## %for.inc15
                                        ## =>This Inner Loop Header: Depth=1
	movq	_icd+8(%rip), %rbx
	addq	%rbx, %rbx
	movq	%rbx, _icd+8(%rip)
	movslq	-44(%rbp), %rax
	movsbl	(%rax,%r14), %edx
	movq	-136(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movl	$32, %ecx
	callq	_getbit
	orq	%rbx, %rax
	movq	%rax, _icd+8(%rip)
	movq	_icd(%rip), %rbx
	addq	%rbx, %rbx
	movq	%rbx, _icd(%rip)
	movslq	-52(%rbp), %rax
	movsbl	(%rax,%r14), %edx
	movq	-136(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movl	$32, %ecx
	callq	_getbit
	orq	%rbx, %rax
	movq	%rax, _icd(%rip)
	decl	-44(%rbp)
	decl	-52(%rbp)
	cmpl	$0, -44(%rbp)
	jg	LBB0_7
LBB0_8:                                 ## %for.end17
	movl	$1, -48(%rbp)
	leaq	_des.kns(%rip), %rbx
	leaq	-176(%rbp), %r14
	cmpl	$16, -48(%rbp)
	jg	LBB0_11
	.p2align	4, 0x90
LBB0_10:                                ## %for.inc26
                                        ## =>This Inner Loop Header: Depth=1
	movslq	-48(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	movq	16(%rbx,%rax,8), %rcx
	movq	%rcx, -160(%rbp)
	movq	8(%rbx,%rax,8), %rcx
	movq	%rcx, -168(%rbp)
	movq	(%rbx,%rax,8), %rax
	movq	%rax, -176(%rbp)
	movl	-48(%rbp), %edi
	movq	%r14, %rsi
	callq	_ks
	movslq	-48(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	movq	-160(%rbp), %rcx
	movq	%rcx, 16(%rbx,%rax,8)
	movq	-176(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	%rdx, 8(%rbx,%rax,8)
	movq	%rcx, (%rbx,%rax,8)
	incl	-48(%rbp)
	cmpl	$16, -48(%rbp)
	jle	LBB0_10
LBB0_11:                                ## %if.end29
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movl	$32, -44(%rbp)
	movl	$64, -52(%rbp)
	leaq	_des.ip(%rip), %r14
	cmpl	$0, -44(%rbp)
	jle	LBB0_14
	.p2align	4, 0x90
LBB0_13:                                ## %for.inc50
                                        ## =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rbx
	addq	%rbx, %rbx
	movq	%rbx, -64(%rbp)
	movslq	-44(%rbp), %rax
	movsbl	(%rax,%r14), %edx
	movq	-152(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movl	$32, %ecx
	callq	_getbit
	orq	%rbx, %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rbx
	addq	%rbx, %rbx
	movq	%rbx, -72(%rbp)
	movslq	-52(%rbp), %rax
	movsbl	(%rax,%r14), %edx
	movq	-152(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movl	$32, %ecx
	callq	_getbit
	orq	%rbx, %rax
	movq	%rax, -72(%rbp)
	decl	-44(%rbp)
	decl	-52(%rbp)
	cmpl	$0, -44(%rbp)
	jg	LBB0_13
LBB0_14:                                ## %for.end53
	movl	$1, -48(%rbp)
	leaq	_des.kns(%rip), %rbx
	leaq	-88(%rbp), %r14
	cmpl	$16, -48(%rbp)
	jle	LBB0_16
	jmp	LBB0_20
	.p2align	4, 0x90
LBB0_19:                                ## %for.inc67
                                        ##   in Loop: Header=BB0_16 Depth=1
	movl	%eax, -96(%rbp)
	movq	-72(%rbp), %rdi
	movslq	-96(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	movq	16(%rbx,%rax,8), %rcx
	movq	%rcx, 16(%rsp)
	movq	8(%rbx,%rax,8), %rcx
	movq	%rcx, 8(%rsp)
	movq	(%rbx,%rax,8), %rax
	movq	%rax, (%rsp)
	movq	%r14, %rsi
	callq	_cyfun
	movq	-64(%rbp), %rax
	xorq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -72(%rbp)
	incl	-48(%rbp)
	cmpl	$16, -48(%rbp)
	jg	LBB0_20
LBB0_16:                                ## %for.body57
                                        ## =>This Inner Loop Header: Depth=1
	cmpl	$1, -100(%rbp)
	jne	LBB0_18
## BB#17:                               ## %cond.true
                                        ##   in Loop: Header=BB0_16 Depth=1
	movl	$17, %eax
	subl	-48(%rbp), %eax
	jmp	LBB0_19
	.p2align	4, 0x90
LBB0_18:                                ## %cond.false
                                        ##   in Loop: Header=BB0_16 Depth=1
	movl	-48(%rbp), %eax
	jmp	LBB0_19
LBB0_20:                                ## %for.end69
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
	movq	-80(%rbp), %rax
	movq	$0, 8(%rax)
	movl	$32, -44(%rbp)
	movl	$64, -52(%rbp)
	leaq	_des.ipm(%rip), %r14
	cmpl	$0, -44(%rbp)
	jle	LBB0_23
	.p2align	4, 0x90
LBB0_22:                                ## %for.inc96
                                        ## =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rbx
	addq	%rbx, %rbx
	movq	%rbx, 8(%rax)
	movslq	-44(%rbp), %rax
	movsbl	(%rax,%r14), %edx
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	$32, %ecx
	callq	_getbit
	orq	%rbx, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rbx
	addq	%rbx, %rbx
	movq	%rbx, (%rax)
	movslq	-52(%rbp), %rax
	movsbl	(%rax,%r14), %edx
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	$32, %ecx
	callq	_getbit
	orq	%rbx, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	decl	-44(%rbp)
	decl	-52(%rbp)
	cmpl	$0, -44(%rbp)
	jg	LBB0_22
LBB0_23:                                ## %for.end99
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_getbit
	.p2align	4, 0x90
_getbit:                                ## @getbit
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
Lcfi11:
	.cfi_offset %rbx, -48
Lcfi12:
	.cfi_offset %r12, -40
Lcfi13:
	.cfi_offset %r14, -32
Lcfi14:
	.cfi_offset %r15, -24
	movl	%ecx, %ebx
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %r12
	incl	_FunctionCounter.1(%rip)
	leaq	L___unnamed_3(%rip), %rdi
	leaq	L___unnamed_4(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movq	%r12, -64(%rbp)
	movq	%r15, -56(%rbp)
	movl	%r14d, -36(%rbp)
	movl	%ebx, -40(%rbp)
	cmpl	%ebx, -36(%rbp)
	jg	LBB1_2
## BB#1:                                ## %if.then
	movslq	-36(%rbp), %rax
	movq	_bit@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	xorl	%ecx, %ecx
	testq	-56(%rbp), %rax
	jmp	LBB1_3
LBB1_2:                                 ## %if.else
	movslq	-36(%rbp), %rax
	movslq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movq	_bit@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	xorl	%ecx, %ecx
	testq	-64(%rbp), %rax
LBB1_3:                                 ## %return
	setne	%cl
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_ks
	.p2align	4, 0x90
_ks:                                    ## @ks
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi15:
	.cfi_def_cfa_offset 16
Lcfi16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi17:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
Lcfi18:
	.cfi_offset %rbx, -32
Lcfi19:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movl	%edi, %ebx
	incl	_FunctionCounter.3(%rip)
	leaq	L___unnamed_5(%rip), %rdi
	leaq	L___unnamed_6(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movl	%ebx, -28(%rbp)
	movq	%r14, -24(%rbp)
	cmpl	$1, -28(%rbp)
	je	LBB2_4
## BB#1:                                ## %lor.lhs.false
	cmpl	$2, -28(%rbp)
	je	LBB2_4
## BB#2:                                ## %lor.lhs.false2
	cmpl	$9, -28(%rbp)
	je	LBB2_4
## BB#3:                                ## %lor.lhs.false4
	cmpl	$16, -28(%rbp)
	jne	LBB2_8
LBB2_4:                                 ## %if.then
	movq	_icd+8(%rip), %rax
	movl	%eax, %ecx
	andl	$1, %ecx
	shlq	$28, %rcx
	orq	%rax, %rcx
	shrq	%rcx
	movq	%rcx, _icd+8(%rip)
	movq	_icd(%rip), %rax
	movl	%eax, %ecx
	andl	$1, %ecx
	shlq	$28, %rcx
	orq	%rax, %rcx
	shrq	%rcx
	movq	%rcx, _icd(%rip)
LBB2_5:                                 ## %if.end
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movl	$16, -32(%rbp)
	movl	$32, -40(%rbp)
	movl	$48, -36(%rbp)
	leaq	_ipc2(%rip), %r14
	cmpl	$0, -32(%rbp)
	jle	LBB2_11
	.p2align	4, 0x90
LBB2_7:                                 ## %for.inc49
                                        ## =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rbx
	addq	%rbx, %rbx
	movq	%rbx, 16(%rax)
	movslq	-32(%rbp), %rax
	movsbl	(%rax,%r14), %edx
	movq	_icd(%rip), %rdi
	movq	_icd+8(%rip), %rsi
	movl	$28, %ecx
	callq	_getbit
	movzwl	%ax, %eax
	orq	%rbx, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	addq	%rbx, %rbx
	movq	%rbx, 8(%rax)
	movslq	-40(%rbp), %rax
	movsbl	(%rax,%r14), %edx
	movq	_icd(%rip), %rdi
	movq	_icd+8(%rip), %rsi
	movl	$28, %ecx
	callq	_getbit
	movzwl	%ax, %eax
	orq	%rbx, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rbx
	addq	%rbx, %rbx
	movq	%rbx, (%rax)
	movslq	-36(%rbp), %rax
	movsbl	(%rax,%r14), %edx
	movq	_icd(%rip), %rdi
	movq	_icd+8(%rip), %rsi
	movl	$28, %ecx
	callq	_getbit
	movzwl	%ax, %eax
	orq	%rbx, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	decl	-32(%rbp)
	decl	-40(%rbp)
	decl	-36(%rbp)
	cmpl	$0, -32(%rbp)
	jg	LBB2_7
LBB2_11:                                ## %for.end52
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB2_8:                                 ## %if.else
	movl	$1, -44(%rbp)
	cmpl	$2, -44(%rbp)
	jg	LBB2_5
	.p2align	4, 0x90
LBB2_10:                                ## %for.inc
                                        ## =>This Inner Loop Header: Depth=1
	movq	_icd+8(%rip), %rax
	movl	%eax, %ecx
	andl	$1, %ecx
	shlq	$28, %rcx
	orq	%rax, %rcx
	shrq	%rcx
	movq	%rcx, _icd+8(%rip)
	movq	_icd(%rip), %rax
	movl	%eax, %ecx
	andl	$1, %ecx
	shlq	$28, %rcx
	orq	%rax, %rcx
	shrq	%rcx
	movq	%rcx, _icd(%rip)
	incl	-44(%rbp)
	cmpl	$2, -44(%rbp)
	jle	LBB2_10
	jmp	LBB2_5
	.cfi_endproc

	.globl	_cyfun
	.p2align	4, 0x90
_cyfun:                                 ## @cyfun
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi20:
	.cfi_def_cfa_offset 16
Lcfi21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi22:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$136, %rsp
Lcfi23:
	.cfi_offset %rbx, -40
Lcfi24:
	.cfi_offset %r14, -32
Lcfi25:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	16(%rbp), %r15
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	incl	_FunctionCounter.4(%rip)
	leaq	L___unnamed_7(%rip), %rdi
	leaq	L___unnamed_8(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movq	%rbx, -120(%rbp)
	movq	%r14, -112(%rbp)
	movq	_bit@GOTPCREL(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movl	$16, -48(%rbp)
	movl	$32, -92(%rbp)
	movl	$48, -52(%rbp)
	leaq	_cyfun.iet(%rip), %rcx
	cmpl	$0, -48(%rbp)
	jle	LBB3_3
	.p2align	4, 0x90
LBB3_2:                                 ## %for.inc
                                        ## =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rdx
	leaq	(%rdx,%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movq	-88(%rbp), %rsi
	movslq	-48(%rbp), %rdi
	movslq	(%rcx,%rdi,4), %rdi
	movq	(%rsi,%rdi,8), %rsi
	xorl	%edi, %edi
	testq	-120(%rbp), %rsi
	setne	%dil
	leaq	(%rdi,%rdx,2), %rdx
	movq	%rdx, -64(%rbp)
	movq	-72(%rbp), %rdx
	leaq	(%rdx,%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movq	-88(%rbp), %rsi
	movslq	-92(%rbp), %rdi
	movslq	(%rcx,%rdi,4), %rdi
	movq	(%rsi,%rdi,8), %rsi
	xorl	%edi, %edi
	testq	-120(%rbp), %rsi
	setne	%dil
	leaq	(%rdi,%rdx,2), %rdx
	movq	%rdx, -72(%rbp)
	movq	-80(%rbp), %rdx
	leaq	(%rdx,%rdx), %rsi
	movq	%rsi, -80(%rbp)
	movq	-88(%rbp), %rsi
	movslq	-52(%rbp), %rdi
	movslq	(%rcx,%rdi,4), %rdi
	movq	(%rsi,%rdi,8), %rsi
	xorl	%edi, %edi
	testq	-120(%rbp), %rsi
	setne	%dil
	leaq	(%rdi,%rdx,2), %rdx
	movq	%rdx, -80(%rbp)
	decl	-48(%rbp)
	decl	-92(%rbp)
	decl	-52(%rbp)
	cmpl	$0, -48(%rbp)
	jg	LBB3_2
LBB3_3:                                 ## %for.end
	movq	16(%r15), %rcx
	xorq	%rcx, -64(%rbp)
	movq	8(%r15), %rcx
	xorq	%rcx, -72(%rbp)
	movq	(%r15), %rcx
	xorq	%rcx, -80(%rbp)
	movq	-72(%rbp), %rcx
	shlq	$16, %rcx
	addq	-64(%rbp), %rcx
	movq	%rcx, -152(%rbp)
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	shlq	$8, %rcx
	shrq	$8, %rdx
	addq	%rcx, %rdx
	movq	%rdx, -144(%rbp)
	movl	$1, -48(%rbp)
	movl	$5, -52(%rbp)
	cmpl	$4, -48(%rbp)
	jg	LBB3_6
	.p2align	4, 0x90
LBB3_5:                                 ## %for.inc61
                                        ## =>This Inner Loop Header: Depth=1
	movl	-152(%rbp), %ecx
	andl	$63, %ecx
	movslq	-48(%rbp), %rdx
	movb	%cl, -41(%rbp,%rdx)
	movl	-144(%rbp), %ecx
	andl	$63, %ecx
	movslq	-52(%rbp), %rdx
	movb	%cl, -41(%rbp,%rdx)
	shrq	$6, -152(%rbp)
	shrq	$6, -144(%rbp)
	incl	-48(%rbp)
	incl	-52(%rbp)
	cmpl	$4, -48(%rbp)
	jle	LBB3_5
LBB3_6:                                 ## %for.end63
	movq	$0, -104(%rbp)
	movl	$8, -56(%rbp)
	leaq	_cyfun.is(%rip), %rcx
	leaq	_cyfun.ibin(%rip), %rdx
	cmpl	$0, -56(%rbp)
	jle	LBB3_9
	.p2align	4, 0x90
LBB3_8:                                 ## %for.inc98
                                        ## =>This Inner Loop Header: Depth=1
	movslq	-56(%rbp), %rsi
	movsbl	-41(%rbp,%rsi), %esi
	movl	%esi, -48(%rbp)
	movl	%esi, %edi
	andl	$1, %edi
	andl	$32, %esi
	shrl	$5, %esi
	leal	(%rsi,%rdi,2), %esi
	movl	%esi, -132(%rbp)
	movl	-48(%rbp), %esi
	movl	%esi, %edi
	andl	$2, %edi
	movl	%esi, %ebx
	andl	$4, %ebx
	leal	(%rbx,%rdi,4), %edi
	movl	%esi, %ebx
	andl	$8, %ebx
	shrl	$2, %ebx
	orl	%edi, %ebx
	andl	$16, %esi
	shrl	$4, %esi
	orl	%ebx, %esi
	movl	%esi, -128(%rbp)
	movslq	-128(%rbp), %rsi
	leaq	(%rsi,%rsi,8), %rsi
	leaq	(%rcx,%rsi,4), %rsi
	movslq	-132(%rbp), %rdi
	leaq	(%rdi,%rdi,8), %rdi
	addq	%rsi, %rdi
	movslq	-56(%rbp), %rsi
	movsbl	(%rsi,%rdi), %esi
	movl	%esi, -124(%rbp)
	movq	-104(%rbp), %rsi
	shlq	$4, %rsi
	movq	%rsi, -104(%rbp)
	movslq	-124(%rbp), %rdi
	movsbq	(%rdi,%rdx), %rdi
	orq	%rsi, %rdi
	movq	%rdi, -104(%rbp)
	decl	-56(%rbp)
	cmpl	$0, -56(%rbp)
	jg	LBB3_8
LBB3_9:                                 ## %for.end100
	movq	-112(%rbp), %rcx
	movq	$0, (%rcx)
	movq	%rax, -88(%rbp)
	movl	$32, -48(%rbp)
	leaq	_cyfun.ipp(%rip), %rax
	cmpl	$0, -48(%rbp)
	jle	LBB3_12
	.p2align	4, 0x90
LBB3_11:                                ## %for.inc115
                                        ## =>This Inner Loop Header: Depth=1
	movq	-112(%rbp), %rcx
	movq	(%rcx), %rdx
	leaq	(%rdx,%rdx), %rsi
	movq	%rsi, (%rcx)
	movq	-88(%rbp), %rcx
	movslq	-48(%rbp), %rsi
	movslq	(%rax,%rsi,4), %rsi
	movq	(%rcx,%rsi,8), %rcx
	xorl	%esi, %esi
	testq	-104(%rbp), %rcx
	setne	%sil
	leaq	(%rsi,%rdx,2), %rcx
	movq	-112(%rbp), %rdx
	movq	%rcx, (%rdx)
	decl	-48(%rbp)
	cmpl	$0, -48(%rbp)
	jg	LBB3_11
LBB3_12:                                ## %for.end117
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	LBB3_14
## BB#13:                               ## %for.end117
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB3_14:                                ## %for.end117
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi26:
	.cfi_def_cfa_offset 16
Lcfi27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi28:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
Lcfi29:
	.cfi_offset %rbx, -24
	leaq	L___unnamed_9(%rip), %rdi
	leaq	L___unnamed_10(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	incl	_FunctionCounter.5(%rip)
	leaq	L___unnamed_11(%rip), %rdi
	leaq	L___unnamed_12(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movl	$0, -56(%rbp)
	movq	$35, -48(%rbp)
	movq	$26, -40(%rbp)
	movq	$2, -32(%rbp)
	movq	$16, -24(%rbp)
	movl	_value(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	_value(%rip), %r9d
	movl	%r9d, -52(%rbp)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	leaq	-72(%rbp), %rax
	movq	%rax, (%rsp)
	leaq	-12(%rbp), %r8
	callq	_des
	leaq	L___unnamed_13(%rip), %rdi
	leaq	L___unnamed_14(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movl	_FunctionCounter.2(%rip), %edx
	leaq	L___unnamed_15(%rip), %rbx
	leaq	L___unnamed_16(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter(%rip), %edx
	leaq	L___unnamed_17(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter.1(%rip), %edx
	leaq	L___unnamed_18(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter.5(%rip), %edx
	leaq	L___unnamed_19(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter.3(%rip), %edx
	leaq	L___unnamed_20(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter.4(%rip), %edx
	leaq	L___unnamed_21(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	xorl	%eax, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.section	__DATA,__data
	.p2align	4               ## @des.ip
_des.ip:
	.ascii	"\000:2*\"\032\022\n\002<4,$\034\024\f\004>6.&\036\026\016\006@80( \030\020\b91)!\031\021\t\001;3+#\033\023\013\003=5-%\035\025\r\005?7/'\037\027\017\007"

	.p2align	4               ## @des.ipm
_des.ipm:
	.ascii	"\000(\b0\0208\030@ '\007/\0177\027?\037&\006.\0166\026>\036%\005-\r5\025=\035$\004,\f4\024<\034#\003+\0133\023;\033\"\002*\n2\022:\032!\001)\t1\0219\031"

.zerofill __DATA,__bss,_des.kns,408,4   ## @des.kns
	.p2align	2               ## @des.initflag
_des.initflag:
	.long	1                       ## 0x1

	.comm	_bit,264,4              ## @bit
.zerofill __DATA,__bss,_icd,16,3        ## @icd
	.p2align	4               ## @ipc1
_ipc1:
	.ascii	"\00091)!\031\021\t\001:2*\"\032\022\n\002;3+#\033\023\013\003<4,$?7/'\037\027\017\007>6.&\036\026\016\006=5-%\035\025\r\005\034\024\f\004"

	.p2align	4               ## @ipc2
_ipc2:
	.ascii	"\000\016\021\013\030\001\005\003\034\017\006\025\n\027\023\f\004\032\b\020\007\033\024\r\002)4\037%/7\036(3-!0,1'8\"5.*2$\035 "

	.p2align	4               ## @cyfun.iet
_cyfun.iet:
	.long	0                       ## 0x0
	.long	32                      ## 0x20
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	3                       ## 0x3
	.long	4                       ## 0x4
	.long	5                       ## 0x5
	.long	4                       ## 0x4
	.long	5                       ## 0x5
	.long	6                       ## 0x6
	.long	7                       ## 0x7
	.long	8                       ## 0x8
	.long	9                       ## 0x9
	.long	8                       ## 0x8
	.long	9                       ## 0x9
	.long	10                      ## 0xa
	.long	11                      ## 0xb
	.long	12                      ## 0xc
	.long	13                      ## 0xd
	.long	12                      ## 0xc
	.long	13                      ## 0xd
	.long	14                      ## 0xe
	.long	15                      ## 0xf
	.long	16                      ## 0x10
	.long	17                      ## 0x11
	.long	16                      ## 0x10
	.long	17                      ## 0x11
	.long	18                      ## 0x12
	.long	19                      ## 0x13
	.long	20                      ## 0x14
	.long	21                      ## 0x15
	.long	20                      ## 0x14
	.long	21                      ## 0x15
	.long	22                      ## 0x16
	.long	23                      ## 0x17
	.long	24                      ## 0x18
	.long	25                      ## 0x19
	.long	24                      ## 0x18
	.long	25                      ## 0x19
	.long	26                      ## 0x1a
	.long	27                      ## 0x1b
	.long	28                      ## 0x1c
	.long	29                      ## 0x1d
	.long	28                      ## 0x1c
	.long	29                      ## 0x1d
	.long	30                      ## 0x1e
	.long	31                      ## 0x1f
	.long	32                      ## 0x20
	.long	1                       ## 0x1

	.p2align	4               ## @cyfun.ipp
_cyfun.ipp:
	.long	0                       ## 0x0
	.long	16                      ## 0x10
	.long	7                       ## 0x7
	.long	20                      ## 0x14
	.long	21                      ## 0x15
	.long	29                      ## 0x1d
	.long	12                      ## 0xc
	.long	28                      ## 0x1c
	.long	17                      ## 0x11
	.long	1                       ## 0x1
	.long	15                      ## 0xf
	.long	23                      ## 0x17
	.long	26                      ## 0x1a
	.long	5                       ## 0x5
	.long	18                      ## 0x12
	.long	31                      ## 0x1f
	.long	10                      ## 0xa
	.long	2                       ## 0x2
	.long	8                       ## 0x8
	.long	24                      ## 0x18
	.long	14                      ## 0xe
	.long	32                      ## 0x20
	.long	27                      ## 0x1b
	.long	3                       ## 0x3
	.long	9                       ## 0x9
	.long	19                      ## 0x13
	.long	13                      ## 0xd
	.long	30                      ## 0x1e
	.long	6                       ## 0x6
	.long	22                      ## 0x16
	.long	11                      ## 0xb
	.long	4                       ## 0x4
	.long	25                      ## 0x19

	.p2align	4               ## @cyfun.is
_cyfun.is:
	.ascii	"\000\016\017\n\007\002\f\004\r"
	.ascii	"\000\000\003\r\r\016\n\r\001"
	.ascii	"\000\004\000\r\n\004\t\001\007"
	.ascii	"\000\017\r\001\003\013\004\006\002"
	.ascii	"\000\004\001\000\r\f\001\013\002"
	.ascii	"\000\017\r\007\b\013\017\000\017"
	.ascii	"\000\001\016\006\006\002\016\004\013"
	.ascii	"\000\f\b\n\017\b\003\013\001"
	.ascii	"\000\r\b\t\016\004\n\002\b"
	.ascii	"\000\007\004\000\013\002\004\013\r"
	.ascii	"\000\016\007\004\t\001\017\013\004"
	.ascii	"\000\b\n\r\000\f\002\r\016"
	.ascii	"\000\001\016\016\003\001\017\016\004"
	.ascii	"\000\004\007\t\005\f\002\007\b"
	.ascii	"\000\b\013\t\000\013\005\r\001"
	.ascii	"\000\002\001\000\006\007\f\b\007"
	.ascii	"\000\002\006\006\000\007\t\017\006"
	.ascii	"\000\016\017\003\006\004\007\004\n"
	.ascii	"\000\r\n\b\f\n\002\f\t"
	.ascii	"\000\004\003\006\n\001\t\001\004"
	.ascii	"\000\017\013\003\006\n\002\000\017"
	.ascii	"\000\002\002\004\017\007\f\t\003"
	.ascii	"\000\006\004\017\013\r\b\003\f"
	.ascii	"\000\t\017\t\001\016\005\004\n"
	.ascii	"\000\013\003\017\t\013\006\b\013"
	.ascii	"\000\r\b\006\000\r\t\001\007"
	.ascii	"\000\002\r\003\007\007\f\007\016"
	.ascii	"\000\001\004\b\r\002\017\n\b"
	.ascii	"\000\b\004\005\n\006\b\r\001"
	.ascii	"\000\001\016\n\003\001\005\n\004"
	.ascii	"\000\013\001\000\r\b\003\016\002"
	.ascii	"\000\007\002\007\b\r\n\007\r"
	.ascii	"\000\003\t\001\001\b\000\003\n"
	.ascii	"\000\n\f\002\004\005\006\016\f"
	.asciz	"\000\017\005\013\017\017\007\n"
	.ascii	"\000\005\013\004\t\006\013\t\017"
	.ascii	"\000\n\007\r\002\005\r\f\t"
	.ascii	"\000\006\000\b\007\000\001\003\005"
	.ascii	"\000\f\b\001\001\t\000\017\006"
	.ascii	"\000\013\006\017\004\017\016\005\f"
	.ascii	"\000\006\002\f\b\003\003\t\003"
	.ascii	"\000\f\001\005\002\017\r\005\006"
	.ascii	"\000\t\f\002\003\f\004\006\n"
	.ascii	"\000\003\007\016\005\000\001\000\t"
	.ascii	"\000\f\r\007\005\017\004\007\016"
	.ascii	"\000\013\n\016\f\n\016\f\013"
	.ascii	"\000\007\006\f\016\005\n\b\r"
	.asciz	"\000\016\f\003\013\t\007\017"
	.ascii	"\000\005\f\013\013\r\016\005\005"
	.asciz	"\000\t\006\f\001\003\000\002"
	.ascii	"\000\003\t\005\005\006\001\000\017"
	.ascii	"\000\n\000\013\f\n\006\016\003"
	.asciz	"\000\t\000\004\f\000\007\n"
	.ascii	"\000\005\t\013\n\t\013\017\016"
	.ascii	"\000\n\003\n\002\003\r\005\003"
	.ascii	"\000\000\005\005\007\004\000\002\005"
	.ascii	"\000\000\005\002\004\016\005\006\f"
	.ascii	"\000\003\013\017\016\b\003\b\t"
	.ascii	"\000\005\002\016\b\000\013\t\005"
	.ascii	"\000\006\016\002\002\005\b\003\006"
	.ascii	"\000\007\n\b\017\t\013\001\007"
	.ascii	"\000\b\005\001\t\006\b\006\002"
	.ascii	"\000\000\017\007\004\016\006\002\b"
	.ascii	"\000\r\t\f\016\003\r\f\013"

	.p2align	4               ## @cyfun.ibin
_cyfun.ibin:
	.ascii	"\000\b\004\f\002\n\006\016\001\t\005\r\003\013\007\017"

	.globl	_value                  ## @value
	.p2align	2
_value:
	.long	1                       ## 0x1

.zerofill __DATA,__bss,_FunctionCounter,4,2 ## @FunctionCounter
.zerofill __DATA,__bss,_FunctionCounter.1,4,2 ## @FunctionCounter.1
.zerofill __DATA,__bss,_FunctionCounter.2,4,2 ## @FunctionCounter.2
.zerofill __DATA,__bss,_FunctionCounter.3,4,2 ## @FunctionCounter.3
.zerofill __DATA,__bss,_FunctionCounter.4,4,2 ## @FunctionCounter.4
.zerofill __DATA,__bss,_FunctionCounter.5,4,2 ## @FunctionCounter.5
	.section	__TEXT,__cstring,cstring_literals
L___unnamed_1:                          ## @0
	.asciz	"%s\n"

L___unnamed_2:                          ## @1
	.asciz	"des"

L___unnamed_3:                          ## @2
	.asciz	"%s\n"

L___unnamed_4:                          ## @3
	.asciz	"getbit"

L___unnamed_5:                          ## @4
	.asciz	"%s\n"

L___unnamed_6:                          ## @5
	.asciz	"ks"

L___unnamed_7:                          ## @6
	.asciz	"%s\n"

L___unnamed_8:                          ## @7
	.asciz	"cyfun"

L___unnamed_11:                         ## @8
	.asciz	"%s\n"

L___unnamed_12:                         ## @9
	.asciz	"main"

L___unnamed_13:                         ## @10
	.asciz	"\n%s\n"

	.p2align	4               ## @11
L___unnamed_14:
	.asciz	"****** Function frequencies ******"

L___unnamed_15:                         ## @12
	.asciz	"%s: %d\n"

	.p2align	4               ## @13
L___unnamed_16:
	.asciz	"llvm.memcpy.p0i8.p0i8.i64"

L___unnamed_17:                         ## @14
	.asciz	"des"

L___unnamed_18:                         ## @15
	.asciz	"getbit"

L___unnamed_19:                         ## @16
	.asciz	"main"

L___unnamed_20:                         ## @17
	.asciz	"ks"

L___unnamed_21:                         ## @18
	.asciz	"cyfun"

L___unnamed_9:                          ## @19
	.asciz	"%s\n"

	.p2align	4               ## @20
L___unnamed_10:
	.asciz	"****** Call sequence ******"


.subsections_via_symbols
