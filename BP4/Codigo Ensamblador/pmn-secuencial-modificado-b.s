	.file	"pmm-secuencial-modificado-b.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"falta size\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"Tiempo = %11.9f\t Primera = %d\t Ultima=%d\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB50:
	.file 1 "../FuentesModificados/pmm-secuencial-modificado-b.c"
	.loc 1 9 0
	.cfi_startproc
.LVL0:
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
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	.loc 1 9 0
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
.LVL1:
	.loc 1 17 0
	cmpl	$1, %edi
	jle	.L26
.LVL2:
.LBB8:
.LBB9:
	.file 2 "/usr/include/stdlib.h"
	.loc 2 241 0
	movq	8(%rsi), %rdi
.LVL3:
	movl	$10, %edx
	xorl	%esi, %esi
.LVL4:
	call	strtol@PLT
.LVL5:
	movl	$3355, %edx
	cmpl	$3355, %eax
	cmovbe	%eax, %edx
.LBE9:
.LBE8:
	.loc 1 27 0
	testl	%edx, %edx
	movl	%edx, %r15d
.LVL6:
	je	.L3
	leal	-1(%rdx), %edx
.LVL7:
	leaq	a(%rip), %rax
	leaq	b(%rip), %r14
	.loc 1 27 0 is_stmt 0 discriminator 2
	leaq	c(%rip), %rbx
	movl	%edx, 28(%rsp)
	addq	$1, %rdx
	movq	%rax, 16(%rsp)
	imulq	$13420, %rdx, %r13
	movq	%r14, %rsi
	salq	$2, %rdx
	movq	%rbx, %rcx
	movq	%rax, 32(%rsp)
	movq	%rax, %rbp
	leaq	0(%r13,%rax), %rdi
.LVL8:
.L6:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L4:
	.loc 1 29 0 is_stmt 1 discriminator 2
	movl	$0, 0(%rbp,%rax)
	.loc 1 30 0 discriminator 2
	movl	$2, (%rsi,%rax)
	.loc 1 31 0 discriminator 2
	movl	$2, (%rcx,%rax)
.LVL9:
	addq	$4, %rax
	.loc 1 28 0 discriminator 2
	cmpq	%rdx, %rax
	jne	.L4
	addq	$13420, %rbp
	addq	$13420, %rsi
	addq	$13420, %rcx
	.loc 1 27 0 discriminator 2
	cmpq	%rdi, %rbp
	jne	.L6
	.loc 1 37 0
	movl	%r15d, %r12d
	.loc 1 39 0
	leaq	64(%rsp), %rsi
	xorl	%edi, %edi
	.loc 1 37 0
	shrl	$2, %r12d
.LVL10:
	addq	%r13, %rbx
	.loc 1 39 0
	call	clock_gettime@PLT
.LVL11:
	leal	0(,%r12,4), %eax
	movq	%rbx, (%rsp)
	movq	%rbp, 56(%rsp)
	movl	%eax, %ecx
	movl	%eax, 24(%rsp)
	cltq
	movq	%rax, %rdx
	leaq	0(,%rax,4), %rdi
	negq	%rdx
	leaq	0(,%rdx,4), %rbx
	leal	-1(%r12), %edx
	leaq	(%r14,%rdi), %r10
	movq	%rdi, 8(%rsp)
	salq	$2, %rdx
	movq	%rbx, 40(%rsp)
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	28(%rsp), %edx
	leaq	16(,%rax,4), %rax
	subl	%ecx, %edx
	movq	%rax, 48(%rsp)
	leaq	4(,%rdx,4), %r11
.LVL12:
.L12:
	movq	40(%rsp), %rax
	.loc 1 27 0
	movq	16(%rsp), %r13
	leaq	c(%rip), %rbp
	leaq	(%r10,%rax), %r14
	movq	48(%rsp), %rax
	leaq	(%rax,%r10), %rbx
	.p2align 4,,10
	.p2align 3
.L11:
.LVL13:
	.loc 1 45 0
	testl	%r12d, %r12d
	je	.L15
	movq	%rbp, %rdx
	movq	%r14, %rax
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
.LVL14:
	.p2align 4,,10
	.p2align 3
.L8:
	.loc 1 46 0 discriminator 2
	movl	(%rax), %esi
	addq	$16, %rax
	addq	$16, %rdx
	imull	-16(%rdx), %esi
	addl	%esi, %ecx
.LVL15:
	.loc 1 47 0 discriminator 2
	movl	-12(%rax), %esi
	imull	-12(%rdx), %esi
	addl	%esi, %r9d
.LVL16:
	.loc 1 48 0 discriminator 2
	movl	-8(%rax), %esi
	imull	-8(%rdx), %esi
	addl	%esi, %r8d
.LVL17:
	.loc 1 49 0 discriminator 2
	movl	-4(%rax), %esi
	imull	-4(%rdx), %esi
	addl	%esi, %edi
.LVL18:
	.loc 1 45 0 discriminator 2
	cmpq	%rbx, %rax
	jne	.L8
	addl	%r9d, %ecx
.LVL19:
	addl	%ecx, %r8d
.LVL20:
	addl	%r8d, %edi
.LVL21:
.L7:
	.loc 1 55 0
	cmpl	24(%rsp), %r15d
	jbe	.L9
	movq	8(%rsp), %rax
	leaq	0(%rbp,%rax), %rcx
	.loc 1 55 0 is_stmt 0 discriminator 2
	xorl	%eax, %eax
.LVL22:
	.p2align 4,,10
	.p2align 3
.L10:
	.loc 1 56 0 is_stmt 1 discriminator 2
	movl	(%r10,%rax), %edx
	imull	(%rcx,%rax), %edx
	addq	$4, %rax
	addl	%edx, %edi
.LVL23:
	.loc 1 55 0 discriminator 2
	cmpq	%rax, %r11
	jne	.L10
.LVL24:
.L9:
	.loc 1 58 0 discriminator 2
	movl	%edi, 0(%r13)
	addq	$13420, %rbp
	addq	$4, %r13
	.loc 1 43 0 discriminator 2
	cmpq	(%rsp), %rbp
	jne	.L11
	addq	$13420, 16(%rsp)
	addq	$13420, %r10
	movq	16(%rsp), %rax
	.loc 1 42 0 discriminator 2
	cmpq	56(%rsp), %rax
	jne	.L12
	jmp	.L13
