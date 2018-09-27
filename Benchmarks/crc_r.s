	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_icrc1
	.p2align	4, 0x90
_icrc1:                                 ## @icrc1
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
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
Lcfi3:
	.cfi_offset %rbx, -32
Lcfi4:
	.cfi_offset %r14, -24
	movl	%esi, %r14d
	movl	%edi, %ebx
	incl	_FunctionCounter(%rip)
	leaq	L___unnamed_1(%rip), %rdi
	leaq	L___unnamed_2(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movw	%bx, -26(%rbp)
	movb	%r14b, -19(%rbp)
	movzwl	-26(%rbp), %eax
	movzbl	-19(%rbp), %ecx
	shll	$8, %ecx
	xorl	%eax, %ecx
	movw	%cx, -18(%rbp)
	movl	$0, -24(%rbp)
	cmpl	$7, -24(%rbp)
	jle	LBB0_2
	jmp	LBB0_6
	.p2align	4, 0x90
LBB0_5:                                 ## %for.cond
                                        ##   in Loop: Header=BB0_2 Depth=1
	movw	%ax, -18(%rbp)
	incl	-24(%rbp)
	cmpl	$7, -24(%rbp)
	jg	LBB0_6
LBB0_2:                                 ## %for.body
                                        ## =>This Inner Loop Header: Depth=1
	movzwl	-18(%rbp), %eax
	testb	$-128, %ah
	je	LBB0_4
## BB#3:                                ## %if.then
                                        ##   in Loop: Header=BB0_2 Depth=1
	movzwl	-18(%rbp), %eax
	addl	%eax, %eax
	movw	%ax, -18(%rbp)
	xorl	$4129, %eax             ## imm = 0x1021
	jmp	LBB0_5
	.p2align	4, 0x90
LBB0_4:                                 ## %if.else
                                        ##   in Loop: Header=BB0_2 Depth=1
	movzwl	-18(%rbp), %eax
	addl	%eax, %eax
	jmp	LBB0_5
LBB0_6:                                 ## %for.end
	movzwl	-18(%rbp), %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_icrc
	.p2align	4, 0x90
_icrc:                                  ## @icrc
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi5:
	.cfi_def_cfa_offset 16
Lcfi6:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi7:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
Lcfi8:
	.cfi_offset %rbx, -48
Lcfi9:
	.cfi_offset %r12, -40
Lcfi10:
	.cfi_offset %r14, -32
Lcfi11:
	.cfi_offset %r15, -24
	movl	%ecx, %r14d
	movl	%edx, %r15d
	movq	%rsi, %r12
	movl	%edi, %ebx
	incl	_FunctionCounter.1(%rip)
	leaq	L___unnamed_3(%rip), %rdi
	leaq	L___unnamed_4(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movw	%bx, -50(%rbp)
	movq	%r12, -64(%rbp)
	movw	%r15w, -42(%rbp)
	movl	%r14d, -48(%rbp)
	movzwl	-50(%rbp), %eax
	movw	%ax, -36(%rbp)
	cmpw	$0, _icrc.init(%rip)
	jne	LBB1_4
## BB#1:                                ## %if.then
	movw	$1, _icrc.init(%rip)
	movw	$0, -34(%rbp)
	leaq	_icrc.icrctb(%rip), %r14
	leaq	_icrc.it(%rip), %rbx
	leaq	_icrc.rchr(%rip), %r15
	jmp	LBB1_2
	.p2align	4, 0x90
LBB1_3:                                 ## %for.inc
                                        ##   in Loop: Header=BB1_2 Depth=1
	movzwl	-34(%rbp), %eax
	shll	$8, %eax
	movzwl	%ax, %edi
	xorl	%esi, %esi
	callq	_icrc1
	movzwl	-34(%rbp), %ecx
	movw	%ax, (%r14,%rcx,2)
	movzwl	-34(%rbp), %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	movzbl	(%rcx,%rbx), %ecx
	shll	$4, %ecx
	movq	%rax, %rdx
	shrq	$4, %rdx
	movzbl	(%rdx,%rbx), %edx
	orl	%ecx, %edx
	movb	%dl, (%rax,%r15)
	incw	-34(%rbp)
LBB1_2:                                 ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movzwl	-34(%rbp), %eax
	cmpl	$255, %eax
	jle	LBB1_3
LBB1_4:                                 ## %if.end
	movswl	-42(%rbp), %eax
	testl	%eax, %eax
	js	LBB1_6
## BB#5:                                ## %if.then19
	movzbl	-42(%rbp), %eax
	movl	%eax, %ecx
	jmp	LBB1_8
LBB1_6:                                 ## %if.else
	cmpl	$0, -48(%rbp)
	jns	LBB1_9
## BB#7:                                ## %if.then29
	movzwl	-36(%rbp), %eax
	movzbl	%al, %ecx
	shrq	$8, %rax
	leaq	_icrc.rchr(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	(%rcx,%rdx), %ecx
LBB1_8:                                 ## %if.end46
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, -36(%rbp)
LBB1_9:                                 ## %if.end46
	movw	$1, -34(%rbp)
	leaq	_lin(%rip), %rcx
	leaq	_icrc.rchr(%rip), %rax
	leaq	_icrc.icrctb(%rip), %rdx
	jmp	LBB1_10
	.p2align	4, 0x90
LBB1_14:                                ## %for.inc86
                                        ##   in Loop: Header=BB1_10 Depth=1
	xorb	-35(%rbp), %bl
	movzbl	%bl, %esi
	movw	%si, -40(%rbp)
	movzwl	-40(%rbp), %esi
	movzwl	(%rdx,%rsi,2), %esi
	movzbl	-36(%rbp), %edi
	shll	$8, %edi
	xorl	%esi, %edi
	movw	%di, -36(%rbp)
	incw	-34(%rbp)
LBB1_10:                                ## %for.cond47
                                        ## =>This Inner Loop Header: Depth=1
	movzwl	-34(%rbp), %esi
	cmpq	-64(%rbp), %rsi
	ja	LBB1_15
## BB#11:                               ## %for.body51
                                        ##   in Loop: Header=BB1_10 Depth=1
	cmpl	$0, -48(%rbp)
	js	LBB1_12
## BB#13:                               ## %if.else65
                                        ##   in Loop: Header=BB1_10 Depth=1
	movzwl	-34(%rbp), %esi
	movzbl	(%rsi,%rcx), %ebx
	jmp	LBB1_14
	.p2align	4, 0x90
LBB1_12:                                ## %if.then54
                                        ##   in Loop: Header=BB1_10 Depth=1
	movzwl	-34(%rbp), %esi
	movzbl	(%rsi,%rcx), %esi
	movzbl	(%rsi,%rax), %ebx
	jmp	LBB1_14
LBB1_15:                                ## %for.end88
	cmpl	$0, -48(%rbp)
	js	LBB1_17
## BB#16:                               ## %if.then91
	movzwl	-36(%rbp), %eax
	movw	%ax, -38(%rbp)
	jmp	LBB1_18
LBB1_17:                                ## %if.else92
	movzwl	-36(%rbp), %ecx
	movzbl	%cl, %edx
	shrq	$8, %rcx
	movzbl	(%rcx,%rax), %ecx
	movzbl	(%rdx,%rax), %eax
	shll	$8, %eax
	orl	%ecx, %eax
	movw	%ax, -38(%rbp)
LBB1_18:                                ## %if.end108
	movzwl	-38(%rbp), %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

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
	pushq	%rbx
	subq	$24, %rsp
Lcfi15:
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
	movl	$0, -32(%rbp)
	movq	$40, -24(%rbp)
	leaq	_lin(%rip), %rbx
	movb	$0, _lin+41(%rip)
	movq	-24(%rbp), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	_icrc
	movw	%ax, -10(%rbp)
	movb	-9(%rbp), %al
	movq	-24(%rbp), %rcx
	movb	%al, 1(%rcx,%rbx)
	movb	-10(%rbp), %al
	movq	-24(%rbp), %rcx
	movb	%al, 2(%rcx,%rbx)
	movq	-24(%rbp), %rsi
	addq	$2, %rsi
	movzwl	-10(%rbp), %edi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	_icrc
	movw	%ax, -26(%rbp)
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
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.section	__DATA,__data
	.globl	_lin                    ## @lin
	.p2align	4
_lin:
	.asciz	"asdffeagewaHAFEFaeDsFEawFdsFaefaeerdjgp\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

.zerofill __DATA,__bss,_icrc.icrctb,512,4 ## @icrc.icrctb
.zerofill __DATA,__bss,_icrc.init,2,1   ## @icrc.init
.zerofill __DATA,__bss,_icrc.rchr,256,4 ## @icrc.rchr
	.p2align	4               ## @icrc.it
_icrc.it:
	.ascii	"\000\b\004\f\002\n\006\016\001\t\005\r\003\013\007\017"

.zerofill __DATA,__bss,_FunctionCounter,4,2 ## @FunctionCounter
.zerofill __DATA,__bss,_FunctionCounter.1,4,2 ## @FunctionCounter.1
.zerofill __DATA,__bss,_FunctionCounter.2,4,2 ## @FunctionCounter.2
	.section	__TEXT,__cstring,cstring_literals
L___unnamed_1:                          ## @0
	.asciz	"%s\n"

L___unnamed_2:                          ## @1
	.asciz	"icrc1"

L___unnamed_3:                          ## @2
	.asciz	"%s\n"

L___unnamed_4:                          ## @3
	.asciz	"icrc"

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
	.asciz	"icrc"

L___unnamed_14:                         ## @11
	.asciz	"icrc1"

L___unnamed_5:                          ## @12
	.asciz	"%s\n"

	.p2align	4               ## @13
L___unnamed_6:
	.asciz	"****** Call sequence ******"


.subsections_via_symbols
