	.file	"SumaVectoresC.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Faltan no componentes del vector"
	.align 8
.LC3:
	.string	"Tiempo(seg.):%11.9f\t  Tama\303\261o Vectores:%u\t           V1[0]+V2[0]=V3[0](%8.6f+%8.6f=%8.6f)  V1[%d]+V2[%d]=V3[%d](%8.6f+%8.6f=%8.6f) \n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB38:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	cmpl	$1, %edi
	jle	.L14
	movq	8(%rsi), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	movl	$33554432, %r14d
	call	strtol@PLT
	cmpl	$33554432, %eax
	cmovbe	%eax, %r14d
	testl	%r14d, %r14d
	je	.L3
	pxor	%xmm1, %xmm1
	leal	-1(%r14), %eax
	leaq	v1(%rip), %r12
	movsd	.LC1(%rip), %xmm3
	leaq	v2(%rip), %rbp
	movq	%rax, %r15
	xorl	%ebx, %ebx
	addq	$1, %rax
	cvtsi2sd	%r14d, %xmm1
	mulsd	%xmm3, %xmm1
	.p2align 4,,10
	.p2align 3
.L4:
	pxor	%xmm0, %xmm0
	movapd	%xmm1, %xmm7
	cvtsi2sd	%ebx, %xmm0
	mulsd	%xmm3, %xmm0
	movapd	%xmm0, %xmm2
	subsd	%xmm0, %xmm7
	addsd	%xmm1, %xmm2
	movsd	%xmm7, 0(%rbp,%rbx,8)
	movsd	%xmm2, (%r12,%rbx,8)
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jne	.L4
	movq	%rsp, %rsi
	xorl	%edi, %edi
	leaq	v3(%rip), %r13
	call	clock_gettime@PLT
	salq	$3, %rbx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L5:
	movsd	(%r12,%rax), %xmm0
	addsd	0(%rbp,%rax), %xmm0
	movsd	%xmm0, 0(%r13,%rax)
	addq	$8, %rax
	cmpq	%rax, %rbx
	jne	.L5
.L6:
	leaq	16(%rsp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
	movq	24(%rsp), %rax
	subq	8(%rsp), %rax
	movl	%r15d, %edx
	pxor	%xmm0, %xmm0
	leaq	.LC3(%rip), %rsi
	pxor	%xmm1, %xmm1
	movl	%r15d, %ecx
	movsd	0(%r13,%rdx,8), %xmm6
	movl	%r15d, %r9d
	cvtsi2sdq	%rax, %xmm0
	movq	16(%rsp), %rax
	subq	(%rsp), %rax
	movsd	0(%rbp,%rdx,8), %xmm5
	movsd	(%r12,%rdx,8), %xmm4
	movl	%r15d, %r8d
	movsd	v3(%rip), %xmm3
	movl	%r14d, %edx
	movsd	v2(%rip), %xmm2
	movl	$1, %edi
	cvtsi2sdq	%rax, %xmm1
	movl	$7, %eax
	divsd	.LC2(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	v1(%rip), %xmm1
	call	__printf_chk@PLT
	xorl	%eax, %eax
	movq	40(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L15
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L3:
	.cfi_restore_state
	movq	%rsp, %rsi
	xorl	%edi, %edi
	orl	$-1, %r15d
	call	clock_gettime@PLT
	leaq	v1(%rip), %r12
	leaq	v2(%rip), %rbp
	leaq	v3(%rip), %r13
	jmp	.L6
.L14:
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	orl	$-1, %edi
	call	exit@PLT
.L15:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE38:
	.size	main, .-main
	.comm	v3,268435456,32
	.comm	v2,268435456,32
	.comm	v1,268435456,32
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	2576980378
	.long	1069128089
	.align 8
.LC2:
	.long	0
	.long	1104006501
	.ident	"GCC: (Ubuntu 6.2.0-5ubuntu12) 6.2.0 20161005"
	.section	.note.GNU-stack,"",@progbits