.LVL25:
.L3:
	.loc 1 39 0
	leaq	64(%rsp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
.LVL26:
	leaq	a(%rip), %rax
	movl	$-1, 28(%rsp)
	movq	%rax, 32(%rsp)
.LVL27:
.L13:
	.loc 1 61 0
	leaq	80(%rsp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
.LVL28:
	.loc 1 63 0
	movq	88(%rsp), %rax
	subq	72(%rsp), %rax
.LBB10:
.LBB11:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 3 104 0
	leaq	.LC2(%rip), %rsi
.LBE11:
.LBE10:
	.loc 1 63 0
	pxor	%xmm0, %xmm0
	.loc 1 66 0
	movl	28(%rsp), %edx
	.loc 1 63 0
	pxor	%xmm1, %xmm1
.LBB15:
.LBB12:
	.loc 3 104 0
	movl	$1, %edi
.LBE12:
.LBE15:
	.loc 1 63 0
	cvtsi2sdq	%rax, %xmm0
	movq	80(%rsp), %rax
	subq	64(%rsp), %rax
	.loc 1 66 0
	imulq	$13424, %rdx, %rdx
	.loc 1 63 0
	cvtsi2sdq	%rax, %xmm1
.LBB16:
.LBB13:
	.loc 3 104 0
	movq	32(%rsp), %rax
	movl	(%rax,%rdx), %ecx
	movl	a(%rip), %edx
	movl	$1, %eax
.LBE13:
.LBE16:
	.loc 1 63 0
	divsd	.LC1(%rip), %xmm0
	addsd	%xmm1, %xmm0
.LBB17:
.LBB14:
	.loc 3 104 0
	call	__printf_chk@PLT
.LVL29:
.LBE14:
.LBE17:
	.loc 1 69 0
	xorl	%eax, %eax
	movq	104(%rsp), %rbx
	xorq	%fs:40, %rbx
	jne	.L27
	addq	$120, %rsp
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
.LVL30:
	ret
.LVL31:
.L26:
	.cfi_restore_state
.LBB18:
.LBB19:
	.loc 3 98 0
	movq	stderr(%rip), %rcx
	leaq	.LC0(%rip), %rdi
.LVL32:
	movl	$11, %edx
	movl	$1, %esi
.LVL33:
	call	fwrite@PLT
.LVL34:
.LBE19:
.LBE18:
	.loc 1 19 0
	movl	$-1, %edi
	call	exit@PLT
.LVL35:
	.p2align 4,,10
	.p2align 3
.L15:
	.loc 1 45 0
	xorl	%edi, %edi
	jmp	.L7
.LVL36:
.L27:
	.loc 1 69 0
	call	__stack_chk_fail@PLT
.LVL37:
	.cfi_endproc
.LFE50:
	.size	main, .-main
	.globl	c
	.bss
	.align 32
	.type	c, @object
	.size	c, 45024100
c:
	.zero	45024100
	.globl	b
	.align 32
	.type	b, @object
	.size	b, 45024100
b:
	.zero	45024100
	.globl	a
	.align 32
	.type	a, @object
	.size	a, 45024100
a:
	.zero	45024100
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1104006501
	.text
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/6/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 9 "/usr/include/c++/6/cstdlib"
	.file 10 "/usr/include/x86_64-linux-gnu/c++/6/bits/c++config.h"
	.file 11 "/usr/include/time.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/stdlib.h"
	.file 15 "/usr/include/c++/6/stdlib.h"
	.file 16 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xcf8
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF129
	.byte	0x4
	.long	.LASF130
	.long	.LASF131
	.long	.Ldebug_ranges0+0x50
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x3
	.long	.LASF8
	.byte	0x4
	.byte	0xd8
	.long	0x42
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF9
	.byte	0x5
	.byte	0x83
	.long	0x30
	.uleb128 0x3
	.long	.LASF10
	.byte	0x5
	.byte	0x84
	.long	0x30
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x3
	.long	.LASF12
	.byte	0x5
	.byte	0x8b
	.long	0x30
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x3
	.long	.LASF13
	.byte	0x5
	.byte	0xaf
	.long	0x30
	.uleb128 0x6
	.byte	0x8
	.long	0xae
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x7
	.long	0xae
	.uleb128 0x3
	.long	.LASF15
	.byte	0x6
	.byte	0x30
	.long	0xc5
	.uleb128 0x8
	.long	.LASF45
	.byte	0xd8
	.byte	0x7
	.byte	0xf1
	.long	0x242
	.uleb128 0x9
	.long	.LASF16
	.byte	0x7
	.byte	0xf2
	.long	0x6c
	.byte	0
	.uleb128 0x9
	.long	.LASF17
	.byte	0x7
	.byte	0xf7
	.long	0xa8
	.byte	0x8
	.uleb128 0x9
	.long	.LASF18
	.byte	0x7
	.byte	0xf8
	.long	0xa8
	.byte	0x10
	.uleb128 0x9
	.long	.LASF19
	.byte	0x7
	.byte	0xf9
	.long	0xa8
	.byte	0x18
	.uleb128 0x9
	.long	.LASF20
	.byte	0x7
	.byte	0xfa
	.long	0xa8
	.byte	0x20
	.uleb128 0x9
	.long	.LASF21
	.byte	0x7
	.byte	0xfb
	.long	0xa8
	.byte	0x28
	.uleb128 0x9
	.long	.LASF22
	.byte	0x7
	.byte	0xfc
	.long	0xa8
	.byte	0x30
	.uleb128 0x9
	.long	.LASF23
	.byte	0x7
	.byte	0xfd
	.long	0xa8
	.byte	0x38
	.uleb128 0x9
	.long	.LASF24
	.byte	0x7
	.byte	0xfe
	.long	0xa8
	.byte	0x40
	.uleb128 0xa
	.long	.LASF25
	.byte	0x7
	.value	0x100
	.long	0xa8
	.byte	0x48
	.uleb128 0xa
	.long	.LASF26
	.byte	0x7
	.value	0x101
	.long	0xa8
	.byte	0x50
	.uleb128 0xa
	.long	.LASF27
	.byte	0x7
	.value	0x102
	.long	0xa8
	.byte	0x58
	.uleb128 0xa
	.long	.LASF28
	.byte	0x7
	.value	0x104
	.long	0x27a
	.byte	0x60
	.uleb128 0xa
	.long	.LASF29
	.byte	0x7
	.value	0x106
	.long	0x280
	.byte	0x68
	.uleb128 0xa
	.long	.LASF30
	.byte	0x7
	.value	0x108
	.long	0x6c
	.byte	0x70
	.uleb128 0xa
	.long	.LASF31
	.byte	0x7
	.value	0x10c
	.long	0x6c
	.byte	0x74
	.uleb128 0xa
	.long	.LASF32
	.byte	0x7
	.value	0x10e
	.long	0x73
	.byte	0x78
	.uleb128 0xa
	.long	.LASF33
	.byte	0x7
	.value	0x112
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF34
	.byte	0x7
	.value	0x113
	.long	0x5e
	.byte	0x82
	.uleb128 0xa
	.long	.LASF35
	.byte	0x7
	.value	0x114
	.long	0x286
	.byte	0x83
	.uleb128 0xa
	.long	.LASF36
	.byte	0x7
	.value	0x118
	.long	0x296
	.byte	0x88
	.uleb128 0xa
	.long	.LASF37
	.byte	0x7
	.value	0x121
	.long	0x7e
	.byte	0x90
	.uleb128 0xa
	.long	.LASF38
	.byte	0x7
	.value	0x129
	.long	0x9b
	.byte	0x98
	.uleb128 0xa
	.long	.LASF39
	.byte	0x7
	.value	0x12a
	.long	0x9b
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x7
	.value	0x12b
	.long	0x9b
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF41
	.byte	0x7
	.value	0x12c
	.long	0x9b
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x7
	.value	0x12e
	.long	0x37
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF43
	.byte	0x7
	.value	0x12f
	.long	0x6c
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF44
	.byte	0x7
	.value	0x131
	.long	0x29c
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF132
	.byte	0x7
	.byte	0x96
	.uleb128 0x8
	.long	.LASF46
	.byte	0x18
	.byte	0x7
	.byte	0x9c
	.long	0x27a
	.uleb128 0x9
	.long	.LASF47
	.byte	0x7
	.byte	0x9d
	.long	0x27a
	.byte	0
	.uleb128 0x9
	.long	.LASF48
	.byte	0x7
	.byte	0x9e
	.long	0x280
	.byte	0x8
	.uleb128 0x9
	.long	.LASF49
	.byte	0x7
	.byte	0xa2
	.long	0x6c
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x249
	.uleb128 0x6
	.byte	0x8
	.long	0xc5
	.uleb128 0xc
	.long	0xae
	.long	0x296
	.uleb128 0xd
	.long	0x89
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x242
	.uleb128 0xc
	.long	0xae
	.long	0x2ac
	.uleb128 0xd
	.long	0x89
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF133
	.uleb128 0xf
	.long	.LASF50
	.byte	0x7
	.value	0x13b
	.long	0x2ac
	.uleb128 0xf
	.long	.LASF51
	.byte	0x7
	.value	0x13c
	.long	0x2ac
	.uleb128 0xf
	.long	.LASF52
	.byte	0x7
	.value	0x13d
	.long	0x2ac
	.uleb128 0x6
	.byte	0x8
	.long	0xb5
	.uleb128 0x7
	.long	0x2d5
	.uleb128 0x10
	.long	0x2d5
	.uleb128 0x11
	.long	.LASF53
	.byte	0x6
	.byte	0xaa
	.long	0x280
	.uleb128 0x11
	.long	.LASF54
	.byte	0x6
	.byte	0xab
	.long	0x280
	.uleb128 0x11
	.long	.LASF55
	.byte	0x6
	.byte	0xac
	.long	0x280
	.uleb128 0x11
	.long	.LASF56
	.byte	0x8
	.byte	0x1a
	.long	0x6c
	.uleb128 0xc
	.long	0x2db
	.long	0x31c
	.uleb128 0x12
	.byte	0
	.uleb128 0x11
	.long	.LASF57
	.byte	0x8
	.byte	0x1b
	.long	0x311
	.uleb128 0x11
	.long	.LASF58
	.byte	0x8
	.byte	0x1e
	.long	0x6c
	.uleb128 0x11
	.long	.LASF59
	.byte	0x8
	.byte	0x1f
	.long	0x311
	.uleb128 0x13
	.string	"std"
	.byte	0x10
	.byte	0
	.long	0x454
	.uleb128 0x14
	.long	.LASF61
	.byte	0xa
	.byte	0xdf
	.uleb128 0x15
	.byte	0xa
	.byte	0xdf
	.long	0x348
	.uleb128 0x16
	.byte	0x9
	.byte	0x7c
	.long	0x4de
	.uleb128 0x16
	.byte	0x9
	.byte	0x7d
	.long	0x50e
	.uleb128 0x16
	.byte	0x9
	.byte	0x81
	.long	0x5a9
	.uleb128 0x16
	.byte	0x9
	.byte	0x84
	.long	0x5c6
	.uleb128 0x16
	.byte	0x9
	.byte	0x87
	.long	0x5e0
	.uleb128 0x16
	.byte	0x9
	.byte	0x88
	.long	0x5f5
	.uleb128 0x16
	.byte	0x9
	.byte	0x89
	.long	0x611
	.uleb128 0x16
	.byte	0x9
	.byte	0x8a
	.long	0x626
	.uleb128 0x16
	.byte	0x9
	.byte	0x8c
	.long	0x64f
	.uleb128 0x16
	.byte	0x9
	.byte	0x8f
	.long	0x66a
	.uleb128 0x16
	.byte	0x9
	.byte	0x91
	.long	0x680
	.uleb128 0x16
	.byte	0x9
	.byte	0x94
	.long	0x69b
	.uleb128 0x16
	.byte	0x9
	.byte	0x95
	.long	0x6b6
	.uleb128 0x16
	.byte	0x9
	.byte	0x96
	.long	0x6e7
	.uleb128 0x16
	.byte	0x9
	.byte	0x98
	.long	0x707
	.uleb128 0x16
	.byte	0x9
	.byte	0x9b
	.long	0x728
	.uleb128 0x16
	.byte	0x9
	.byte	0x9e
	.long	0x73a
	.uleb128 0x16
	.byte	0x9
	.byte	0xa0
	.long	0x746
	.uleb128 0x16
	.byte	0x9
	.byte	0xa1
	.long	0x758
	.uleb128 0x16
	.byte	0x9
	.byte	0xa2
	.long	0x778
	.uleb128 0x16
	.byte	0x9
	.byte	0xa3
	.long	0x797
	.uleb128 0x16
	.byte	0x9
	.byte	0xa4
	.long	0x7b6
	.uleb128 0x16
	.byte	0x9
	.byte	0xa6
	.long	0x7cc
	.uleb128 0x16
	.byte	0x9
	.byte	0xa7
	.long	0x7f1
	.uleb128 0x17
	.byte	0x9
	.value	0x104
	.long	0x545
	.uleb128 0x17
	.byte	0x9
	.value	0x109
	.long	0x49e
	.uleb128 0x17
	.byte	0x9
	.value	0x10a
	.long	0x80b
	.uleb128 0x17
	.byte	0x9
	.value	0x10c
	.long	0x826
	.uleb128 0x17
	.byte	0x9
	.value	0x10d
	.long	0x879
	.uleb128 0x17
	.byte	0x9
	.value	0x10e
	.long	0x83b
	.uleb128 0x17
	.byte	0x9
	.value	0x10f
	.long	0x85a
	.uleb128 0x17
	.byte	0x9
	.value	0x110
	.long	0x89a
	.uleb128 0x18
	.string	"abs"
	.byte	0x9
	.byte	0xb9
	.long	.LASF62
	.long	0x8de
	.uleb128 0x19
	.long	0x8de
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF60
	.byte	0xa
	.byte	0xe1
	.long	0x4b9
	.uleb128 0x14
	.long	.LASF61
	.byte	0xa
	.byte	0xe3
	.uleb128 0x15
	.byte	0xa
	.byte	0xe3
	.long	0x45f
	.uleb128 0x16
	.byte	0x9
	.byte	0xdc
	.long	0x545
	.uleb128 0x16
	.byte	0x9
	.byte	0xec
	.long	0x80b
	.uleb128 0x16
	.byte	0x9
	.byte	0xf7
	.long	0x826
	.uleb128 0x16
	.byte	0x9
	.byte	0xf8
	.long	0x83b
	.uleb128 0x16
	.byte	0x9
	.byte	0xf9
	.long	0x85a
	.uleb128 0x16
	.byte	0x9
	.byte	0xfb
	.long	0x879
	.uleb128 0x16
	.byte	0x9
	.byte	0xfc
	.long	0x89a
	.uleb128 0x18
	.string	"div"
	.byte	0x9
	.byte	0xe9
	.long	.LASF63
	.long	0x545
	.uleb128 0x19
	.long	0x53e
	.uleb128 0x19
	.long	0x53e
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x8
	.byte	0x2
	.byte	0x3b
	.long	.LASF66
	.long	0x4de
	.uleb128 0x9
	.long	.LASF64
	.byte	0x2
	.byte	0x3c
	.long	0x6c
	.byte	0
	.uleb128 0x1c
	.string	"rem"
	.byte	0x2
	.byte	0x3d
	.long	0x6c
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF65
	.byte	0x2
	.byte	0x3e
	.long	0x4b9
	.uleb128 0x1b
	.byte	0x10
	.byte	0x2
	.byte	0x43
	.long	.LASF67
	.long	0x50e
	.uleb128 0x9
	.long	.LASF64
	.byte	0x2
	.byte	0x44
	.long	0x30
	.byte	0
	.uleb128 0x1c
	.string	"rem"
	.byte	0x2
	.byte	0x45
	.long	0x30
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF68
	.byte	0x2
	.byte	0x46
	.long	0x4e9
	.uleb128 0x1b
	.byte	0x10
	.byte	0x2
	.byte	0x4f
	.long	.LASF69
	.long	0x53e
	.uleb128 0x9
	.long	.LASF64
	.byte	0x2
	.byte	0x50
	.long	0x53e
	.byte	0
	.uleb128 0x1c
	.string	"rem"
	.byte	0x2
	.byte	0x51
	.long	0x53e
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF70
	.uleb128 0x3
	.long	.LASF71
	.byte	0x2
	.byte	0x52
	.long	0x519
	.uleb128 0x8
	.long	.LASF72
	.byte	0x10
	.byte	0xb
	.byte	0x78
	.long	0x575
	.uleb128 0x9
	.long	.LASF73
	.byte	0xb
	.byte	0x7a
	.long	0x90
	.byte	0
	.uleb128 0x9
	.long	.LASF74
	.byte	0xb
	.byte	0x7b
	.long	0x9d
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF75
	.uleb128 0x1d
	.long	.LASF76
	.byte	0x2
	.value	0x2be
	.long	0x588
	.uleb128 0x6
	.byte	0x8
	.long	0x58e
	.uleb128 0x1e
	.long	0x6c
	.long	0x5a2
	.uleb128 0x19
	.long	0x5a2
	.uleb128 0x19
	.long	0x5a2
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5a8
	.uleb128 0x1f
	.uleb128 0x20
	.long	.LASF77
	.byte	0x2
	.value	0x1e0
	.long	0x6c
	.long	0x5bf
	.uleb128 0x19
	.long	0x5bf
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5c5
	.uleb128 0x21
	.uleb128 0x22
	.long	.LASF120
	.byte	0x2
	.value	0x1e5
	.long	.LASF120
	.long	0x6c
	.long	0x5e0
	.uleb128 0x19
	.long	0x5bf
	.byte	0
	.uleb128 0x23
	.long	.LASF78
	.byte	0xc
	.byte	0x1a
	.long	0x29
	.long	0x5f5
	.uleb128 0x19
	.long	0x2d5
	.byte	0
	.uleb128 0x24
	.long	.LASF79
	.byte	0x2
	.byte	0xef
	.long	0x6c
	.byte	0x3
	.long	0x611
	.uleb128 0x25
	.long	.LASF122
	.byte	0x2
	.byte	0xef
	.long	0x2d5
	.byte	0
	.uleb128 0x23
	.long	.LASF80
	.byte	0x2
	.byte	0xf4
	.long	0x30
	.long	0x626
	.uleb128 0x19
	.long	0x2d5
	.byte	0
	.uleb128 0x23
	.long	.LASF81
	.byte	0xd
	.byte	0x14
	.long	0x9b
	.long	0x64f
	.uleb128 0x19
	.long	0x5a2
	.uleb128 0x19
	.long	0x5a2
	.uleb128 0x19
	.long	0x37
	.uleb128 0x19
	.long	0x37
	.uleb128 0x19
	.long	0x57c
	.byte	0
	.uleb128 0x26
	.string	"div"
	.byte	0x2
	.value	0x2ed
	.long	0x4de
	.long	0x66a
	.uleb128 0x19
	.long	0x6c
	.uleb128 0x19
	.long	0x6c
	.byte	0
	.uleb128 0x20
	.long	.LASF82
	.byte	0x2
	.value	0x20d
	.long	0xa8
	.long	0x680
	.uleb128 0x19
	.long	0x2d5
	.byte	0
	.uleb128 0x20
	.long	.LASF83
	.byte	0x2
	.value	0x2ef
	.long	0x50e
	.long	0x69b
	.uleb128 0x19
	.long	0x30
	.uleb128 0x19
	.long	0x30
	.byte	0
	.uleb128 0x20
	.long	.LASF84
	.byte	0x2
	.value	0x337
	.long	0x6c
	.long	0x6b6
	.uleb128 0x19
	.long	0x2d5
	.uleb128 0x19
	.long	0x37
	.byte	0
	.uleb128 0x23
	.long	.LASF85
	.byte	0xe
	.byte	0x71
	.long	0x37
	.long	0x6d5
	.uleb128 0x19
	.long	0x6d5
	.uleb128 0x19
	.long	0x2d5
	.uleb128 0x19
	.long	0x37
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6db
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF86
	.uleb128 0x7
	.long	0x6db
	.uleb128 0x20
	.long	.LASF87
	.byte	0x2
	.value	0x33a
	.long	0x6c
	.long	0x707
	.uleb128 0x19
	.long	0x6d5
	.uleb128 0x19
	.long	0x2d5
	.uleb128 0x19
	.long	0x37
	.byte	0
	.uleb128 0x27
	.long	.LASF89
	.byte	0x2
	.value	0x2d5
	.long	0x728
	.uleb128 0x19
	.long	0x9b
	.uleb128 0x19
	.long	0x37
	.uleb128 0x19
	.long	0x37
	.uleb128 0x19
	.long	0x57c
	.byte	0
	.uleb128 0x28
	.long	.LASF88
	.byte	0x2
	.value	0x1fe
	.long	0x73a
	.uleb128 0x19
	.long	0x6c
	.byte	0
	.uleb128 0x29
	.long	.LASF134
	.byte	0x2
	.value	0x14f
	.long	0x6c
	.uleb128 0x27
	.long	.LASF90
	.byte	0x2
	.value	0x151
	.long	0x758
	.uleb128 0x19
	.long	0x57
	.byte	0
	.uleb128 0x23
	.long	.LASF91
	.byte	0x2
	.byte	0x7d
	.long	0x29
	.long	0x772
	.uleb128 0x19
	.long	0x2d5
	.uleb128 0x19
	.long	0x772
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa8
	.uleb128 0x23
	.long	.LASF92
	.byte	0x2
	.byte	0x90
	.long	0x30
	.long	0x797
	.uleb128 0x19
	.long	0x2d5
	.uleb128 0x19
	.long	0x772
	.uleb128 0x19
	.long	0x6c
	.byte	0
	.uleb128 0x23
	.long	.LASF93
	.byte	0x2
	.byte	0x94
	.long	0x42
	.long	0x7b6
	.uleb128 0x19
	.long	0x2d5
	.uleb128 0x19
	.long	0x772
	.uleb128 0x19
	.long	0x6c
	.byte	0
	.uleb128 0x20
	.long	.LASF94
	.byte	0x2
	.value	0x2a5
	.long	0x6c
	.long	0x7cc
	.uleb128 0x19
	.long	0x2d5
	.byte	0
	.uleb128 0x23
	.long	.LASF95
	.byte	0xe
	.byte	0x90
	.long	0x37
	.long	0x7eb
	.uleb128 0x19
	.long	0xa8
	.uleb128 0x19
	.long	0x7eb
	.uleb128 0x19
	.long	0x37
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6e2
	.uleb128 0x23
	.long	.LASF96
	.byte	0xe
	.byte	0x53
	.long	0x6c
	.long	0x80b
	.uleb128 0x19
	.long	0xa8
	.uleb128 0x19
	.long	0x6db
	.byte	0
	.uleb128 0x20
	.long	.LASF97
	.byte	0x2
	.value	0x2f5
	.long	0x545
	.long	0x826
	.uleb128 0x19
	.long	0x53e
	.uleb128 0x19
	.long	0x53e
	.byte	0
	.uleb128 0x23
	.long	.LASF98
	.byte	0x2
	.byte	0xfd
	.long	0x53e
	.long	0x83b
	.uleb128 0x19
	.long	0x2d5
	.byte	0
	.uleb128 0x23
	.long	.LASF99
	.byte	0x2
	.byte	0xaa
	.long	0x53e
	.long	0x85a
	.uleb128 0x19
	.long	0x2d5
	.uleb128 0x19
	.long	0x772
	.uleb128 0x19
	.long	0x6c
	.byte	0
	.uleb128 0x23
	.long	.LASF100
	.byte	0x2
	.byte	0xaf
	.long	0x575
	.long	0x879
	.uleb128 0x19
	.long	0x2d5
	.uleb128 0x19
	.long	0x772
	.uleb128 0x19
	.long	0x6c
	.byte	0
	.uleb128 0x23
	.long	.LASF101
	.byte	0x2
	.byte	0x85
	.long	0x893
	.long	0x893
	.uleb128 0x19
	.long	0x2d5
	.uleb128 0x19
	.long	0x772
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF102
	.uleb128 0x23
	.long	.LASF103
	.byte	0x2
	.byte	0x88
	.long	0x8b4
	.long	0x8b4
	.uleb128 0x19
	.long	0x2d5
	.uleb128 0x19
	.long	0x772
	.byte	0
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF104
	.uleb128 0x16
	.byte	0xf
	.byte	0x27
	.long	0x5a9
	.uleb128 0x16
	.byte	0xf
	.byte	0x2b
	.long	0x5c6
	.uleb128 0x16
	.byte	0xf
	.byte	0x2e
	.long	0x728
	.uleb128 0x16
	.byte	0xf
	.byte	0x33
	.long	0x4de
	.uleb128 0x16
	.byte	0xf
	.byte	0x34
	.long	0x50e
	.uleb128 0x2
	.byte	0x10
	.byte	0x5
	.long	.LASF105
	.uleb128 0x16
	.byte	0xf
	.byte	0x36
	.long	0x43e
	.uleb128 0x16
	.byte	0xf
	.byte	0x37
	.long	0x5e0
	.uleb128 0x16
	.byte	0xf
	.byte	0x38
	.long	0x5f5
	.uleb128 0x16
	.byte	0xf
	.byte	0x39
	.long	0x611
	.uleb128 0x16
	.byte	0xf
	.byte	0x3a
	.long	0x626
	.uleb128 0x16
	.byte	0xf
	.byte	0x3c
	.long	0x49e
	.uleb128 0x16
	.byte	0xf
	.byte	0x3e
	.long	0x66a
	.uleb128 0x16
	.byte	0xf
	.byte	0x40
	.long	0x680
	.uleb128 0x16
	.byte	0xf
	.byte	0x43
	.long	0x69b
	.uleb128 0x16
	.byte	0xf
	.byte	0x44
	.long	0x6b6
	.uleb128 0x16
	.byte	0xf
	.byte	0x45
	.long	0x6e7
	.uleb128 0x16
	.byte	0xf
	.byte	0x47
	.long	0x707
	.uleb128 0x16
	.byte	0xf
	.byte	0x48
	.long	0x73a
	.uleb128 0x16
	.byte	0xf
	.byte	0x4a
	.long	0x746
	.uleb128 0x16
	.byte	0xf
	.byte	0x4b
	.long	0x758
	.uleb128 0x16
	.byte	0xf
	.byte	0x4c
	.long	0x778
	.uleb128 0x16
	.byte	0xf
	.byte	0x4d
	.long	0x797
	.uleb128 0x16
	.byte	0xf
	.byte	0x4e
	.long	0x7b6
	.uleb128 0x16
	.byte	0xf
	.byte	0x50
	.long	0x7cc
	.uleb128 0x16
	.byte	0xf
	.byte	0x51
	.long	0x7f1
	.uleb128 0xc
	.long	0xa8
	.long	0x981
	.uleb128 0xd
	.long	0x89
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF106
	.byte	0xb
	.value	0x11a
	.long	0x971
	.uleb128 0xf
	.long	.LASF107
	.byte	0xb
	.value	0x11b
	.long	0x6c
	.uleb128 0xf
	.long	.LASF108
	.byte	0xb
	.value	0x11c
	.long	0x30
	.uleb128 0xf
	.long	.LASF109
	.byte	0xb
	.value	0x121
	.long	0x971
	.uleb128 0xf
	.long	.LASF110
	.byte	0xb
	.value	0x129
	.long	0x6c
	.uleb128 0xf
	.long	.LASF111
	.byte	0xb
	.value	0x12a
	.long	0x30
	.uleb128 0xf
	.long	.LASF112
	.byte	0xb
	.value	0x193
	.long	0x6c
	.uleb128 0xc
	.long	0x6c
	.long	0x9ed
	.uleb128 0x2a
	.long	0x89
	.value	0xd1a
	.uleb128 0x2a
	.long	0x89
	.value	0xd1a
	.byte	0
	.uleb128 0x2b
	.string	"a"
	.byte	0x1
	.byte	0x7
	.long	0x9d5
	.uleb128 0x9
	.byte	0x3
	.quad	a
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.byte	0x7
	.long	0x9d5
	.uleb128 0x9
	.byte	0x3
	.quad	b
	.uleb128 0x2b
	.string	"c"
	.byte	0x1
	.byte	0x7
	.long	0x9d5
	.uleb128 0x9
	.byte	0x3
	.quad	c
	.uleb128 0x2c
	.long	.LASF135
	.byte	0x1
	.byte	0x9
	.long	0x6c
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0xc72
	.uleb128 0x2d
	.long	.LASF113
	.byte	0x1
	.byte	0x9
	.long	0x6c
	.long	.LLST0
	.uleb128 0x2d
	.long	.LASF114
	.byte	0x1
	.byte	0x9
	.long	0x772
	.long	.LLST1
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.byte	0xa
	.long	0x57
	.long	.LLST2
	.uleb128 0x2f
	.string	"j"
	.byte	0x1
	.byte	0xa
	.long	0x57
	.uleb128 0x2e
	.string	"k"
	.byte	0x1
	.byte	0xa
	.long	0x57
	.long	.LLST3
	.uleb128 0x30
	.long	.LASF115
	.byte	0x1
	.byte	0xc
	.long	0x6c
	.long	.LLST4
	.uleb128 0x2e
	.string	"h"
	.byte	0x1
	.byte	0xd
	.long	0x6c
	.long	.LLST5
	.uleb128 0x2e
	.string	"s1"
	.byte	0x1
	.byte	0xe
	.long	0x6c
	.long	.LLST6
	.uleb128 0x2e
	.string	"s2"
	.byte	0x1
	.byte	0xe
	.long	0x6c
	.long	.LLST7
	.uleb128 0x2e
	.string	"s3"
	.byte	0x1
	.byte	0xe
	.long	0x6c
	.long	.LLST8
	.uleb128 0x2e
	.string	"s4"
	.byte	0x1
	.byte	0xe
	.long	0x6c
	.long	.LLST9
	.uleb128 0x2e
	.string	"N"
	.byte	0x1
	.byte	0x16
	.long	0x57
	.long	.LLST10
	.uleb128 0x31
	.long	.LASF116
	.byte	0x1
	.byte	0x23
	.long	0x550
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x31
	.long	.LASF117
	.byte	0x1
	.byte	0x23
	.long	0x550
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.long	.LASF118
	.byte	0x1
	.byte	0x23
	.long	0x29
	.long	.LLST11
	.uleb128 0x30
	.long	.LASF119
	.byte	0x1
	.byte	0x25
	.long	0x6c
	.long	.LLST12
	.uleb128 0x32
	.long	0x5f5
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.byte	0x1
	.byte	0x16
	.long	0xb62
	.uleb128 0x33
	.long	0x605
	.long	.LLST13
	.uleb128 0x34
	.quad	.LVL5
	.long	0x778
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0xc72
	.quad	.LBB10
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x42
	.long	0xba3
	.uleb128 0x33
	.long	0xc82
	.long	.LLST14
	.uleb128 0x34
	.quad	.LVL29
	.long	0xcc2
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	0xc8f
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.byte	0x1
	.byte	0x12
	.long	0xbf2
	.uleb128 0x33
	.long	0xcaa
	.long	.LLST15
	.uleb128 0x37
	.long	0xc9f
	.uleb128 0x34
	.quad	.LVL34
	.long	0xccd
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3b
	.byte	0
	.byte	0
	.uleb128 0x38
	.quad	.LVL11
	.long	0xcda
	.long	0xc10
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x38
	.quad	.LVL26
	.long	0xcda
	.long	0xc2e
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x38
	.quad	.LVL28
	.long	0xcda
	.long	0xc4c
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x38
	.quad	.LVL35
	.long	0xce6
	.long	0xc64
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x39
	.quad	.LVL37
	.long	0xcf2
	.byte	0
	.uleb128 0x3a
	.long	.LASF121
	.byte	0x3
	.byte	0x66
	.long	0x6c
	.byte	0x3
	.long	0xc8f
	.uleb128 0x25
	.long	.LASF123
	.byte	0x3
	.byte	0x66
	.long	0x2e0
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3a
	.long	.LASF124
	.byte	0x3
	.byte	0x5f
	.long	0x6c
	.byte	0x3
	.long	0xcb7
	.uleb128 0x25
	.long	.LASF125
	.byte	0x3
	.byte	0x5f
	.long	0xcbd
	.uleb128 0x25
	.long	.LASF123
	.byte	0x3
	.byte	0x5f
	.long	0x2e0
	.uleb128 0x3b
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xba
	.uleb128 0x10
	.long	0xcb7
	.uleb128 0x3c
	.long	.LASF126
	.long	.LASF126
	.byte	0x3
	.byte	0x57
	.uleb128 0x3d
	.long	.LASF136
	.long	.LASF137
	.long	.LASF136
	.uleb128 0x3e
	.long	.LASF127
	.long	.LASF127
	.byte	0xb
	.value	0x156
	.uleb128 0x3e
	.long	.LASF128
	.long	.LASF128
	.byte	0x2
	.value	0x1f8
	.uleb128 0x3f
	.long	.LASF138
	.long	.LASF138
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0
	.quad	.LVL3
	.value	0x1
	.byte	0x55
	.quad	.LVL3
	.quad	.LVL31
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL31
	.quad	.LVL32
	.value	0x1
	.byte	0x55
	.quad	.LVL32
	.quad	.LFE50
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0
	.quad	.LVL4
	.value	0x1
	.byte	0x54
	.quad	.LVL4
	.quad	.LVL31
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL31
	.quad	.LVL33
	.value	0x1
	.byte	0x54
	.quad	.LVL33
	.quad	.LFE50
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL6
	.quad	.LVL8
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL11
	.quad	.LVL12
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL25
	.quad	.LVL27
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL13
	.quad	.LVL14
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL21
	.quad	.LVL22
	.value	0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.quad	.LVL35
	.quad	.LVL36
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL1
	.quad	.LVL12
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL22
	.quad	.LVL24
	.value	0x1
	.byte	0x55
	.quad	.LVL25
	.quad	.LVL27
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL31
	.quad	.LVL35
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL13
	.quad	.LVL14
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL35
	.quad	.LVL36
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL1
	.quad	.LVL12
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL13
	.quad	.LVL14
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL14
	.quad	.LVL19
	.value	0x1
	.byte	0x52
	.quad	.LVL25
	.quad	.LVL27
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL31
	.quad	.LVL36
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL1
	.quad	.LVL12
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL13
	.quad	.LVL14
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL14
	.quad	.LVL21
	.value	0x1
	.byte	0x59
	.quad	.LVL25
	.quad	.LVL27
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL31
	.quad	.LVL36
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL1
	.quad	.LVL12
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL13
	.quad	.LVL14
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL14
	.quad	.LVL20
	.value	0x1
	.byte	0x58
	.quad	.LVL25
	.quad	.LVL27
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL31
	.quad	.LVL36
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL1
	.quad	.LVL12
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL13
	.quad	.LVL14
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL14
	.quad	.LVL21
	.value	0x1
	.byte	0x55
	.quad	.LVL25
	.quad	.LVL27
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL31
	.quad	.LVL36
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL5
	.quad	.LVL6
	.value	0x1
	.byte	0x50
	.quad	.LVL6
	.quad	.LVL7
	.value	0x1
	.byte	0x51
	.quad	.LVL7
	.quad	.LVL25
	.value	0x1
	.byte	0x5f
	.quad	.LVL25
	.quad	.LVL26-1
	.value	0x1
	.byte	0x51
	.quad	.LVL26-1
	.quad	.LVL30
	.value	0x1
	.byte	0x5f
	.quad	.LVL35
	.quad	.LFE50
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL28
	.quad	.LVL29-1
	.value	0x28
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x8
	.long	0
	.long	0x41cdcd65
	.byte	0x1b
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0x91
	.sleb128 -112
	.byte	0x6
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL10
	.quad	.LVL25
	.value	0x1
	.byte	0x5c
	.quad	.LVL25
	.quad	.LVL27
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL35
	.quad	.LVL36
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL2
	.quad	.LVL4
	.value	0x2
	.byte	0x74
	.sleb128 8
	.quad	.LVL4
	.quad	.LVL5-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL28
	.quad	.LVL29
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL31
	.quad	.LVL34
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB10
	.quad	.LBE10
	.quad	.LBB15
	.quad	.LBE15
	.quad	.LBB16
	.quad	.LBE16
	.quad	.LBB17
	.quad	.LBE17
	.quad	0
	.quad	0
	.quad	.LFB50
	.quad	.LFE50
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF82:
	.string	"getenv"
.LASF35:
	.string	"_shortbuf"
.LASF134:
	.string	"rand"
.LASF132:
	.string	"_IO_lock_t"
.LASF55:
	.string	"stderr"
.LASF94:
	.string	"system"
.LASF24:
	.string	"_IO_buf_end"
.LASF84:
	.string	"mblen"
.LASF22:
	.string	"_IO_write_end"
.LASF5:
	.string	"unsigned int"
.LASF60:
	.string	"__gnu_cxx"
.LASF112:
	.string	"getdate_err"
.LASF16:
	.string	"_flags"
.LASF86:
	.string	"wchar_t"
.LASF28:
	.string	"_markers"
.LASF137:
	.string	"__builtin_fwrite"
.LASF58:
	.string	"_sys_nerr"
.LASF63:
	.string	"_ZN9__gnu_cxx3divExx"
.LASF100:
	.string	"strtoull"
.LASF118:
	.string	"ncgt"
.LASF108:
	.string	"__timezone"
.LASF103:
	.string	"strtold"
.LASF62:
	.string	"_ZSt3absn"
.LASF99:
	.string	"strtoll"
.LASF49:
	.string	"_pos"
.LASF116:
	.string	"cgt1"
.LASF117:
	.string	"cgt2"
.LASF54:
	.string	"stdout"
.LASF87:
	.string	"mbtowc"
.LASF27:
	.string	"_IO_save_end"
.LASF102:
	.string	"float"
.LASF75:
	.string	"long long unsigned int"
.LASF96:
	.string	"wctomb"
.LASF57:
	.string	"sys_errlist"
.LASF26:
	.string	"_IO_backup_base"
.LASF37:
	.string	"_offset"
.LASF56:
	.string	"sys_nerr"
.LASF97:
	.string	"lldiv"
.LASF98:
	.string	"atoll"
.LASF124:
	.string	"fprintf"
.LASF30:
	.string	"_fileno"
.LASF74:
	.string	"tv_nsec"
.LASF8:
	.string	"size_t"
.LASF90:
	.string	"srand"
.LASF19:
	.string	"_IO_read_base"
.LASF81:
	.string	"bsearch"
.LASF113:
	.string	"argc"
.LASF53:
	.string	"stdin"
.LASF47:
	.string	"_next"
.LASF123:
	.string	"__fmt"
.LASF125:
	.string	"__stream"
.LASF72:
	.string	"timespec"
.LASF14:
	.string	"char"
.LASF43:
	.string	"_mode"
.LASF66:
	.string	"5div_t"
.LASF107:
	.string	"__daylight"
.LASF109:
	.string	"tzname"
.LASF46:
	.string	"_IO_marker"
.LASF17:
	.string	"_IO_read_ptr"
.LASF128:
	.string	"exit"
.LASF88:
	.string	"quick_exit"
.LASF64:
	.string	"quot"
.LASF85:
	.string	"mbstowcs"
.LASF20:
	.string	"_IO_write_base"
.LASF122:
	.string	"__nptr"
.LASF129:
	.string	"GNU C++14 6.3.0 20170406 -mtune=generic -march=x86-64 -g -O2 -fstack-protector-strong"
.LASF50:
	.string	"_IO_2_1_stdin_"
.LASF70:
	.string	"long long int"
.LASF121:
	.string	"printf"
.LASF51:
	.string	"_IO_2_1_stdout_"
.LASF25:
	.string	"_IO_save_base"
.LASF126:
	.string	"__printf_chk"
.LASF61:
	.string	"__cxx11"
.LASF131:
	.string	"/home/migue/GIT/AC/BP4/Codigo Ensamblador"
.LASF13:
	.string	"__syscall_slong_t"
.LASF83:
	.string	"ldiv"
.LASF127:
	.string	"clock_gettime"
.LASF76:
	.string	"__compar_fn_t"
.LASF38:
	.string	"__pad1"
.LASF39:
	.string	"__pad2"
.LASF40:
	.string	"__pad3"
.LASF41:
	.string	"__pad4"
.LASF42:
	.string	"__pad5"
.LASF34:
	.string	"_vtable_offset"
.LASF114:
	.string	"argv"
.LASF104:
	.string	"long double"
.LASF135:
	.string	"main"
.LASF111:
	.string	"timezone"
.LASF18:
	.string	"_IO_read_end"
.LASF7:
	.string	"short int"
.LASF1:
	.string	"long int"
.LASF138:
	.string	"__stack_chk_fail"
.LASF77:
	.string	"atexit"
.LASF133:
	.string	"_IO_FILE_plus"
.LASF68:
	.string	"ldiv_t"
.LASF120:
	.string	"at_quick_exit"
.LASF36:
	.string	"_lock"
.LASF73:
	.string	"tv_sec"
.LASF11:
	.string	"sizetype"
.LASF93:
	.string	"strtoul"
.LASF2:
	.string	"long unsigned int"
.LASF32:
	.string	"_old_offset"
.LASF45:
	.string	"_IO_FILE"
.LASF130:
	.string	"../FuentesModificados/pmm-secuencial-modificado-b.c"
.LASF105:
	.string	"__int128"
.LASF65:
	.string	"div_t"
.LASF3:
	.string	"unsigned char"
.LASF106:
	.string	"__tzname"
.LASF48:
	.string	"_sbuf"
.LASF21:
	.string	"_IO_write_ptr"
.LASF91:
	.string	"strtod"
.LASF101:
	.string	"strtof"
.LASF95:
	.string	"wcstombs"
.LASF92:
	.string	"strtol"
.LASF12:
	.string	"__time_t"
.LASF119:
	.string	"iterations"
.LASF67:
	.string	"6ldiv_t"
.LASF110:
	.string	"daylight"
.LASF136:
	.string	"fwrite"
.LASF9:
	.string	"__off_t"
.LASF69:
	.string	"7lldiv_t"
.LASF6:
	.string	"signed char"
.LASF4:
	.string	"short unsigned int"
.LASF71:
	.string	"lldiv_t"
.LASF78:
	.string	"atof"
.LASF59:
	.string	"_sys_errlist"
.LASF79:
	.string	"atoi"
.LASF80:
	.string	"atol"
.LASF115:
	.string	"total"
.LASF0:
	.string	"double"
.LASF29:
	.string	"_chain"
.LASF15:
	.string	"FILE"
.LASF31:
	.string	"_flags2"
.LASF33:
	.string	"_cur_column"
.LASF52:
	.string	"_IO_2_1_stderr_"
.LASF10:
	.string	"__off64_t"
.LASF44:
	.string	"_unused2"
.LASF23:
	.string	"_IO_buf_base"
.LASF89:
	.string	"qsort"
	.ident	"GCC: (Ubuntu 6.3.0-12ubuntu2) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
