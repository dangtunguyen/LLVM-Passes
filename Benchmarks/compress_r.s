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
	movl	$0, -16(%rbp)
	movl	$50, -12(%rbp)
	callq	_initbuffer
	movl	$16, _maxbits(%rip)
	movb	_maxbits(%rip), %cl
	movl	$1, %eax
	shll	%cl, %eax
	cltq
	movq	%rax, _maxmaxcode(%rip)
	movl	-12(%rbp), %eax
	movq	_InCnt@GOTPCREL(%rip), %rcx
	movl	%eax, (%rcx)
	movq	_apsim_InCnt@GOTPCREL(%rip), %rax
	movl	$53, (%rax)
	movq	_orig_text_buffer@GOTPCREL(%rip), %rax
	movq	_InBuff@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	_comp_text_buffer@GOTPCREL(%rip), %rax
	movq	_OutBuff@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	callq	_compress
	leaq	L___unnamed_5(%rip), %rdi
	leaq	L___unnamed_6(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movl	_FunctionCounter.6(%rip), %edx
	leaq	L___unnamed_7(%rip), %rbx
	leaq	L___unnamed_8(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter.4(%rip), %edx
	leaq	L___unnamed_9(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter.8(%rip), %edx
	leaq	L___unnamed_10(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter.5(%rip), %edx
	leaq	L___unnamed_11(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter.7(%rip), %edx
	leaq	L___unnamed_12(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter.1(%rip), %edx
	leaq	L___unnamed_13(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter.3(%rip), %edx
	leaq	L___unnamed_14(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter.2(%rip), %edx
	leaq	L___unnamed_15(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter(%rip), %edx
	leaq	L___unnamed_16(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_initbuffer
	.p2align	4, 0x90
_initbuffer:                            ## @initbuffer
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
	subq	$16, %rsp
	incl	_FunctionCounter.1(%rip)
	leaq	L___unnamed_17(%rip), %rdi
	leaq	L___unnamed_18(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movl	$1, -8(%rbp)
	movl	$0, -4(%rbp)
	movq	_orig_text_buffer@GOTPCREL(%rip), %rax
	cmpl	$49, -4(%rbp)
	jg	LBB1_3
	.p2align	4, 0x90
LBB1_2:                                 ## %for.body
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %ecx
	movl	%ecx, -12(%rbp)
	imull	$133, -8(%rbp), %ecx
	addl	$81, %ecx
	movslq	%ecx, %rcx
	imulq	$271652039, %rcx, %rdx  ## imm = 0x103114C7
	movq	%rdx, %rsi
	shrq	$63, %rsi
	sarq	$41, %rdx
	addl	%esi, %edx
	imull	$8095, %edx, %edx       ## imm = 0x1F9F
	subl	%edx, %ecx
	movl	%ecx, -8(%rbp)
	movslq	-4(%rbp), %rdx
	movb	%cl, (%rax,%rdx)
	incl	-4(%rbp)
	cmpl	$49, -4(%rbp)
	jle	LBB1_2
LBB1_3:                                 ## %for.end
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_compress
	.p2align	4, 0x90
_compress:                              ## @compress
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
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
Lcfi10:
	.cfi_offset %rbx, -48
Lcfi11:
	.cfi_offset %r12, -40
Lcfi12:
	.cfi_offset %r14, -32
Lcfi13:
	.cfi_offset %r15, -24
	incl	_FunctionCounter.2(%rip)
	leaq	L___unnamed_19(%rip), %rdi
	leaq	L___unnamed_20(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movq	$0, -40(%rbp)
	movl	$0, _offset(%rip)
	movq	_bytes_out@GOTPCREL(%rip), %r14
	movq	$3, (%r14)
	movq	$0, _out_count(%rip)
	movl	$0, _clear_flg(%rip)
	movq	$0, _ratio(%rip)
	movq	$1, _in_count(%rip)
	movq	_n_bits@GOTPCREL(%rip), %rax
	movl	$9, (%rax)
	movq	_maxcode@GOTPCREL(%rip), %rax
	movq	$511, (%rax)            ## imm = 0x1FF
	xorl	%eax, %eax
	cmpl	$0, _block_compress(%rip)
	movq	$10000, _checkpoint(%rip) ## imm = 0x2710
	setne	%al
	orl	$256, %eax              ## imm = 0x100
	movq	%rax, _free_ent(%rip)
	callq	_getbyte
	movl	%eax, %eax
	movq	%rax, -64(%rbp)
	movl	$0, -44(%rbp)
	movq	_hsize(%rip), %rax
	movq	%rax, -56(%rbp)
	cmpq	$65535, -56(%rbp)       ## imm = 0xFFFF
	jg	LBB2_3
	.p2align	4, 0x90
LBB2_2:                                 ## %for.inc
                                        ## =>This Inner Loop Header: Depth=1
	incl	-44(%rbp)
	shlq	-56(%rbp)
	cmpq	$65535, -56(%rbp)       ## imm = 0xFFFF
	jle	LBB2_2
LBB2_3:                                 ## %for.end
	movl	$8, %eax
	subl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	_hsize(%rip), %rdi
	movq	%rdi, -80(%rbp)
	callq	_cl_hash
	movq	_InCnt@GOTPCREL(%rip), %r15
	movq	_htab@GOTPCREL(%rip), %rbx
	movq	_codetab@GOTPCREL(%rip), %r12
	cmpl	$0, (%r15)
	jg	LBB2_5
	jmp	LBB2_20
	.p2align	4, 0x90
LBB2_15:                                ## %nomatch
                                        ##   in Loop: Header=BB2_5 Depth=1
	incq	_out_count(%rip)
	movslq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	_free_ent(%rip), %rax
	cmpq	_maxmaxcode(%rip), %rax
	jge	LBB2_17
## BB#16:                               ## %if.then52
                                        ##   in Loop: Header=BB2_5 Depth=1
	movq	_free_ent(%rip), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, _free_ent(%rip)
	movq	-40(%rbp), %rcx
	movw	%ax, (%r12,%rcx,2)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rbx,%rcx,8)
	cmpl	$0, (%r15)
	jg	LBB2_5
	jmp	LBB2_20
LBB2_17:                                ## %if.else57
                                        ##   in Loop: Header=BB2_5 Depth=1
	movq	_in_count(%rip), %rax
	cmpq	_checkpoint(%rip), %rax
	jl	LBB2_4
## BB#18:                               ## %land.lhs.true60
                                        ##   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, _block_compress(%rip)
	je	LBB2_4
## BB#19:                               ## %if.then62
                                        ##   in Loop: Header=BB2_5 Depth=1
	callq	_cl_block
	cmpl	$0, (%r15)
	jg	LBB2_5
	jmp	LBB2_20
	.p2align	4, 0x90
LBB2_6:                                 ## %if.then
                                        ##   in Loop: Header=BB2_5 Depth=1
	movq	-40(%rbp), %rax
	movzwl	(%r12,%rax,2), %eax
	movq	%rax, -64(%rbp)
LBB2_4:                                 ## %while.cond
                                        ##   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r15)
	jle	LBB2_20
LBB2_5:                                 ## %while.body
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_10 Depth 2
	movl	$0, -68(%rbp)
	callq	_getbyte
	movl	%eax, -48(%rbp)
	incq	_in_count(%rip)
	movslq	-48(%rbp), %rax
	movb	_maxbits(%rip), %cl
	shlq	%cl, %rax
	addq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-48(%rbp), %eax
	movb	-44(%rbp), %cl
	shll	%cl, %eax
	cltq
	xorq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	(%rbx,%rax,8), %rax
	cmpq	-56(%rbp), %rax
	je	LBB2_6
## BB#7:                                ## %if.else
                                        ##   in Loop: Header=BB2_5 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, (%rbx,%rax,8)
	js	LBB2_15
## BB#8:                                ## %if.end18
                                        ##   in Loop: Header=BB2_5 Depth=1
	movl	-80(%rbp), %eax
	subl	-40(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpq	$0, -40(%rbp)
	jne	LBB2_10
## BB#9:                                ## %if.then23
                                        ##   in Loop: Header=BB2_5 Depth=1
	movl	$1, -72(%rbp)
	.p2align	4, 0x90
LBB2_10:                                ## %probe
                                        ##   Parent Loop BB2_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movslq	-72(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -40(%rbp)
	jns	LBB2_12
## BB#11:                               ## %if.then29
                                        ##   in Loop: Header=BB2_10 Depth=2
	movq	-80(%rbp), %rax
	addq	%rax, -40(%rbp)
LBB2_12:                                ## %if.end31
                                        ##   in Loop: Header=BB2_10 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rbx,%rax,8), %rax
	cmpq	-56(%rbp), %rax
	je	LBB2_6
## BB#13:                               ## %if.end38
                                        ##   in Loop: Header=BB2_10 Depth=2
	movq	-40(%rbp), %rax
	cmpq	$0, (%rbx,%rax,8)
	jle	LBB2_15
## BB#14:                               ## %land.lhs.true
                                        ##   in Loop: Header=BB2_10 Depth=2
	movslq	-68(%rbp), %rax
	incq	%rax
	movl	%eax, -68(%rbp)
	cmpq	_in_count(%rip), %rax
	jl	LBB2_10
	jmp	LBB2_15
LBB2_20:                                ## %while.end
	movq	(%r14), %rax
	cmpq	_in_count(%rip), %rax
	jle	LBB2_22
## BB#21:                               ## %if.then67
	movl	$2, _exit_stat(%rip)
LBB2_22:                                ## %if.end68
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_getbyte
	.p2align	4, 0x90
_getbyte:                               ## @getbyte
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi14:
	.cfi_def_cfa_offset 16
Lcfi15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi16:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	incl	_FunctionCounter.3(%rip)
	leaq	L___unnamed_21(%rip), %rdi
	leaq	L___unnamed_22(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movq	_InCnt@GOTPCREL(%rip), %rax
	cmpl	$0, (%rax)
	jle	LBB3_3
## BB#1:                                ## %land.lhs.true
	movq	_apsim_InCnt@GOTPCREL(%rip), %rcx
	movl	(%rcx), %edx
	leal	-1(%rdx), %esi
	movl	%esi, (%rcx)
	testl	%edx, %edx
	jle	LBB3_3
## BB#2:                                ## %if.then
	decl	(%rax)
	movq	_InBuff@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movzbl	(%rcx), %eax
	movl	%eax, -4(%rbp)
	jmp	LBB3_4
LBB3_3:                                 ## %if.else
	movl	$-1, -4(%rbp)
LBB3_4:                                 ## %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_cl_hash
	.p2align	4, 0x90
_cl_hash:                               ## @cl_hash
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
	pushq	%rbx
	subq	$40, %rsp
Lcfi20:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	incl	_FunctionCounter.4(%rip)
	leaq	L___unnamed_23(%rip), %rdi
	leaq	L___unnamed_24(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movq	%rbx, -40(%rbp)
	shlq	$3, %rbx
	addq	_htab@GOTPCREL(%rip), %rbx
	movq	%rbx, -16(%rbp)
	movq	$-1, -24(%rbp)
	movq	-40(%rbp), %rax
	addq	$-16, %rax
	movq	%rax, -32(%rbp)
	.p2align	4, 0x90
LBB4_1:                                 ## %do.body
                                        ## =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -128(%rcx)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -120(%rcx)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -112(%rcx)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -104(%rcx)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -96(%rcx)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -88(%rcx)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -80(%rcx)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -72(%rcx)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -64(%rcx)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -56(%rcx)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -48(%rcx)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -40(%rcx)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -32(%rcx)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -24(%rcx)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -16(%rcx)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -8(%rcx)
	addq	$-128, -16(%rbp)
	movq	-32(%rbp), %rax
	addq	$-16, %rax
	movq	%rax, -32(%rbp)
	jns	LBB4_1
## BB#2:                                ## %do.end
	addq	$16, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jle	LBB4_5
	.p2align	4, 0x90
LBB4_4:                                 ## %for.body
                                        ## =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	leaq	-8(%rcx), %rdx
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rcx)
	decq	-32(%rbp)
	cmpq	$0, -32(%rbp)
	jg	LBB4_4
LBB4_5:                                 ## %for.end
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_cl_block
	.p2align	4, 0x90
_cl_block:                              ## @cl_block
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi21:
	.cfi_def_cfa_offset 16
Lcfi22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi23:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	incl	_FunctionCounter.5(%rip)
	leaq	L___unnamed_25(%rip), %rdi
	leaq	L___unnamed_26(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movl	$10000, %eax            ## imm = 0x2710
	addq	_in_count(%rip), %rax
	movq	%rax, _checkpoint(%rip)
	cmpq	$8388608, _in_count(%rip) ## imm = 0x800000
	jl	LBB5_4
## BB#1:                                ## %if.then
	movq	_bytes_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	sarq	$8, %rax
	movq	%rax, -8(%rbp)
	je	LBB5_2
## BB#3:                                ## %if.else
	movq	_in_count(%rip), %rax
	cqto
	idivq	-8(%rbp)
	jmp	LBB5_5
LBB5_4:                                 ## %if.else3
	movq	_in_count(%rip), %rax
	shlq	$8, %rax
	movq	_bytes_out@GOTPCREL(%rip), %rcx
	cqto
	idivq	(%rcx)
LBB5_5:                                 ## %if.end5
	movq	%rax, -8(%rbp)
	jmp	LBB5_6
LBB5_2:                                 ## %if.then2
	movq	$2147483647, -8(%rbp)   ## imm = 0x7FFFFFFF
LBB5_6:                                 ## %if.end5
	movq	-8(%rbp), %rax
	cmpq	_ratio(%rip), %rax
	jle	LBB5_8
## BB#7:                                ## %if.then7
	movq	-8(%rbp), %rax
	movq	%rax, _ratio(%rip)
	jmp	LBB5_9
LBB5_8:                                 ## %if.else8
	movq	$0, _ratio(%rip)
	movq	_hsize(%rip), %rdi
	callq	_cl_hash
	movq	$257, _free_ent(%rip)   ## imm = 0x101
	movl	$1, _clear_flg(%rip)
	movl	$256, %edi              ## imm = 0x100
	callq	_output
LBB5_9:                                 ## %if.end9
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_output
	.p2align	4, 0x90
_output:                                ## @output
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi24:
	.cfi_def_cfa_offset 16
Lcfi25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi26:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
Lcfi27:
	.cfi_offset %rbx, -32
Lcfi28:
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	incl	_FunctionCounter.6(%rip)
	leaq	L___unnamed_27(%rip), %rdi
	leaq	L___unnamed_28(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movq	%rbx, -40(%rbp)
	movl	_offset(%rip), %eax
	movl	%eax, -24(%rbp)
	movq	_n_bits@GOTPCREL(%rip), %r14
	movl	(%r14), %eax
	movl	%eax, -20(%rbp)
	movq	_buf@GOTPCREL(%rip), %rbx
	movq	%rbx, -32(%rbp)
	cmpq	$0, -40(%rbp)
	js	LBB6_21
## BB#1:                                ## %if.then
	movl	-24(%rbp), %eax
	sarl	$3, %eax
	cltq
	addq	%rax, -32(%rbp)
	andl	$7, -24(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edx
	movslq	-24(%rbp), %rcx
	leaq	_rmask(%rip), %rsi
	movzbl	(%rcx,%rsi), %esi
	andl	%edx, %esi
	movq	-40(%rbp), %rdx
	shlq	%cl, %rdx
	orl	%esi, %edx
	leaq	_lmask(%rip), %rsi
	movzbl	(%rcx,%rsi), %ecx
	andl	%edx, %ecx
	movb	%cl, (%rax)
	incq	-32(%rbp)
	movl	$8, %ecx
	movl	$8, %eax
	subl	-24(%rbp), %eax
	subl	%eax, -20(%rbp)
	subl	-24(%rbp), %ecx
                                        ## kill: %CL<def> %CL<kill> %ECX<kill>
	sarq	%cl, -40(%rbp)
	cmpl	$8, -20(%rbp)
	jl	LBB6_3
## BB#2:                                ## %if.then15
	movb	-40(%rbp), %al
	movq	-32(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rbp)
	movb	%al, (%rcx)
	sarq	$8, -40(%rbp)
	addl	$-8, -20(%rbp)
LBB6_3:                                 ## %if.end
	cmpl	$0, -20(%rbp)
	je	LBB6_5
## BB#4:                                ## %if.then20
	movb	-40(%rbp), %al
	movq	-32(%rbp), %rcx
	movb	%al, (%rcx)
LBB6_5:                                 ## %if.end22
	movl	_offset(%rip), %eax
	addl	(%r14), %eax
	movl	%eax, _offset(%rip)
	movl	(%r14), %ecx
	shll	$3, %ecx
	cmpl	%ecx, %eax
	jne	LBB6_12
## BB#6:                                ## %if.then26
	movq	%rbx, -32(%rbp)
	movl	(%r14), %eax
	movl	%eax, -20(%rbp)
	movslq	-20(%rbp), %rax
	movq	_bytes_out@GOTPCREL(%rip), %rcx
	addq	%rax, (%rcx)
	.p2align	4, 0x90
LBB6_7:                                 ## %do.cond
                                        ## =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -32(%rbp)
	movsbl	(%rax), %edi
	callq	_putbyte
	decl	-20(%rbp)
	je	LBB6_8
## BB#9:                                ## %land.rhs
                                        ##   in Loop: Header=BB6_7 Depth=1
	movq	-32(%rbp), %rax
	subq	%rbx, %rax
	cmpq	$16, %rax
	setl	%al
	testb	%al, %al
	jne	LBB6_7
	jmp	LBB6_11
	.p2align	4, 0x90
LBB6_8:                                 ##   in Loop: Header=BB6_7 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jne	LBB6_7
LBB6_11:                                ## %do.end
	movl	$0, _offset(%rip)
LBB6_12:                                ## %if.end33
	movq	_free_ent(%rip), %rax
	movq	_maxcode@GOTPCREL(%rip), %rbx
	cmpq	(%rbx), %rax
	jg	LBB6_14
## BB#13:                               ## %lor.lhs.false
	cmpl	$0, _clear_flg(%rip)
	jle	LBB6_24
LBB6_14:                                ## %if.then38
	cmpl	$0, _offset(%rip)
	jle	LBB6_16
## BB#15:                               ## %if.then41
	movl	(%r14), %esi
	movq	_buf@GOTPCREL(%rip), %rdi
	callq	_writebytes
	movslq	(%r14), %rax
	movq	_bytes_out@GOTPCREL(%rip), %rcx
	addq	%rax, (%rcx)
LBB6_16:                                ## %if.end44
	movl	$0, _offset(%rip)
	cmpl	$0, _clear_flg(%rip)
	je	LBB6_18
## BB#17:                               ## %if.then46
	movl	$9, (%r14)
	movq	$511, (%rbx)            ## imm = 0x1FF
	movl	$0, _clear_flg(%rip)
	jmp	LBB6_24
LBB6_21:                                ## %if.else57
	cmpl	$0, _offset(%rip)
	jle	LBB6_23
## BB#22:                               ## %if.then60
	movl	_offset(%rip), %eax
	leal	7(%rax), %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	leal	7(%rax,%rcx), %esi
	sarl	$3, %esi
	movq	_buf@GOTPCREL(%rip), %rdi
	callq	_writebytes
LBB6_23:                                ## %if.end62
	movl	_offset(%rip), %eax
	leal	7(%rax), %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	leal	7(%rax,%rcx), %eax
	sarl	$3, %eax
	cltq
	movq	_bytes_out@GOTPCREL(%rip), %rcx
	addq	%rax, (%rcx)
	movl	$0, _offset(%rip)
LBB6_24:                                ## %if.end67
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB6_18:                                ## %if.else
	movl	(%r14), %eax
	incl	%eax
	movl	%eax, (%r14)
	cmpl	_maxbits(%rip), %eax
	jne	LBB6_20
## BB#19:                               ## %if.then49
	movq	_maxmaxcode(%rip), %rax
	movq	%rax, (%rbx)
	jmp	LBB6_24
LBB6_20:                                ## %if.else50
	movb	(%r14), %cl
	movl	$1, %eax
	shll	%cl, %eax
	decl	%eax
	cltq
	movq	%rax, (%rbx)
	jmp	LBB6_24
	.cfi_endproc

	.globl	_putbyte
	.p2align	4, 0x90
_putbyte:                               ## @putbyte
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi29:
	.cfi_def_cfa_offset 16
Lcfi30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi31:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Lcfi32:
	.cfi_offset %rbx, -24
	movl	%edi, %ebx
	incl	_FunctionCounter.7(%rip)
	leaq	L___unnamed_29(%rip), %rdi
	leaq	L___unnamed_30(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movb	%bl, -9(%rbp)
	movq	_OutBuff@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%bl, (%rcx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_writebytes
	.p2align	4, 0x90
_writebytes:                            ## @writebytes
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi33:
	.cfi_def_cfa_offset 16
Lcfi34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi35:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
Lcfi36:
	.cfi_offset %rbx, -32
Lcfi37:
	.cfi_offset %r14, -24
	movl	%esi, %r14d
	movq	%rdi, %rbx
	incl	_FunctionCounter.8(%rip)
	leaq	L___unnamed_31(%rip), %rdi
	leaq	L___unnamed_32(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movq	%rbx, -32(%rbp)
	movl	%r14d, -24(%rbp)
	movl	$0, -20(%rbp)
	movq	_OutBuff@GOTPCREL(%rip), %rax
	jmp	LBB8_1
	.p2align	4, 0x90
LBB8_5:                                 ## %for.body
                                        ##   in Loop: Header=BB8_1 Depth=1
	movq	-32(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	movq	(%rax), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rax)
	movb	%cl, (%rdx)
	incl	-20(%rbp)
LBB8_1:                                 ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %ecx
	cmpl	-24(%rbp), %ecx
	jge	LBB8_2
## BB#3:                                ## %land.rhs
                                        ##   in Loop: Header=BB8_1 Depth=1
	cmpl	$16, -20(%rbp)
	setl	%cl
	testb	%cl, %cl
	jne	LBB8_5
	jmp	LBB8_6
	.p2align	4, 0x90
LBB8_2:                                 ##   in Loop: Header=BB8_1 Depth=1
	xorl	%ecx, %ecx
	testb	%cl, %cl
	jne	LBB8_5
LBB8_6:                                 ## %for.end
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.section	__DATA,__data
	.globl	_maxbits                ## @maxbits
	.p2align	2
_maxbits:
	.long	16                      ## 0x10

	.globl	_maxmaxcode             ## @maxmaxcode
	.p2align	3
_maxmaxcode:
	.quad	65536                   ## 0x10000

	.globl	_hsize                  ## @hsize
	.p2align	3
_hsize:
	.quad	257                     ## 0x101

	.globl	_free_ent               ## @free_ent
.zerofill __DATA,__common,_free_ent,8,3
	.globl	_exit_stat              ## @exit_stat
.zerofill __DATA,__common,_exit_stat,4,2
	.globl	_nomagic                ## @nomagic
	.p2align	2
_nomagic:
	.long	1                       ## 0x1

	.globl	_zcat_flg               ## @zcat_flg
.zerofill __DATA,__common,_zcat_flg,4,2
	.globl	_quiet                  ## @quiet
	.p2align	2
_quiet:
	.long	1                       ## 0x1

	.globl	_block_compress         ## @block_compress
	.p2align	2
_block_compress:
	.long	128                     ## 0x80

	.globl	_clear_flg              ## @clear_flg
.zerofill __DATA,__common,_clear_flg,4,2
	.globl	_ratio                  ## @ratio
.zerofill __DATA,__common,_ratio,8,3
	.globl	_checkpoint             ## @checkpoint
	.p2align	3
_checkpoint:
	.quad	10000                   ## 0x2710

	.globl	_force                  ## @force
.zerofill __DATA,__common,_force,4,2
	.comm	_InCnt,4,2              ## @InCnt
	.comm	_apsim_InCnt,4,2        ## @apsim_InCnt
	.comm	_orig_text_buffer,50,4  ## @orig_text_buffer
	.comm	_InBuff,8,3             ## @InBuff
	.comm	_comp_text_buffer,55,4  ## @comp_text_buffer
	.comm	_OutBuff,8,3            ## @OutBuff
	.globl	_in_count               ## @in_count
	.p2align	3
_in_count:
	.quad	1                       ## 0x1

	.globl	_out_count              ## @out_count
.zerofill __DATA,__common,_out_count,8,3
.zerofill __DATA,__bss,_offset,4,2      ## @offset
	.comm	_bytes_out,8,3          ## @bytes_out
	.comm	_n_bits,4,2             ## @n_bits
	.comm	_maxcode,8,3            ## @maxcode
	.comm	_htab,2056,4            ## @htab
	.comm	_codetab,514,4          ## @codetab
	.globl	_lmask                  ## @lmask
_lmask:
	.asciz	"\377\376\374\370\360\340\300\200"

	.globl	_rmask                  ## @rmask
_rmask:
	.ascii	"\000\001\003\007\017\037?\177\377"

	.comm	_buf,16,4               ## @buf
	.comm	_fsize,8,3              ## @fsize
	.comm	_ofname,100,4           ## @ofname
.zerofill __DATA,__bss,_FunctionCounter,4,2 ## @FunctionCounter
.zerofill __DATA,__bss,_FunctionCounter.1,4,2 ## @FunctionCounter.1
.zerofill __DATA,__bss,_FunctionCounter.2,4,2 ## @FunctionCounter.2
.zerofill __DATA,__bss,_FunctionCounter.3,4,2 ## @FunctionCounter.3
.zerofill __DATA,__bss,_FunctionCounter.4,4,2 ## @FunctionCounter.4
.zerofill __DATA,__bss,_FunctionCounter.5,4,2 ## @FunctionCounter.5
.zerofill __DATA,__bss,_FunctionCounter.6,4,2 ## @FunctionCounter.6
.zerofill __DATA,__bss,_FunctionCounter.7,4,2 ## @FunctionCounter.7
.zerofill __DATA,__bss,_FunctionCounter.8,4,2 ## @FunctionCounter.8
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
	.asciz	"output"

L___unnamed_9:                          ## @6
	.asciz	"cl_hash"

L___unnamed_10:                         ## @7
	.asciz	"writebytes"

L___unnamed_11:                         ## @8
	.asciz	"cl_block"

L___unnamed_12:                         ## @9
	.asciz	"putbyte"

L___unnamed_13:                         ## @10
	.asciz	"initbuffer"

L___unnamed_14:                         ## @11
	.asciz	"getbyte"

L___unnamed_15:                         ## @12
	.asciz	"compress"

L___unnamed_16:                         ## @13
	.asciz	"main"

L___unnamed_1:                          ## @14
	.asciz	"%s\n"

	.p2align	4               ## @15
L___unnamed_2:
	.asciz	"****** Call sequence ******"

L___unnamed_17:                         ## @16
	.asciz	"%s\n"

L___unnamed_18:                         ## @17
	.asciz	"initbuffer"

L___unnamed_19:                         ## @18
	.asciz	"%s\n"

L___unnamed_20:                         ## @19
	.asciz	"compress"

L___unnamed_21:                         ## @20
	.asciz	"%s\n"

L___unnamed_22:                         ## @21
	.asciz	"getbyte"

L___unnamed_23:                         ## @22
	.asciz	"%s\n"

L___unnamed_24:                         ## @23
	.asciz	"cl_hash"

L___unnamed_25:                         ## @24
	.asciz	"%s\n"

L___unnamed_26:                         ## @25
	.asciz	"cl_block"

L___unnamed_27:                         ## @26
	.asciz	"%s\n"

L___unnamed_28:                         ## @27
	.asciz	"output"

L___unnamed_29:                         ## @28
	.asciz	"%s\n"

L___unnamed_30:                         ## @29
	.asciz	"putbyte"

L___unnamed_31:                         ## @30
	.asciz	"%s\n"

L___unnamed_32:                         ## @31
	.asciz	"writebytes"


.subsections_via_symbols
