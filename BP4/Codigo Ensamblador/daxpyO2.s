	.file	"daxpy.c"
	.text
.Ltext0:
	.p2align 4,,15
	.globl	_Z5daxpyPiS_ijP8timespecS1_
	.type	_Z5daxpyPiS_ijP8timespecS1_, @function
_Z5daxpyPiS_ijP8timespecS1_:
.LFB50:
	.file 1 "../FuentesCreadas/daxpy.c"
	.loc 1 5 0
	.cfi_startproc
.LVL0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	.loc 1 6 0
	movq	%r8, %rsi
.LVL1:
	.loc 1 5 0
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	.loc 1 5 0
	movl	%ecx, %ebp
	movq	%rdi, %rbx
	.loc 1 6 0
	xorl	%edi, %edi
.LVL2:
	.loc 1 5 0
	movl	%edx, %r12d
	movq	%r9, %r14
	.loc 1 6 0
	call	clock_gettime@PLT
.LVL3:
	xorl	%eax, %eax
	.loc 1 8 0
	testl	%ebp, %ebp
	je	.L3
.LVL4:
	.p2align 4,,10
	.p2align 3
.L5:
	.loc 1 9 0 discriminator 2
	movl	0(%r13,%rax,4), %esi
	imull	%r12d, %esi
	addl	%esi, (%rbx,%rax,4)
.LVL5:
	addq	$1, %rax
.LVL6:
	.loc 1 8 0 discriminator 2
	cmpl	%eax, %ebp
	ja	.L5
.L3:
	.loc 1 11 0
	popq	%rbx
	.cfi_def_cfa_offset 40
.LVL7:
	.loc 1 10 0
	movq	%r14, %rsi
	xorl	%edi, %edi
	.loc 1 11 0
	popq	%rbp
	.cfi_def_cfa_offset 32
.LVL8:
	popq	%r12
	.cfi_def_cfa_offset 24
.LVL9:
	popq	%r13
	.cfi_def_cfa_offset 16
.LVL10:
	popq	%r14
	.cfi_def_cfa_offset 8
.LVL11:
	.loc 1 10 0
	jmp	clock_gettime@PLT
.LVL12:
	.cfi_endproc
.LFE50:
	.size	_Z5daxpyPiS_ijP8timespecS1_, .-_Z5daxpyPiS_ijP8timespecS1_
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"ERROR: Falta tamanio del vector y constante\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"y[0] = %i, y[%i] = %i\n"
.LC3:
	.string	"\nTiempo (seg.) = %11.9f\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB51:
	.loc 1 13 0
	.cfi_startproc
.LVL13:
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$72, %rsp
	.cfi_def_cfa_offset 112
	.loc 1 13 0
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	.loc 1 14 0
	cmpl	$2, %edi
	jle	.L18
	.loc 1 19 0
	movq	8(%rsi), %rdi
.LVL14:
	movq	%rsi, %rbx
	movl	$10, %edx
	xorl	%esi, %esi
.LVL15:
	call	strtol@PLT
.LVL16:
	.loc 1 20 0
	movq	16(%rbx), %rdi
	.loc 1 19 0
	movq	%rax, %r12
.LVL17:
	.loc 1 20 0
	xorl	%esi, %esi
	.loc 1 22 0
	movl	%r12d, %ebp
	.loc 1 20 0
	movl	$10, %edx
	.loc 1 22 0
	salq	$2, %rbp
	.loc 1 20 0
	call	strtol@PLT
.LVL18:
	.loc 1 22 0
	movq	%rbp, %rdi
	.loc 1 20 0
	movq	%rax, %r13
.LVL19:
	.loc 1 22 0
	call	malloc@PLT
.LVL20:
	.loc 1 23 0
	movq	%rbp, %rdi
	.loc 1 22 0
	movq	%rax, %rbx
.LVL21:
	.loc 1 23 0
	call	malloc@PLT
.LVL22:
	.loc 1 26 0
	testl	%r12d, %r12d
	.loc 1 23 0
	movq	%rax, %rbp
.LVL23:
	.loc 1 26 0
	je	.L12
	leal	2(%r12), %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	movl	$2, %eax
.LVL24:
	.p2align 4,,10
	.p2align 3
.L13:
	.loc 1 27 0 discriminator 2
	movl	%eax, (%rbx,%rsi)
	addl	$1, %eax
.LVL25:
	.loc 1 28 0 discriminator 2
	movl	%edi, 0(%rbp,%rsi)
.LVL26:
	addl	$2, %edi
	addq	$4, %rsi
	.loc 1 26 0 discriminator 2
	cmpl	%edx, %eax
	jne	.L13
.L12:
	.loc 1 34 0
	leaq	32(%rsp), %r9
	leaq	16(%rsp), %r8
	movl	%r12d, %ecx
	movl	%r13d, %edx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	_Z5daxpyPiS_ijP8timespecS1_
.LVL27:
	.loc 1 36 0
	movq	40(%rsp), %rax
	subq	24(%rsp), %rax
.LBB8:
.LBB9:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0
	leaq	.LC2(%rip), %rsi
.LBE9:
.LBE8:
	.loc 1 36 0
	pxor	%xmm0, %xmm0
.LBB15:
.LBB10:
	.loc 2 104 0
	movl	(%rbx), %edx
.LBE10:
.LBE15:
	.loc 1 36 0
	pxor	%xmm1, %xmm1
.LBB16:
.LBB11:
	.loc 2 104 0
	movl	$1, %edi
.LBE11:
.LBE16:
	.loc 1 36 0
	cvtsi2sdq	%rax, %xmm0
	movq	32(%rsp), %rax
	subq	16(%rsp), %rax
	cvtsi2sdq	%rax, %xmm1
	.loc 1 38 0
	leal	-1(%r12), %eax
.LBB17:
.LBB12:
	.loc 2 104 0
	movl	(%rbx,%rax,4), %r8d
.LBE12:
.LBE17:
	.loc 1 38 0
	movq	%rax, %rcx
