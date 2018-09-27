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
	movl	$0, -12(%rbp)
	callq	_InitSeed
	movq	_Array@GOTPCREL(%rip), %rdi
	callq	_Test
	leaq	L___unnamed_5(%rip), %rdi
	leaq	L___unnamed_6(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movl	_FunctionCounter.3(%rip), %edx
	leaq	L___unnamed_7(%rip), %rbx
	leaq	L___unnamed_8(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter.5(%rip), %edx
	leaq	L___unnamed_9(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter.4(%rip), %edx
	leaq	L___unnamed_10(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter.1(%rip), %edx
	leaq	L___unnamed_11(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter(%rip), %edx
	leaq	L___unnamed_12(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter.2(%rip), %edx
	leaq	L___unnamed_13(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	$1, %eax
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
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal8,8byte_literals
	.p2align	3
LCPI2_0:
	.quad	4652007308841189376     ## double 1000
	.section	__TEXT,__text,regular,pure_instructions
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
	pushq	%rbx
	subq	$40, %rsp
Lcfi10:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	incl	_FunctionCounter.2(%rip)
	leaq	L___unnamed_16(%rip), %rdi
	leaq	L___unnamed_17(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movq	%rbx, -24(%rbp)
	movq	%rbx, %rdi
	callq	_Initialize
	movq	$1000, -16(%rbp)        ## imm = 0x3E8
	movq	-24(%rbp), %rdi
	callq	_Sum
	movq	$1500, -40(%rbp)        ## imm = 0x5DC
	movl	$1500, %eax             ## imm = 0x5DC
	subq	-16(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	LCPI2_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_Initialize
	.p2align	4, 0x90
_Initialize:                            ## @Initialize
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
	subq	$24, %rsp
Lcfi14:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	incl	_FunctionCounter.3(%rip)
	leaq	L___unnamed_18(%rip), %rdi
	leaq	L___unnamed_19(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movq	%rbx, -24(%rbp)
	movl	$0, -16(%rbp)
	cmpl	$9, -16(%rbp)
	jle	LBB3_2
	jmp	LBB3_6
	.p2align	4, 0x90
LBB3_5:                                 ## %for.inc6
                                        ##   in Loop: Header=BB3_2 Depth=1
	incl	-16(%rbp)
	cmpl	$9, -16(%rbp)
	jg	LBB3_6
LBB3_2:                                 ## %for.body
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_4 Depth 2
	movl	$0, -12(%rbp)
	cmpl	$9, -12(%rbp)
	jg	LBB3_5
	.p2align	4, 0x90
LBB3_4:                                 ## %for.inc
                                        ##   Parent Loop BB3_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	callq	_RandomInteger
	movslq	-16(%rbp), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	shlq	$3, %rcx
	addq	-24(%rbp), %rcx
	movslq	-12(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	incl	-12(%rbp)
	cmpl	$9, -12(%rbp)
	jle	LBB3_4
	jmp	LBB3_5
LBB3_6:                                 ## %for.end8
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_Sum
	.p2align	4, 0x90
_Sum:                                   ## @Sum
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
	pushq	%rbx
	subq	$40, %rsp
Lcfi18:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	incl	_FunctionCounter.4(%rip)
	leaq	L___unnamed_20(%rip), %rdi
	leaq	L___unnamed_21(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movq	%rbx, -40(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -16(%rbp)
	cmpl	$9, -16(%rbp)
	jle	LBB4_2
	jmp	LBB4_8
	.p2align	4, 0x90
LBB4_7:                                 ## %for.inc18
                                        ##   in Loop: Header=BB4_2 Depth=1
	incl	-16(%rbp)
	cmpl	$9, -16(%rbp)
	jg	LBB4_8
LBB4_2:                                 ## %for.body
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB4_4 Depth 2
	movl	$0, -12(%rbp)
	cmpl	$9, -12(%rbp)
	jle	LBB4_4
	jmp	LBB4_7
	.p2align	4, 0x90
LBB4_6:                                 ## %if.else
                                        ##   in Loop: Header=BB4_4 Depth=2
	movslq	-16(%rbp), %rax
	leaq	(%rax,%rax,4), %rax
	shlq	$3, %rax
	addq	-40(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	addl	%eax, -28(%rbp)
	incl	-20(%rbp)
	incl	-12(%rbp)
	cmpl	$9, -12(%rbp)
	jg	LBB4_7
LBB4_4:                                 ## %for.body3
                                        ##   Parent Loop BB4_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movslq	-16(%rbp), %rax
	leaq	(%rax,%rax,4), %rax
	shlq	$3, %rax
	addq	-40(%rbp), %rax
	movslq	-12(%rbp), %rcx
	cmpl	$0, (%rax,%rcx,4)
	jns	LBB4_6
## BB#5:                                ## %if.then
                                        ##   in Loop: Header=BB4_4 Depth=2
	movslq	-16(%rbp), %rax
	leaq	(%rax,%rax,4), %rax
	shlq	$3, %rax
	addq	-40(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	addl	%eax, -32(%rbp)
	incl	-24(%rbp)
	incl	-12(%rbp)
	cmpl	$9, -12(%rbp)
	jle	LBB4_4
	jmp	LBB4_7
LBB4_8:                                 ## %for.end20
	movl	-32(%rbp), %eax
	movq	_Postotal@GOTPCREL(%rip), %rcx
	movl	%eax, (%rcx)
	movl	-24(%rbp), %eax
	movq	_Poscnt@GOTPCREL(%rip), %rcx
	movl	%eax, (%rcx)
	movl	-28(%rbp), %eax
	movq	_Negtotal@GOTPCREL(%rip), %rcx
	movl	%eax, (%rcx)
	movl	-20(%rbp), %eax
	movq	_Negcnt@GOTPCREL(%rip), %rcx
	movl	%eax, (%rcx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_RandomInteger
	.p2align	4, 0x90
_RandomInteger:                         ## @RandomInteger
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi19:
	.cfi_def_cfa_offset 16
Lcfi20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi21:
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

	.comm	_Array,400,4            ## @Array
	.comm	_Seed,4,2               ## @Seed
	.comm	_Postotal,4,2           ## @Postotal
	.comm	_Poscnt,4,2             ## @Poscnt
	.comm	_Negtotal,4,2           ## @Negtotal
	.comm	_Negcnt,4,2             ## @Negcnt
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
	.asciz	"Initialize"

L___unnamed_9:                          ## @6
	.asciz	"RandomInteger"

L___unnamed_10:                         ## @7
	.asciz	"Sum"

L___unnamed_11:                         ## @8
	.asciz	"InitSeed"

L___unnamed_12:                         ## @9
	.asciz	"main"

L___unnamed_13:                         ## @10
	.asciz	"Test"

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
	.asciz	"Sum"

L___unnamed_22:                         ## @21
	.asciz	"%s\n"

L___unnamed_23:                         ## @22
	.asciz	"RandomInteger"


.subsections_via_symbols
