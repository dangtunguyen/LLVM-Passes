	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_multiply
	.p2align	4, 0x90
_multiply:                              ## @multiply
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
	movl	%esi, %ebx
	movl	%edi, %r14d
	incl	_FunctionCounter(%rip)
	leaq	L___unnamed_1(%rip), %rdi
	leaq	L___unnamed_2(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movl	%r14d, -20(%rbp)
	movl	%ebx, -24(%rbp)
	imull	-20(%rbp), %ebx
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_add
	.p2align	4, 0x90
_add:                                   ## @add
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
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
Lcfi8:
	.cfi_offset %rbx, -32
Lcfi9:
	.cfi_offset %r14, -24
	movl	%esi, %ebx
	movl	%edi, %r14d
	incl	_FunctionCounter.1(%rip)
	leaq	L___unnamed_3(%rip), %rdi
	leaq	L___unnamed_4(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movl	%r14d, -20(%rbp)
	movl	%ebx, -24(%rbp)
	addl	-20(%rbp), %ebx
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_foo
	.p2align	4, 0x90
_foo:                                   ## @foo
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi10:
	.cfi_def_cfa_offset 16
Lcfi11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi12:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
Lcfi13:
	.cfi_offset %rbx, -32
Lcfi14:
	.cfi_offset %r14, -24
	movl	%esi, %r14d
	movl	%edi, %ebx
	incl	_FunctionCounter.2(%rip)
	leaq	L___unnamed_5(%rip), %rdi
	leaq	L___unnamed_6(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movl	%ebx, -20(%rbp)
	movl	%r14d, -24(%rbp)
	movl	-20(%rbp), %edi
	addl	$10, %edi
	movl	%edi, -20(%rbp)
	movl	-24(%rbp), %esi
	callq	_add
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
Lcfi15:
	.cfi_def_cfa_offset 16
Lcfi16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi17:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
Lcfi18:
	.cfi_offset %rbx, -24
	leaq	L___unnamed_7(%rip), %rdi
	leaq	L___unnamed_8(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	incl	_FunctionCounter.3(%rip)
	leaq	L___unnamed_9(%rip), %rdi
	leaq	L___unnamed_10(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movl	$0, -20(%rbp)
	movl	$10, -16(%rbp)
	movl	$0, -12(%rbp)
	cmpl	$4, -12(%rbp)
	jle	LBB3_2
	jmp	LBB3_6
	.p2align	4, 0x90
LBB3_4:                                 ## %for.cond
                                        ##   in Loop: Header=BB3_2 Depth=1
	movl	%eax, -16(%rbp)
	incl	-12(%rbp)
	cmpl	$4, -12(%rbp)
	jg	LBB3_6
LBB3_2:                                 ## %for.body
                                        ## =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	andl	$-2, %ecx
	cmpl	%ecx, %eax
	je	LBB3_3
## BB#5:                                ## %if.else
                                        ##   in Loop: Header=BB3_2 Depth=1
	movl	-16(%rbp), %edi
	movl	-12(%rbp), %esi
	incl	%esi
	callq	_foo
	jmp	LBB3_4
	.p2align	4, 0x90
LBB3_3:                                 ## %if.then
                                        ##   in Loop: Header=BB3_2 Depth=1
	movl	-16(%rbp), %edi
	movl	-12(%rbp), %esi
	incl	%esi
	callq	_multiply
	jmp	LBB3_4
LBB3_6:                                 ## %for.end
	movl	$5, %edi
	movl	$10, %esi
	callq	_multiply
	leaq	L___unnamed_11(%rip), %rdi
	leaq	L___unnamed_12(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movl	_FunctionCounter(%rip), %edx
	leaq	L___unnamed_13(%rip), %rbx
	leaq	L___unnamed_14(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter.2(%rip), %edx
	leaq	L___unnamed_15(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter.3(%rip), %edx
	leaq	L___unnamed_16(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_FunctionCounter.1(%rip), %edx
	leaq	L___unnamed_17(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
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
	.asciz	"multiply"

L___unnamed_3:                          ## @2
	.asciz	"%s\n"

L___unnamed_4:                          ## @3
	.asciz	"add"

L___unnamed_5:                          ## @4
	.asciz	"%s\n"

L___unnamed_6:                          ## @5
	.asciz	"foo"

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
	.asciz	"multiply"

L___unnamed_15:                         ## @12
	.asciz	"foo"

L___unnamed_16:                         ## @13
	.asciz	"main"

L___unnamed_17:                         ## @14
	.asciz	"add"

L___unnamed_7:                          ## @15
	.asciz	"%s\n"

	.p2align	4               ## @16
L___unnamed_8:
	.asciz	"****** Call sequence ******"


.subsections_via_symbols