.LBB18:
.LBB13:
	.loc 2 104 0
	xorl	%eax, %eax
.LBE13:
.LBE18:
	.loc 1 36 0
	divsd	.LC1(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rsp)
.LVL28:
.LBB19:
.LBB14:
	.loc 2 104 0
	call	__printf_chk@PLT
.LVL29:
.LBE14:
.LBE19:
.LBB20:
.LBB21:
	movsd	8(%rsp), %xmm0
	leaq	.LC3(%rip), %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
.LVL30:
.LBE21:
.LBE20:
	.loc 1 41 0
	movq	%rbx, %rdi
	call	free@PLT
.LVL31:
	.loc 1 42 0
	movq	%rbp, %rdi
	call	free@PLT
.LVL32:
	.loc 1 45 0
	xorl	%eax, %eax
	movq	56(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L19
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
.LVL33:
	popq	%rbp
	.cfi_def_cfa_offset 24
.LVL34:
	popq	%r12
	.cfi_def_cfa_offset 16
.LVL35:
	popq	%r13
	.cfi_def_cfa_offset 8
.LVL36:
	ret
.LVL37:
.L18:
	.cfi_restore_state
.LBB22:
.LBB23:
	.loc 2 98 0
	movq	stderr(%rip), %rcx
	leaq	.LC0(%rip), %rdi
.LVL38:
	movl	$44, %edx
	movl	$1, %esi
.LVL39:
	call	fwrite@PLT
.LVL40:
.LBE23:
.LBE22:
	.loc 1 16 0
	movl	$1, %edi
	call	exit@PLT
.LVL41:
.L19:
	.loc 1 45 0
	call	__stack_chk_fail@PLT
.LVL42:
	.cfi_endproc
.LFE51:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1104006501
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/6/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 8 "/usr/include/time.h"
	.file 9 "/usr/include/c++/6/cstdlib"
	.file 10 "/usr/include/x86_64-linux-gnu/c++/6/bits/c++config.h"
	.file 11 "/usr/include/stdlib.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/stdlib.h"
	.file 15 "/usr/include/c++/6/stdlib.h"
	.file 16 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xdb9
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF130
	.byte	0x4
	.long	.LASF131
	.long	.LASF132
	.long	.Ldebug_ranges0+0x70
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF8
	.byte	0x3
	.byte	0xd8
	.long	0x3b
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.long	.LASF9
	.byte	0x4
	.byte	0x83
	.long	0x6c
	.uleb128 0x3
	.long	.LASF10
	.byte	0x4
	.byte	0x84
	.long	0x6c
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x3
	.long	.LASF12
	.byte	0x4
	.byte	0x8b
	.long	0x6c
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x3
	.long	.LASF13
	.byte	0x4
	.byte	0xaf
	.long	0x6c
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
	.byte	0x5
	.byte	0x30
	.long	0xc5
	.uleb128 0x8
	.long	.LASF45
	.byte	0xd8
	.byte	0x6
	.byte	0xf1
	.long	0x242
	.uleb128 0x9
	.long	.LASF16
	.byte	0x6
	.byte	0xf2
	.long	0x65
	.byte	0
	.uleb128 0x9
	.long	.LASF17
	.byte	0x6
	.byte	0xf7
	.long	0xa8
	.byte	0x8
	.uleb128 0x9
	.long	.LASF18
	.byte	0x6
	.byte	0xf8
	.long	0xa8
	.byte	0x10
	.uleb128 0x9
	.long	.LASF19
	.byte	0x6
	.byte	0xf9
	.long	0xa8
	.byte	0x18
	.uleb128 0x9
	.long	.LASF20
	.byte	0x6
	.byte	0xfa
	.long	0xa8
	.byte	0x20
	.uleb128 0x9
	.long	.LASF21
	.byte	0x6
	.byte	0xfb
	.long	0xa8
	.byte	0x28
	.uleb128 0x9
	.long	.LASF22
	.byte	0x6
	.byte	0xfc
	.long	0xa8
	.byte	0x30
	.uleb128 0x9
	.long	.LASF23
	.byte	0x6
	.byte	0xfd
	.long	0xa8
	.byte	0x38
	.uleb128 0x9
	.long	.LASF24
	.byte	0x6
	.byte	0xfe
	.long	0xa8
	.byte	0x40
	.uleb128 0xa
	.long	.LASF25
	.byte	0x6
	.value	0x100
	.long	0xa8
	.byte	0x48
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.value	0x101
	.long	0xa8
	.byte	0x50
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.value	0x102
	.long	0xa8
	.byte	0x58
	.uleb128 0xa
	.long	.LASF28
	.byte	0x6
	.value	0x104
	.long	0x27a
	.byte	0x60
	.uleb128 0xa
	.long	.LASF29
	.byte	0x6
	.value	0x106
	.long	0x280
	.byte	0x68
	.uleb128 0xa
	.long	.LASF30
	.byte	0x6
	.value	0x108
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF31
	.byte	0x6
	.value	0x10c
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF32
	.byte	0x6
	.value	0x10e
	.long	0x73
	.byte	0x78
	.uleb128 0xa
	.long	.LASF33
	.byte	0x6
	.value	0x112
	.long	0x49
	.byte	0x80
	.uleb128 0xa
	.long	.LASF34
	.byte	0x6
	.value	0x113
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF35
	.byte	0x6
	.value	0x114
	.long	0x286
	.byte	0x83
	.uleb128 0xa
	.long	.LASF36
	.byte	0x6
	.value	0x118
	.long	0x296
	.byte	0x88
	.uleb128 0xa
	.long	.LASF37
	.byte	0x6
	.value	0x121
	.long	0x7e
	.byte	0x90
	.uleb128 0xa
	.long	.LASF38
	.byte	0x6
	.value	0x129
	.long	0x9b
	.byte	0x98
	.uleb128 0xa
	.long	.LASF39
	.byte	0x6
	.value	0x12a
	.long	0x9b
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x6
	.value	0x12b
	.long	0x9b
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF41
	.byte	0x6
	.value	0x12c
	.long	0x9b
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x6
	.value	0x12e
	.long	0x30
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF43
	.byte	0x6
	.value	0x12f
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF44
	.byte	0x6
	.value	0x131
	.long	0x29c
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF133
	.byte	0x6
	.byte	0x96
	.uleb128 0x8
	.long	.LASF46
	.byte	0x18
	.byte	0x6
	.byte	0x9c
	.long	0x27a
	.uleb128 0x9
	.long	.LASF47
	.byte	0x6
	.byte	0x9d
	.long	0x27a
	.byte	0
	.uleb128 0x9
	.long	.LASF48
	.byte	0x6
	.byte	0x9e
	.long	0x280
	.byte	0x8
	.uleb128 0x9
	.long	.LASF49
	.byte	0x6
	.byte	0xa2
	.long	0x65
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
	.long	.LASF134
	.uleb128 0xf
	.long	.LASF50
	.byte	0x6
	.value	0x13b
	.long	0x2ac
	.uleb128 0xf
	.long	.LASF51
	.byte	0x6
	.value	0x13c
	.long	0x2ac
	.uleb128 0xf
	.long	.LASF52
	.byte	0x6
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
	.byte	0x5
	.byte	0xaa
	.long	0x280
	.uleb128 0x11
	.long	.LASF54
	.byte	0x5
	.byte	0xab
	.long	0x280
	.uleb128 0x11
	.long	.LASF55
	.byte	0x5
	.byte	0xac
	.long	0x280
	.uleb128 0x11
	.long	.LASF56
	.byte	0x7
	.byte	0x1a
	.long	0x65
	.uleb128 0xc
	.long	0x2db
	.long	0x31c
	.uleb128 0x12
	.byte	0
	.uleb128 0x11
	.long	.LASF57
	.byte	0x7
	.byte	0x1b
	.long	0x311
	.uleb128 0x11
	.long	.LASF58
	.byte	0x7
	.byte	0x1e
	.long	0x65
	.uleb128 0x11
	.long	.LASF59
	.byte	0x7
	.byte	0x1f
	.long	0x311
	.uleb128 0x8
	.long	.LASF60
	.byte	0x10
	.byte	0x8
	.byte	0x78
	.long	0x362
	.uleb128 0x9
	.long	.LASF61
	.byte	0x8
	.byte	0x7a
	.long	0x90
	.byte	0
	.uleb128 0x9
	.long	.LASF62
	.byte	0x8
	.byte	0x7b
	.long	0x9d
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0xa8
	.long	0x372
	.uleb128 0xd
	.long	0x89
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF63
	.byte	0x8
	.value	0x11a
	.long	0x362
	.uleb128 0xf
	.long	.LASF64
	.byte	0x8
	.value	0x11b
	.long	0x65
	.uleb128 0xf
	.long	.LASF65
	.byte	0x8
	.value	0x11c
	.long	0x6c
	.uleb128 0xf
	.long	.LASF66
	.byte	0x8
	.value	0x121
	.long	0x362
	.uleb128 0xf
	.long	.LASF67
	.byte	0x8
	.value	0x129
	.long	0x65
	.uleb128 0xf
	.long	.LASF68
	.byte	0x8
	.value	0x12a
	.long	0x6c
	.uleb128 0xf
	.long	.LASF69
	.byte	0x8
	.value	0x193
	.long	0x65
	.uleb128 0x13
	.string	"std"
	.byte	0x10
	.byte	0
	.long	0x4dd
	.uleb128 0x14
	.long	.LASF71
	.byte	0xa
	.byte	0xdf
	.uleb128 0x15
	.byte	0xa
	.byte	0xdf
	.long	0x3d1
	.uleb128 0x16
	.byte	0x9
	.byte	0x7c
	.long	0x567
	.uleb128 0x16
	.byte	0x9
	.byte	0x7d
	.long	0x597
	.uleb128 0x16
	.byte	0x9
	.byte	0x81
	.long	0x60d
	.uleb128 0x16
	.byte	0x9
	.byte	0x84
	.long	0x62a
	.uleb128 0x16
	.byte	0x9
	.byte	0x87
	.long	0x644
	.uleb128 0x16
	.byte	0x9
	.byte	0x88
	.long	0x659
	.uleb128 0x16
	.byte	0x9
	.byte	0x89
	.long	0x66e
	.uleb128 0x16
	.byte	0x9
	.byte	0x8a
	.long	0x683
	.uleb128 0x16
	.byte	0x9
	.byte	0x8c
	.long	0x6ac
	.uleb128 0x16
	.byte	0x9
	.byte	0x8f
	.long	0x6c7
	.uleb128 0x16
	.byte	0x9
	.byte	0x91
	.long	0x6dd
	.uleb128 0x16
	.byte	0x9
	.byte	0x94
	.long	0x6f8
	.uleb128 0x16
	.byte	0x9
	.byte	0x95
	.long	0x713
	.uleb128 0x16
	.byte	0x9
	.byte	0x96
	.long	0x744
	.uleb128 0x16
	.byte	0x9
	.byte	0x98
	.long	0x764
	.uleb128 0x16
	.byte	0x9
	.byte	0x9b
	.long	0x785
	.uleb128 0x16
	.byte	0x9
	.byte	0x9e
	.long	0x797
	.uleb128 0x16
	.byte	0x9
	.byte	0xa0
	.long	0x7a3
	.uleb128 0x16
	.byte	0x9
	.byte	0xa1
	.long	0x7b5
	.uleb128 0x16
	.byte	0x9
	.byte	0xa2
	.long	0x7d5
	.uleb128 0x16
	.byte	0x9
	.byte	0xa3
	.long	0x7f4
	.uleb128 0x16
	.byte	0x9
	.byte	0xa4
	.long	0x813
	.uleb128 0x16
	.byte	0x9
	.byte	0xa6
	.long	0x829
	.uleb128 0x16
	.byte	0x9
	.byte	0xa7
	.long	0x84e
	.uleb128 0x17
	.byte	0x9
	.value	0x104
	.long	0x5ce
	.uleb128 0x17
	.byte	0x9
	.value	0x109
	.long	0x527
	.uleb128 0x17
	.byte	0x9
	.value	0x10a
	.long	0x868
	.uleb128 0x17
	.byte	0x9
	.value	0x10c
	.long	0x883
	.uleb128 0x17
	.byte	0x9
	.value	0x10d
	.long	0x8d6
	.uleb128 0x17
	.byte	0x9
	.value	0x10e
	.long	0x898
	.uleb128 0x17
	.byte	0x9
	.value	0x10f
	.long	0x8b7
	.uleb128 0x17
	.byte	0x9
	.value	0x110
	.long	0x8f7
	.uleb128 0x18
	.string	"abs"
	.byte	0x9
	.byte	0xb9
	.long	.LASF72
	.long	0x93b
	.uleb128 0x19
	.long	0x93b
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF70
	.byte	0xa
	.byte	0xe1
	.long	0x542
	.uleb128 0x14
	.long	.LASF71
	.byte	0xa
	.byte	0xe3
	.uleb128 0x15
	.byte	0xa
	.byte	0xe3
	.long	0x4e8
	.uleb128 0x16
	.byte	0x9
	.byte	0xdc
	.long	0x5ce
	.uleb128 0x16
	.byte	0x9
	.byte	0xec
	.long	0x868
	.uleb128 0x16
	.byte	0x9
	.byte	0xf7
	.long	0x883
	.uleb128 0x16
	.byte	0x9
	.byte	0xf8
	.long	0x898
	.uleb128 0x16
	.byte	0x9
	.byte	0xf9
	.long	0x8b7
	.uleb128 0x16
	.byte	0x9
	.byte	0xfb
	.long	0x8d6
	.uleb128 0x16
	.byte	0x9
	.byte	0xfc
	.long	0x8f7
	.uleb128 0x18
	.string	"div"
	.byte	0x9
	.byte	0xe9
	.long	.LASF73
	.long	0x5ce
	.uleb128 0x19
	.long	0x5c7
	.uleb128 0x19
	.long	0x5c7
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x8
	.byte	0xb
	.byte	0x3b
	.long	.LASF76
	.long	0x567
	.uleb128 0x9
	.long	.LASF74
	.byte	0xb
	.byte	0x3c
	.long	0x65
	.byte	0
	.uleb128 0x1c
	.string	"rem"
	.byte	0xb
	.byte	0x3d
	.long	0x65
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF75
	.byte	0xb
	.byte	0x3e
	.long	0x542
	.uleb128 0x1b
	.byte	0x10
	.byte	0xb
	.byte	0x43
	.long	.LASF77
	.long	0x597
	.uleb128 0x9
	.long	.LASF74
	.byte	0xb
	.byte	0x44
	.long	0x6c
	.byte	0
	.uleb128 0x1c
	.string	"rem"
	.byte	0xb
	.byte	0x45
	.long	0x6c
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF78
	.byte	0xb
	.byte	0x46
	.long	0x572
	.uleb128 0x1b
	.byte	0x10
	.byte	0xb
	.byte	0x4f
	.long	.LASF79
	.long	0x5c7
	.uleb128 0x9
	.long	.LASF74
	.byte	0xb
	.byte	0x50
	.long	0x5c7
	.byte	0
	.uleb128 0x1c
	.string	"rem"
	.byte	0xb
	.byte	0x51
	.long	0x5c7
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF80
	.uleb128 0x3
	.long	.LASF81
	.byte	0xb
	.byte	0x52
	.long	0x5a2
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF82
	.uleb128 0x1d
	.long	.LASF83
	.byte	0xb
	.value	0x2be
	.long	0x5ec
	.uleb128 0x6
	.byte	0x8
	.long	0x5f2
	.uleb128 0x1e
	.long	0x65
	.long	0x606
	.uleb128 0x19
	.long	0x606
	.uleb128 0x19
	.long	0x606
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x60c
	.uleb128 0x1f
	.uleb128 0x20
	.long	.LASF84
	.byte	0xb
	.value	0x1e0
	.long	0x65
	.long	0x623
	.uleb128 0x19
	.long	0x623
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x629
	.uleb128 0x21
	.uleb128 0x22
	.long	.LASF120
	.byte	0xb
	.value	0x1e5
	.long	.LASF120
	.long	0x65
	.long	0x644
	.uleb128 0x19
	.long	0x623
	.byte	0
	.uleb128 0x23
	.long	.LASF85
	.byte	0xc
	.byte	0x1a
	.long	0x29
	.long	0x659
	.uleb128 0x19
	.long	0x2d5
	.byte	0
	.uleb128 0x23
	.long	.LASF86
	.byte	0xb
	.byte	0xef
	.long	0x65
	.long	0x66e
	.uleb128 0x19
	.long	0x2d5
	.byte	0
	.uleb128 0x23
	.long	.LASF87
	.byte	0xb
	.byte	0xf4
	.long	0x6c
	.long	0x683
	.uleb128 0x19
	.long	0x2d5
	.byte	0
	.uleb128 0x23
	.long	.LASF88
	.byte	0xd
	.byte	0x14
	.long	0x9b
	.long	0x6ac
	.uleb128 0x19
	.long	0x606
	.uleb128 0x19
	.long	0x606
	.uleb128 0x19
	.long	0x30
	.uleb128 0x19
	.long	0x30
	.uleb128 0x19
	.long	0x5e0
	.byte	0
	.uleb128 0x24
	.string	"div"
	.byte	0xb
	.value	0x2ed
	.long	0x567
	.long	0x6c7
	.uleb128 0x19
	.long	0x65
	.uleb128 0x19
	.long	0x65
	.byte	0
	.uleb128 0x20
	.long	.LASF89
	.byte	0xb
	.value	0x20d
	.long	0xa8
	.long	0x6dd
	.uleb128 0x19
	.long	0x2d5
	.byte	0
	.uleb128 0x20
	.long	.LASF90
	.byte	0xb
	.value	0x2ef
	.long	0x597
	.long	0x6f8
	.uleb128 0x19
	.long	0x6c
	.uleb128 0x19
	.long	0x6c
	.byte	0
	.uleb128 0x20
	.long	.LASF91
	.byte	0xb
	.value	0x337
	.long	0x65
	.long	0x713
	.uleb128 0x19
	.long	0x2d5
	.uleb128 0x19
	.long	0x30
	.byte	0
	.uleb128 0x23
	.long	.LASF92
	.byte	0xe
	.byte	0x71
	.long	0x30
	.long	0x732
	.uleb128 0x19
	.long	0x732
	.uleb128 0x19
	.long	0x2d5
	.uleb128 0x19
	.long	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x738
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF93
	.uleb128 0x7
	.long	0x738
	.uleb128 0x20
	.long	.LASF94
	.byte	0xb
	.value	0x33a
	.long	0x65
	.long	0x764
	.uleb128 0x19
	.long	0x732
	.uleb128 0x19
	.long	0x2d5
	.uleb128 0x19
	.long	0x30
	.byte	0
	.uleb128 0x25
	.long	.LASF96
	.byte	0xb
	.value	0x2d5
	.long	0x785
	.uleb128 0x19
	.long	0x9b
	.uleb128 0x19
	.long	0x30
	.uleb128 0x19
	.long	0x30
	.uleb128 0x19
	.long	0x5e0
	.byte	0
	.uleb128 0x26
	.long	.LASF95
	.byte	0xb
	.value	0x1fe
	.long	0x797
	.uleb128 0x19
	.long	0x65
	.byte	0
	.uleb128 0x27
	.long	.LASF135
	.byte	0xb
	.value	0x14f
	.long	0x65
	.uleb128 0x25
	.long	.LASF97
	.byte	0xb
	.value	0x151
	.long	0x7b5
	.uleb128 0x19
	.long	0x50
	.byte	0
	.uleb128 0x23
	.long	.LASF98
	.byte	0xb
	.byte	0x7d
	.long	0x29
	.long	0x7cf
	.uleb128 0x19
	.long	0x2d5
	.uleb128 0x19
	.long	0x7cf
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa8
	.uleb128 0x23
	.long	.LASF99
	.byte	0xb
	.byte	0x90
	.long	0x6c
	.long	0x7f4
	.uleb128 0x19
	.long	0x2d5
	.uleb128 0x19
	.long	0x7cf
	.uleb128 0x19
	.long	0x65
	.byte	0
	.uleb128 0x23
	.long	.LASF100
	.byte	0xb
	.byte	0x94
	.long	0x3b
	.long	0x813
	.uleb128 0x19
	.long	0x2d5
	.uleb128 0x19
	.long	0x7cf
	.uleb128 0x19
	.long	0x65
	.byte	0
	.uleb128 0x20
	.long	.LASF101
	.byte	0xb
	.value	0x2a5
	.long	0x65
	.long	0x829
	.uleb128 0x19
	.long	0x2d5
	.byte	0
	.uleb128 0x23
	.long	.LASF102
	.byte	0xe
	.byte	0x90
	.long	0x30
	.long	0x848
	.uleb128 0x19
	.long	0xa8
	.uleb128 0x19
	.long	0x848
	.uleb128 0x19
	.long	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x73f
	.uleb128 0x23
	.long	.LASF103
	.byte	0xe
	.byte	0x53
	.long	0x65
	.long	0x868
	.uleb128 0x19
	.long	0xa8
	.uleb128 0x19
	.long	0x738
	.byte	0
	.uleb128 0x20
	.long	.LASF104
	.byte	0xb
	.value	0x2f5
	.long	0x5ce
	.long	0x883
	.uleb128 0x19
	.long	0x5c7
	.uleb128 0x19
	.long	0x5c7
	.byte	0
	.uleb128 0x23
	.long	.LASF105
	.byte	0xb
	.byte	0xfd
	.long	0x5c7
	.long	0x898
	.uleb128 0x19
	.long	0x2d5
	.byte	0
	.uleb128 0x23
	.long	.LASF106
	.byte	0xb
	.byte	0xaa
	.long	0x5c7
	.long	0x8b7
	.uleb128 0x19
	.long	0x2d5
	.uleb128 0x19
	.long	0x7cf
	.uleb128 0x19
	.long	0x65
	.byte	0
	.uleb128 0x23
	.long	.LASF107
	.byte	0xb
	.byte	0xaf
	.long	0x5d9
	.long	0x8d6
	.uleb128 0x19
	.long	0x2d5
	.uleb128 0x19
	.long	0x7cf
	.uleb128 0x19
	.long	0x65
	.byte	0
	.uleb128 0x23
	.long	.LASF108
	.byte	0xb
	.byte	0x85
	.long	0x8f0
	.long	0x8f0
	.uleb128 0x19
	.long	0x2d5
	.uleb128 0x19
	.long	0x7cf
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF109
	.uleb128 0x23
	.long	.LASF110
	.byte	0xb
	.byte	0x88
	.long	0x911
	.long	0x911
	.uleb128 0x19
	.long	0x2d5
	.uleb128 0x19
	.long	0x7cf
	.byte	0
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF111
	.uleb128 0x16
	.byte	0xf
	.byte	0x27
	.long	0x60d
	.uleb128 0x16
	.byte	0xf
	.byte	0x2b
	.long	0x62a
	.uleb128 0x16
	.byte	0xf
	.byte	0x2e
	.long	0x785
	.uleb128 0x16
	.byte	0xf
	.byte	0x33
	.long	0x567
	.uleb128 0x16
	.byte	0xf
	.byte	0x34
	.long	0x597
	.uleb128 0x2
	.byte	0x10
	.byte	0x5
	.long	.LASF112
	.uleb128 0x16
	.byte	0xf
	.byte	0x36
	.long	0x4c7
	.uleb128 0x16
	.byte	0xf
	.byte	0x37
	.long	0x644
	.uleb128 0x16
	.byte	0xf
	.byte	0x38
	.long	0x659
	.uleb128 0x16
	.byte	0xf
	.byte	0x39
	.long	0x66e
	.uleb128 0x16
	.byte	0xf
	.byte	0x3a
	.long	0x683
	.uleb128 0x16
	.byte	0xf
	.byte	0x3c
	.long	0x527
	.uleb128 0x16
	.byte	0xf
	.byte	0x3e
	.long	0x6c7
	.uleb128 0x16
	.byte	0xf
	.byte	0x40
	.long	0x6dd
	.uleb128 0x16
	.byte	0xf
	.byte	0x43
	.long	0x6f8
	.uleb128 0x16
	.byte	0xf
	.byte	0x44
	.long	0x713
	.uleb128 0x16
	.byte	0xf
	.byte	0x45
	.long	0x744
	.uleb128 0x16
	.byte	0xf
	.byte	0x47
	.long	0x764
	.uleb128 0x16
	.byte	0xf
	.byte	0x48
	.long	0x797
	.uleb128 0x16
	.byte	0xf
	.byte	0x4a
	.long	0x7a3
	.uleb128 0x16
	.byte	0xf
	.byte	0x4b
	.long	0x7b5
	.uleb128 0x16
	.byte	0xf
	.byte	0x4c
	.long	0x7d5
	.uleb128 0x16
	.byte	0xf
	.byte	0x4d
	.long	0x7f4
	.uleb128 0x16
	.byte	0xf
	.byte	0x4e
	.long	0x813
	.uleb128 0x16
	.byte	0xf
	.byte	0x50
	.long	0x829
	.uleb128 0x16
	.byte	0xf
	.byte	0x51
	.long	0x84e
	.uleb128 0x28
	.long	.LASF118
	.byte	0x1
	.byte	0xd
	.long	0x65
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0xc56
	.uleb128 0x29
	.long	.LASF113
	.byte	0x1
	.byte	0xd
	.long	0x65
	.long	.LLST7
	.uleb128 0x29
	.long	.LASF114
	.byte	0x1
	.byte	0xd
	.long	0x7cf
	.long	.LLST8
	.uleb128 0x2a
	.string	"n"
	.byte	0x1
	.byte	0x13
	.long	0x50
	.long	.LLST9
	.uleb128 0x2a
	.string	"a"
	.byte	0x1
	.byte	0x14
	.long	0x65
	.long	.LLST10
	.uleb128 0x2a
	.string	"y"
	.byte	0x1
	.byte	0x15
	.long	0xc56
	.long	.LLST11
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.byte	0x15
	.long	0xc56
	.long	.LLST12
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.byte	0x19
	.long	0x50
	.long	.LLST13
	.uleb128 0x2b
	.long	.LASF115
	.byte	0x1
	.byte	0x1f
	.long	0x33d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LASF116
	.byte	0x1
	.byte	0x1f
	.long	0x33d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF117
	.byte	0x1
	.byte	0x1f
	.long	0x29
	.long	.LLST14
	.uleb128 0x2d
	.long	0xd1b
	.quad	.LBB8
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x26
	.long	0xac2
	.uleb128 0x2e
	.long	0xd2b
	.long	.LLST15
	.uleb128 0x2f
	.quad	.LVL29
	.long	0xd6b
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0xd1b
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.byte	0x1
	.byte	0x27
	.long	0xb11
	.uleb128 0x2e
	.long	0xd2b
	.long	.LLST16
	.uleb128 0x2f
	.quad	.LVL30
	.long	0xd6b
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x6
	.byte	0x91
	.sleb128 -104
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0xd38
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.byte	0x1
	.byte	0xf
	.long	0xb61
	.uleb128 0x2e
	.long	0xd53
	.long	.LLST17
	.uleb128 0x32
	.long	0xd48
	.uleb128 0x2f
	.quad	.LVL40
	.long	0xd76
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x33
	.quad	.LVL16
	.long	0x7d5
	.long	0xb7d
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x33
	.quad	.LVL18
	.long	0x7d5
	.long	0xb99
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x33
	.quad	.LVL20
	.long	0xd83
	.long	0xbb1
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.quad	.LVL22
	.long	0xd83
	.long	0xbc9
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.quad	.LVL27
	.long	0xc5c
	.long	0xc01
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x33
	.quad	.LVL31
	.long	0xd8f
	.long	0xc19
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.quad	.LVL32
	.long	0xd8f
	.long	0xc31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.quad	.LVL41
	.long	0xd9b
	.long	0xc48
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x34
	.quad	.LVL42
	.long	0xda7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x65
	.uleb128 0x35
	.long	.LASF119
	.byte	0x1
	.byte	0x5
	.long	.LASF136
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0xd15
	.uleb128 0x36
	.string	"y"
	.byte	0x1
	.byte	0x5
	.long	0xc56
	.long	.LLST0
	.uleb128 0x36
	.string	"x"
	.byte	0x1
	.byte	0x5
	.long	0xc56
	.long	.LLST1
	.uleb128 0x36
	.string	"a"
	.byte	0x1
	.byte	0x5
	.long	0x65
	.long	.LLST2
	.uleb128 0x36
	.string	"n"
	.byte	0x1
	.byte	0x5
	.long	0x50
	.long	.LLST3
	.uleb128 0x29
	.long	.LASF115
	.byte	0x1
	.byte	0x5
	.long	0xd15
	.long	.LLST4
	.uleb128 0x29
	.long	.LASF116
	.byte	0x1
	.byte	0x5
	.long	0xd15
	.long	.LLST5
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.byte	0x7
	.long	0x50
	.long	.LLST6
	.uleb128 0x33
	.quad	.LVL3
	.long	0xdb0
	.long	0xcfa
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x37
	.quad	.LVL12
	.long	0xdb0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x59
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x33d
	.uleb128 0x38
	.long	.LASF121
	.byte	0x2
	.byte	0x66
	.long	0x65
	.byte	0x3
	.long	0xd38
	.uleb128 0x39
	.long	.LASF123
	.byte	0x2
	.byte	0x66
	.long	0x2e0
	.uleb128 0x3a
	.byte	0
	.uleb128 0x38
	.long	.LASF122
	.byte	0x2
	.byte	0x5f
	.long	0x65
	.byte	0x3
	.long	0xd60
	.uleb128 0x39
	.long	.LASF124
	.byte	0x2
	.byte	0x5f
	.long	0xd66
	.uleb128 0x39
	.long	.LASF123
	.byte	0x2
	.byte	0x5f
	.long	0x2e0
	.uleb128 0x3a
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xba
	.uleb128 0x10
	.long	0xd60
	.uleb128 0x3b
	.long	.LASF125
	.long	.LASF125
	.byte	0x2
	.byte	0x57
	.uleb128 0x3c
	.long	.LASF137
	.long	.LASF138
	.long	.LASF137
	.uleb128 0x3d
	.long	.LASF126
	.long	.LASF126
	.byte	0xb
	.value	0x1ab
	.uleb128 0x3d
	.long	.LASF127
	.long	.LASF127
	.byte	0xb
	.value	0x1bc
	.uleb128 0x3d
	.long	.LASF128
	.long	.LASF128
	.byte	0xb
	.value	0x1f8
	.uleb128 0x3e
	.long	.LASF139
	.long	.LASF139
	.uleb128 0x3d
	.long	.LASF129
	.long	.LASF129
	.byte	0x8
	.value	0x156
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x6e
	.uleb128 0xe
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
	.uleb128 0x36
	.uleb128 0x5
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
	.uleb128 0x37
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x6e
	.uleb128 0xe
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST7:
	.quad	.LVL13
	.quad	.LVL14
	.value	0x1
	.byte	0x55
	.quad	.LVL14
	.quad	.LVL37
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL37
	.quad	.LVL38
	.value	0x1
	.byte	0x55
	.quad	.LVL38
	.quad	.LFE51
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL13
	.quad	.LVL15
	.value	0x1
	.byte	0x54
	.quad	.LVL15
	.quad	.LVL21
	.value	0x1
	.byte	0x53
	.quad	.LVL21
	.quad	.LVL37
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL37
	.quad	.LVL39
	.value	0x1
	.byte	0x54
	.quad	.LVL39
	.quad	.LFE51
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL17
	.quad	.LVL35
	.value	0x1
	.byte	0x5c
	.quad	.LVL41
	.quad	.LFE51
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL19
	.quad	.LVL36
	.value	0x1
	.byte	0x5d
	.quad	.LVL41
	.quad	.LFE51
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL21
	.quad	.LVL22-1
	.value	0x1
	.byte	0x50
	.quad	.LVL22-1
	.quad	.LVL33
	.value	0x1
	.byte	0x53
	.quad	.LVL41
	.quad	.LFE51
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL23
	.quad	.LVL24
	.value	0x1
	.byte	0x50
	.quad	.LVL24
	.quad	.LVL34
	.value	0x1
	.byte	0x56
	.quad	.LVL41
	.quad	.LFE51
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL23
	.quad	.LVL24
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL24
	.quad	.LVL25
	.value	0x3
	.byte	0x70
	.sleb128 -2
	.byte	0x9f
	.quad	.LVL25
	.quad	.LVL26
	.value	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x4
	.byte	0x32
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL28
	.quad	.LVL29-1
	.value	0x1
	.byte	0x61
	.quad	.LVL29-1
	.quad	.LVL37
	.value	0x3
	.byte	0x91
	.sleb128 -104
	.quad	.LVL41
	.quad	.LFE51
	.value	0x3
	.byte	0x91
	.sleb128 -104
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL28
	.quad	.LVL29
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL29
	.quad	.LVL30
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL37
	.quad	.LVL40
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	0
	.quad	0
.LLST0:
	.quad	.LVL0
	.quad	.LVL2
	.value	0x1
	.byte	0x55
	.quad	.LVL2
	.quad	.LVL7
	.value	0x1
	.byte	0x53
	.quad	.LVL7
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
	.quad	.LVL1
	.value	0x1
	.byte	0x54
	.quad	.LVL1
	.quad	.LVL10
	.value	0x1
	.byte	0x5d
	.quad	.LVL10
	.quad	.LFE50
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL0
	.quad	.LVL3-1
	.value	0x1
	.byte	0x51
	.quad	.LVL3-1
	.quad	.LVL9
	.value	0x1
	.byte	0x5c
	.quad	.LVL9
	.quad	.LFE50
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL0
	.quad	.LVL3-1
	.value	0x1
	.byte	0x52
	.quad	.LVL3-1
	.quad	.LVL8
	.value	0x1
	.byte	0x56
	.quad	.LVL8
	.quad	.LFE50
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL0
	.quad	.LVL3-1
	.value	0x1
	.byte	0x58
	.quad	.LVL3-1
	.quad	.LFE50
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL0
	.quad	.LVL3-1
	.value	0x1
	.byte	0x59
	.quad	.LVL3-1
	.quad	.LVL11
	.value	0x1
	.byte	0x5e
	.quad	.LVL11
	.quad	.LVL12-1
	.value	0x1
	.byte	0x54
	.quad	.LVL12-1
	.quad	.LFE50
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x59
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL3
	.quad	.LVL4
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL4
	.quad	.LVL5
	.value	0x1
	.byte	0x50
	.quad	.LVL5
	.quad	.LVL6
	.value	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB8
	.quad	.LBE8
	.quad	.LBB15
	.quad	.LBE15
	.quad	.LBB16
	.quad	.LBE16
	.quad	.LBB17
	.quad	.LBE17
	.quad	.LBB18
	.quad	.LBE18
	.quad	.LBB19
	.quad	.LBE19
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB51
	.quad	.LFE51
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF89:
	.string	"getenv"
.LASF35:
	.string	"_shortbuf"
.LASF135:
	.string	"rand"
.LASF133:
	.string	"_IO_lock_t"
.LASF55:
	.string	"stderr"
.LASF101:
	.string	"system"
.LASF24:
	.string	"_IO_buf_end"
.LASF91:
	.string	"mblen"
.LASF22:
	.string	"_IO_write_end"
.LASF4:
	.string	"unsigned int"
.LASF70:
	.string	"__gnu_cxx"
.LASF69:
	.string	"getdate_err"
.LASF16:
	.string	"_flags"
.LASF93:
	.string	"wchar_t"
.LASF28:
	.string	"_markers"
.LASF138:
	.string	"__builtin_fwrite"
.LASF58:
	.string	"_sys_nerr"
.LASF73:
	.string	"_ZN9__gnu_cxx3divExx"
.LASF119:
	.string	"daxpy"
.LASF107:
	.string	"strtoull"
.LASF117:
	.string	"ncgt"
.LASF65:
	.string	"__timezone"
.LASF110:
	.string	"strtold"
.LASF72:
	.string	"_ZSt3absn"
.LASF106:
	.string	"strtoll"
.LASF49:
	.string	"_pos"
.LASF115:
	.string	"cgt1"
.LASF116:
	.string	"cgt2"
.LASF54:
	.string	"stdout"
.LASF94:
	.string	"mbtowc"
.LASF27:
	.string	"_IO_save_end"
.LASF109:
	.string	"float"
.LASF126:
	.string	"malloc"
.LASF82:
	.string	"long long unsigned int"
.LASF103:
	.string	"wctomb"
.LASF57:
	.string	"sys_errlist"
.LASF26:
	.string	"_IO_backup_base"
.LASF37:
	.string	"_offset"
.LASF136:
	.string	"_Z5daxpyPiS_ijP8timespecS1_"
.LASF56:
	.string	"sys_nerr"
.LASF104:
	.string	"lldiv"
.LASF105:
	.string	"atoll"
.LASF122:
	.string	"fprintf"
.LASF30:
	.string	"_fileno"
.LASF62:
	.string	"tv_nsec"
.LASF8:
	.string	"size_t"
.LASF97:
	.string	"srand"
.LASF19:
	.string	"_IO_read_base"
.LASF88:
	.string	"bsearch"
.LASF113:
	.string	"argc"
.LASF53:
	.string	"stdin"
.LASF47:
	.string	"_next"
.LASF127:
	.string	"free"
.LASF123:
	.string	"__fmt"
.LASF124:
	.string	"__stream"
.LASF60:
	.string	"timespec"
.LASF14:
	.string	"char"
.LASF43:
	.string	"_mode"
.LASF76:
	.string	"5div_t"
.LASF64:
	.string	"__daylight"
.LASF66:
	.string	"tzname"
.LASF46:
	.string	"_IO_marker"
.LASF17:
	.string	"_IO_read_ptr"
.LASF128:
	.string	"exit"
.LASF95:
	.string	"quick_exit"
.LASF74:
	.string	"quot"
.LASF92:
	.string	"mbstowcs"
.LASF20:
	.string	"_IO_write_base"
.LASF130:
	.string	"GNU C++14 6.3.0 20170406 -mtune=generic -march=x86-64 -g -O2 -fstack-protector-strong"
.LASF50:
	.string	"_IO_2_1_stdin_"
.LASF80:
	.string	"long long int"
.LASF121:
	.string	"printf"
.LASF51:
	.string	"_IO_2_1_stdout_"
.LASF25:
	.string	"_IO_save_base"
.LASF125:
	.string	"__printf_chk"
.LASF71:
	.string	"__cxx11"
.LASF132:
	.string	"/home/migue/GIT/AC/BP4/Codigo Ensamblador"
.LASF13:
	.string	"__syscall_slong_t"
.LASF90:
	.string	"ldiv"
.LASF129:
	.string	"clock_gettime"
.LASF83:
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
.LASF111:
	.string	"long double"
.LASF118:
	.string	"main"
.LASF68:
	.string	"timezone"
.LASF18:
	.string	"_IO_read_end"
.LASF6:
	.string	"short int"
.LASF7:
	.string	"long int"
.LASF139:
	.string	"__stack_chk_fail"
.LASF84:
	.string	"atexit"
.LASF134:
	.string	"_IO_FILE_plus"
.LASF78:
	.string	"ldiv_t"
.LASF120:
	.string	"at_quick_exit"
.LASF36:
	.string	"_lock"
.LASF61:
	.string	"tv_sec"
.LASF11:
	.string	"sizetype"
.LASF100:
	.string	"strtoul"
.LASF1:
	.string	"long unsigned int"
.LASF32:
	.string	"_old_offset"
.LASF45:
	.string	"_IO_FILE"
.LASF112:
	.string	"__int128"
.LASF75:
	.string	"div_t"
.LASF2:
	.string	"unsigned char"
.LASF131:
	.string	"../FuentesCreadas/daxpy.c"
.LASF63:
	.string	"__tzname"
.LASF48:
	.string	"_sbuf"
.LASF21:
	.string	"_IO_write_ptr"
.LASF98:
	.string	"strtod"
.LASF108:
	.string	"strtof"
.LASF102:
	.string	"wcstombs"
.LASF99:
	.string	"strtol"
.LASF12:
	.string	"__time_t"
.LASF77:
	.string	"6ldiv_t"
.LASF67:
	.string	"daylight"
.LASF137:
	.string	"fwrite"
.LASF9:
	.string	"__off_t"
.LASF79:
	.string	"7lldiv_t"
.LASF5:
	.string	"signed char"
.LASF3:
	.string	"short unsigned int"
.LASF81:
	.string	"lldiv_t"
.LASF85:
	.string	"atof"
.LASF59:
	.string	"_sys_errlist"
.LASF86:
	.string	"atoi"
.LASF87:
	.string	"atol"
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
.LASF96:
	.string	"qsort"
	.ident	"GCC: (Ubuntu 6.3.0-12ubuntu2) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
