	.file	"daxpy.c"
	.text
.Ltext0:
	.globl	_Z5daxpyPiS_ijP8timespecS1_
	.type	_Z5daxpyPiS_ijP8timespecS1_, @function
_Z5daxpyPiS_ijP8timespecS1_:
.LFB7:
	.file 1 "../FuentesCreadas/daxpy.c"
	.loc 1 5 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	.loc 1 6 0
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	.loc 1 8 0
	movl	$0, -4(%rbp)
.L3:
	.loc 1 8 0 is_stmt 0 discriminator 3
	movl	-4(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jnb	.L2
	.loc 1 9 0 is_stmt 1 discriminator 2
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rsi
	movq	-32(%rbp), %rax
	addq	%rsi, %rax
	movl	(%rax), %eax
	imull	-36(%rbp), %eax
	addl	%ecx, %eax
	movl	%eax, (%rdx)
	.loc 1 8 0 discriminator 2
	addl	$1, -4(%rbp)
	jmp	.L3
.L2:
	.loc 1 10 0
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	.loc 1 11 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	_Z5daxpyPiS_ijP8timespecS1_, .-_Z5daxpyPiS_ijP8timespecS1_
	.section	.rodata
	.align 8
.LC0:
	.string	"ERROR: Falta tamanio del vector y constante\n"
.LC2:
	.string	"y[0] = %i, y[%i] = %i\n"
.LC3:
	.string	"\nTiempo (seg.) = %11.9f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.loc 1 13 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movl	%edi, -100(%rbp)
	movq	%rsi, -112(%rbp)
	.loc 1 13 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 14 0
	cmpl	$2, -100(%rbp)
	jg	.L5
	.loc 1 15 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$44, %edx
	movl	$1, %esi
	leaq	.LC0(%rip), %rdi
	call	fwrite@PLT
	.loc 1 16 0
	movl	$1, %edi
	call	exit@PLT
.L5:
	.loc 1 19 0
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	movl	%eax, -80(%rbp)
	.loc 1 20 0
	movq	-112(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	movl	%eax, -76(%rbp)
	.loc 1 22 0
	movl	-80(%rbp), %eax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -72(%rbp)
	.loc 1 23 0
	movl	-80(%rbp), %eax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -64(%rbp)
	.loc 1 26 0
	movl	$0, -84(%rbp)
.L7:
	.loc 1 26 0 is_stmt 0 discriminator 3
	movl	-84(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jnb	.L6
	.loc 1 27 0 is_stmt 1 discriminator 2
	movl	-84(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	-84(%rbp), %edx
	addl	$2, %edx
	movl	%edx, (%rax)
	.loc 1 28 0 discriminator 2
	movl	-84(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	-84(%rbp), %edx
	addl	%edx, %edx
	movl	%edx, (%rax)
	.loc 1 26 0 discriminator 2
	addl	$1, -84(%rbp)
	jmp	.L7
.L6:
	.loc 1 34 0
	leaq	-32(%rbp), %r8
	leaq	-48(%rbp), %rdi
	movl	-80(%rbp), %ecx
	movl	-76(%rbp), %edx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_Z5daxpyPiS_ijP8timespecS1_
	.loc 1 36 0
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC1(%rip), %xmm2
	divsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	.loc 1 38 0
	movl	-80(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-80(%rbp), %eax
	leal	-1(%rax), %esi
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	%edx, %ecx
	movl	%esi, %edx
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 39 0
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
	movsd	-120(%rbp), %xmm0
	leaq	.LC3(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	.loc 1 41 0
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 42 0
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 44 0
	movl	$0, %eax
	.loc 1 45 0
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1104006501
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/6/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 7 "/usr/include/time.h"
	.file 8 "/usr/include/c++/6/cstdlib"
	.file 9 "/usr/include/x86_64-linux-gnu/c++/6/bits/c++config.h"
	.file 10 "/usr/include/stdlib.h"
	.file 11 "/usr/include/c++/6/stdlib.h"
	.file 12 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xaf6
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF119
	.byte	0x4
	.long	.LASF120
	.long	.LASF121
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd8
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x83
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x84
	.long	0x69
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x8b
	.long	0x69
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
	.byte	0xaf
	.long	0x69
	.uleb128 0x6
	.byte	0x8
	.long	0xab
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x7
	.long	0xab
	.uleb128 0x8
	.long	.LASF43
	.byte	0xd8
	.byte	0x4
	.byte	0xf1
	.long	0x234
	.uleb128 0x9
	.long	.LASF14
	.byte	0x4
	.byte	0xf2
	.long	0x62
	.byte	0
	.uleb128 0x9
	.long	.LASF15
	.byte	0x4
	.byte	0xf7
	.long	0xa5
	.byte	0x8
	.uleb128 0x9
	.long	.LASF16
	.byte	0x4
	.byte	0xf8
	.long	0xa5
	.byte	0x10
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.byte	0xf9
	.long	0xa5
	.byte	0x18
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.byte	0xfa
	.long	0xa5
	.byte	0x20
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.byte	0xfb
	.long	0xa5
	.byte	0x28
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.byte	0xfc
	.long	0xa5
	.byte	0x30
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.byte	0xfd
	.long	0xa5
	.byte	0x38
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.byte	0xfe
	.long	0xa5
	.byte	0x40
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.value	0x100
	.long	0xa5
	.byte	0x48
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.value	0x101
	.long	0xa5
	.byte	0x50
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.value	0x102
	.long	0xa5
	.byte	0x58
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.value	0x104
	.long	0x26c
	.byte	0x60
	.uleb128 0xa
	.long	.LASF27
	.byte	0x4
	.value	0x106
	.long	0x272
	.byte	0x68
	.uleb128 0xa
	.long	.LASF28
	.byte	0x4
	.value	0x108
	.long	0x62
	.byte	0x70
	.uleb128 0xa
	.long	.LASF29
	.byte	0x4
	.value	0x10c
	.long	0x62
	.byte	0x74
	.uleb128 0xa
	.long	.LASF30
	.byte	0x4
	.value	0x10e
	.long	0x70
	.byte	0x78
	.uleb128 0xa
	.long	.LASF31
	.byte	0x4
	.value	0x112
	.long	0x46
	.byte	0x80
	.uleb128 0xa
	.long	.LASF32
	.byte	0x4
	.value	0x113
	.long	0x54
	.byte	0x82
	.uleb128 0xa
	.long	.LASF33
	.byte	0x4
	.value	0x114
	.long	0x278
	.byte	0x83
	.uleb128 0xa
	.long	.LASF34
	.byte	0x4
	.value	0x118
	.long	0x288
	.byte	0x88
	.uleb128 0xa
	.long	.LASF35
	.byte	0x4
	.value	0x121
	.long	0x7b
	.byte	0x90
	.uleb128 0xa
	.long	.LASF36
	.byte	0x4
	.value	0x129
	.long	0x98
	.byte	0x98
	.uleb128 0xa
	.long	.LASF37
	.byte	0x4
	.value	0x12a
	.long	0x98
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x4
	.value	0x12b
	.long	0x98
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF39
	.byte	0x4
	.value	0x12c
	.long	0x98
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x4
	.value	0x12e
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF41
	.byte	0x4
	.value	0x12f
	.long	0x62
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x4
	.value	0x131
	.long	0x28e
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF122
	.byte	0x4
	.byte	0x96
	.uleb128 0x8
	.long	.LASF44
	.byte	0x18
	.byte	0x4
	.byte	0x9c
	.long	0x26c
	.uleb128 0x9
	.long	.LASF45
	.byte	0x4
	.byte	0x9d
	.long	0x26c
	.byte	0
	.uleb128 0x9
	.long	.LASF46
	.byte	0x4
	.byte	0x9e
	.long	0x272
	.byte	0x8
	.uleb128 0x9
	.long	.LASF47
	.byte	0x4
	.byte	0xa2
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x23b
	.uleb128 0x6
	.byte	0x8
	.long	0xb7
	.uleb128 0xc
	.long	0xab
	.long	0x288
	.uleb128 0xd
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x234
	.uleb128 0xc
	.long	0xab
	.long	0x29e
	.uleb128 0xd
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF123
	.uleb128 0xf
	.long	.LASF48
	.byte	0x4
	.value	0x13b
	.long	0x29e
	.uleb128 0xf
	.long	.LASF49
	.byte	0x4
	.value	0x13c
	.long	0x29e
	.uleb128 0xf
	.long	.LASF50
	.byte	0x4
	.value	0x13d
	.long	0x29e
	.uleb128 0x6
	.byte	0x8
	.long	0xb2
	.uleb128 0x7
	.long	0x2c7
	.uleb128 0x10
	.long	.LASF51
	.byte	0x5
	.byte	0xaa
	.long	0x272
	.uleb128 0x10
	.long	.LASF52
	.byte	0x5
	.byte	0xab
	.long	0x272
	.uleb128 0x10
	.long	.LASF53
	.byte	0x5
	.byte	0xac
	.long	0x272
	.uleb128 0x10
	.long	.LASF54
	.byte	0x6
	.byte	0x1a
	.long	0x62
	.uleb128 0xc
	.long	0x2cd
	.long	0x309
	.uleb128 0x11
	.byte	0
	.uleb128 0x10
	.long	.LASF55
	.byte	0x6
	.byte	0x1b
	.long	0x2fe
	.uleb128 0x10
	.long	.LASF56
	.byte	0x6
	.byte	0x1e
	.long	0x62
	.uleb128 0x10
	.long	.LASF57
	.byte	0x6
	.byte	0x1f
	.long	0x2fe
	.uleb128 0x8
	.long	.LASF58
	.byte	0x10
	.byte	0x7
	.byte	0x78
	.long	0x34f
	.uleb128 0x9
	.long	.LASF59
	.byte	0x7
	.byte	0x7a
	.long	0x8d
	.byte	0
	.uleb128 0x9
	.long	.LASF60
	.byte	0x7
	.byte	0x7b
	.long	0x9a
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0xa5
	.long	0x35f
	.uleb128 0xd
	.long	0x86
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF61
	.byte	0x7
	.value	0x11a
	.long	0x34f
	.uleb128 0xf
	.long	.LASF62
	.byte	0x7
	.value	0x11b
	.long	0x62
	.uleb128 0xf
	.long	.LASF63
	.byte	0x7
	.value	0x11c
	.long	0x69
	.uleb128 0xf
	.long	.LASF64
	.byte	0x7
	.value	0x121
	.long	0x34f
	.uleb128 0xf
	.long	.LASF65
	.byte	0x7
	.value	0x129
	.long	0x62
	.uleb128 0xf
	.long	.LASF66
	.byte	0x7
	.value	0x12a
	.long	0x69
	.uleb128 0xf
	.long	.LASF67
	.byte	0x7
	.value	0x193
	.long	0x62
	.uleb128 0x12
	.string	"std"
	.byte	0xc
	.byte	0
	.long	0x4ca
	.uleb128 0x13
	.long	.LASF69
	.byte	0x9
	.byte	0xdf
	.uleb128 0x14
	.byte	0x9
	.byte	0xdf
	.long	0x3be
	.uleb128 0x15
	.byte	0x8
	.byte	0x7c
	.long	0x554
	.uleb128 0x15
	.byte	0x8
	.byte	0x7d
	.long	0x584
	.uleb128 0x15
	.byte	0x8
	.byte	0x81
	.long	0x5fa
	.uleb128 0x15
	.byte	0x8
	.byte	0x84
	.long	0x617
	.uleb128 0x15
	.byte	0x8
	.byte	0x87
	.long	0x631
	.uleb128 0x15
	.byte	0x8
	.byte	0x88
	.long	0x64d
	.uleb128 0x15
	.byte	0x8
	.byte	0x89
	.long	0x662
	.uleb128 0x15
	.byte	0x8
	.byte	0x8a
	.long	0x677
	.uleb128 0x15
	.byte	0x8
	.byte	0x8c
	.long	0x6a1
	.uleb128 0x15
	.byte	0x8
	.byte	0x8f
	.long	0x6bc
	.uleb128 0x15
	.byte	0x8
	.byte	0x91
	.long	0x6d2
	.uleb128 0x15
	.byte	0x8
	.byte	0x94
	.long	0x6ed
	.uleb128 0x15
	.byte	0x8
	.byte	0x95
	.long	0x708
	.uleb128 0x15
	.byte	0x8
	.byte	0x96
	.long	0x73a
	.uleb128 0x15
	.byte	0x8
	.byte	0x98
	.long	0x75a
	.uleb128 0x15
	.byte	0x8
	.byte	0x9b
	.long	0x77b
	.uleb128 0x15
	.byte	0x8
	.byte	0x9e
	.long	0x78d
	.uleb128 0x15
	.byte	0x8
	.byte	0xa0
	.long	0x799
	.uleb128 0x15
	.byte	0x8
	.byte	0xa1
	.long	0x7ab
	.uleb128 0x15
	.byte	0x8
	.byte	0xa2
	.long	0x7cb
	.uleb128 0x15
	.byte	0x8
	.byte	0xa3
	.long	0x7ea
	.uleb128 0x15
	.byte	0x8
	.byte	0xa4
	.long	0x809
	.uleb128 0x15
	.byte	0x8
	.byte	0xa6
	.long	0x81f
	.uleb128 0x15
	.byte	0x8
	.byte	0xa7
	.long	0x845
	.uleb128 0x16
	.byte	0x8
	.value	0x104
	.long	0x5bb
	.uleb128 0x16
	.byte	0x8
	.value	0x109
	.long	0x514
	.uleb128 0x16
	.byte	0x8
	.value	0x10a
	.long	0x860
	.uleb128 0x16
	.byte	0x8
	.value	0x10c
	.long	0x87b
	.uleb128 0x16
	.byte	0x8
	.value	0x10d
	.long	0x8ce
	.uleb128 0x16
	.byte	0x8
	.value	0x10e
	.long	0x890
	.uleb128 0x16
	.byte	0x8
	.value	0x10f
	.long	0x8af
	.uleb128 0x16
	.byte	0x8
	.value	0x110
	.long	0x8ef
	.uleb128 0x17
	.string	"abs"
	.byte	0x8
	.byte	0xb9
	.long	.LASF70
	.long	0x933
	.uleb128 0x18
	.long	0x933
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF68
	.byte	0x9
	.byte	0xe1
	.long	0x52f
	.uleb128 0x13
	.long	.LASF69
	.byte	0x9
	.byte	0xe3
	.uleb128 0x14
	.byte	0x9
	.byte	0xe3
	.long	0x4d5
	.uleb128 0x15
	.byte	0x8
	.byte	0xdc
	.long	0x5bb
	.uleb128 0x15
	.byte	0x8
	.byte	0xec
	.long	0x860
	.uleb128 0x15
	.byte	0x8
	.byte	0xf7
	.long	0x87b
	.uleb128 0x15
	.byte	0x8
	.byte	0xf8
	.long	0x890
	.uleb128 0x15
	.byte	0x8
	.byte	0xf9
	.long	0x8af
	.uleb128 0x15
	.byte	0x8
	.byte	0xfb
	.long	0x8ce
	.uleb128 0x15
	.byte	0x8
	.byte	0xfc
	.long	0x8ef
	.uleb128 0x17
	.string	"div"
	.byte	0x8
	.byte	0xe9
	.long	.LASF71
	.long	0x5bb
	.uleb128 0x18
	.long	0x5b4
	.uleb128 0x18
	.long	0x5b4
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x8
	.byte	0xa
	.byte	0x3b
	.long	.LASF74
	.long	0x554
	.uleb128 0x9
	.long	.LASF72
	.byte	0xa
	.byte	0x3c
	.long	0x62
	.byte	0
	.uleb128 0x1b
	.string	"rem"
	.byte	0xa
	.byte	0x3d
	.long	0x62
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF73
	.byte	0xa
	.byte	0x3e
	.long	0x52f
	.uleb128 0x1a
	.byte	0x10
	.byte	0xa
	.byte	0x43
	.long	.LASF75
	.long	0x584
	.uleb128 0x9
	.long	.LASF72
	.byte	0xa
	.byte	0x44
	.long	0x69
	.byte	0
	.uleb128 0x1b
	.string	"rem"
	.byte	0xa
	.byte	0x45
	.long	0x69
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF76
	.byte	0xa
	.byte	0x46
	.long	0x55f
	.uleb128 0x1a
	.byte	0x10
	.byte	0xa
	.byte	0x4f
	.long	.LASF77
	.long	0x5b4
	.uleb128 0x9
	.long	.LASF72
	.byte	0xa
	.byte	0x50
	.long	0x5b4
	.byte	0
	.uleb128 0x1b
	.string	"rem"
	.byte	0xa
	.byte	0x51
	.long	0x5b4
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF78
	.uleb128 0x2
	.long	.LASF79
	.byte	0xa
	.byte	0x52
	.long	0x58f
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF80
	.uleb128 0x1c
	.long	.LASF81
	.byte	0xa
	.value	0x2be
	.long	0x5d9
	.uleb128 0x6
	.byte	0x8
	.long	0x5df
	.uleb128 0x1d
	.long	0x62
	.long	0x5f3
	.uleb128 0x18
	.long	0x5f3
	.uleb128 0x18
	.long	0x5f3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5f9
	.uleb128 0x1e
	.uleb128 0x1f
	.long	.LASF82
	.byte	0xa
	.value	0x1e0
	.long	0x62
	.long	0x610
	.uleb128 0x18
	.long	0x610
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x616
	.uleb128 0x20
	.uleb128 0x21
	.long	.LASF124
	.byte	0xa
	.value	0x1e5
	.long	.LASF124
	.long	0x62
	.long	0x631
	.uleb128 0x18
	.long	0x610
	.byte	0
	.uleb128 0x22
	.long	.LASF83
	.byte	0xa
	.byte	0x69
	.long	0x646
	.long	0x646
	.uleb128 0x18
	.long	0x2c7
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF84
	.uleb128 0x22
	.long	.LASF85
	.byte	0xa
	.byte	0x6c
	.long	0x62
	.long	0x662
	.uleb128 0x18
	.long	0x2c7
	.byte	0
	.uleb128 0x22
	.long	.LASF86
	.byte	0xa
	.byte	0x6f
	.long	0x69
	.long	0x677
	.uleb128 0x18
	.long	0x2c7
	.byte	0
	.uleb128 0x1f
	.long	.LASF87
	.byte	0xa
	.value	0x2cb
	.long	0x98
	.long	0x6a1
	.uleb128 0x18
	.long	0x5f3
	.uleb128 0x18
	.long	0x5f3
	.uleb128 0x18
	.long	0x2d
	.uleb128 0x18
	.long	0x2d
	.uleb128 0x18
	.long	0x5cd
	.byte	0
	.uleb128 0x23
	.string	"div"
	.byte	0xa
	.value	0x2ed
	.long	0x554
	.long	0x6bc
	.uleb128 0x18
	.long	0x62
	.uleb128 0x18
	.long	0x62
	.byte	0
	.uleb128 0x1f
	.long	.LASF88
	.byte	0xa
	.value	0x20d
	.long	0xa5
	.long	0x6d2
	.uleb128 0x18
	.long	0x2c7
	.byte	0
	.uleb128 0x1f
	.long	.LASF89
	.byte	0xa
	.value	0x2ef
	.long	0x584
	.long	0x6ed
	.uleb128 0x18
	.long	0x69
	.uleb128 0x18
	.long	0x69
	.byte	0
	.uleb128 0x1f
	.long	.LASF90
	.byte	0xa
	.value	0x337
	.long	0x62
	.long	0x708
	.uleb128 0x18
	.long	0x2c7
	.uleb128 0x18
	.long	0x2d
	.byte	0
	.uleb128 0x1f
	.long	.LASF91
	.byte	0xa
	.value	0x342
	.long	0x2d
	.long	0x728
	.uleb128 0x18
	.long	0x728
	.uleb128 0x18
	.long	0x2c7
	.uleb128 0x18
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x72e
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF92
	.uleb128 0x7
	.long	0x72e
	.uleb128 0x1f
	.long	.LASF93
	.byte	0xa
	.value	0x33a
	.long	0x62
	.long	0x75a
	.uleb128 0x18
	.long	0x728
	.uleb128 0x18
	.long	0x2c7
	.uleb128 0x18
	.long	0x2d
	.byte	0
	.uleb128 0x24
	.long	.LASF95
	.byte	0xa
	.value	0x2d5
	.long	0x77b
	.uleb128 0x18
	.long	0x98
	.uleb128 0x18
	.long	0x2d
	.uleb128 0x18
	.long	0x2d
	.uleb128 0x18
	.long	0x5cd
	.byte	0
	.uleb128 0x25
	.long	.LASF94
	.byte	0xa
	.value	0x1fe
	.long	0x78d
	.uleb128 0x18
	.long	0x62
	.byte	0
	.uleb128 0x26
	.long	.LASF125
	.byte	0xa
	.value	0x14f
	.long	0x62
	.uleb128 0x24
	.long	.LASF96
	.byte	0xa
	.value	0x151
	.long	0x7ab
	.uleb128 0x18
	.long	0x4d
	.byte	0
	.uleb128 0x22
	.long	.LASF97
	.byte	0xa
	.byte	0x7d
	.long	0x646
	.long	0x7c5
	.uleb128 0x18
	.long	0x2c7
	.uleb128 0x18
	.long	0x7c5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa5
	.uleb128 0x22
	.long	.LASF98
	.byte	0xa
	.byte	0x90
	.long	0x69
	.long	0x7ea
	.uleb128 0x18
	.long	0x2c7
	.uleb128 0x18
	.long	0x7c5
	.uleb128 0x18
	.long	0x62
	.byte	0
	.uleb128 0x22
	.long	.LASF99
	.byte	0xa
	.byte	0x94
	.long	0x38
	.long	0x809
	.uleb128 0x18
	.long	0x2c7
	.uleb128 0x18
	.long	0x7c5
	.uleb128 0x18
	.long	0x62
	.byte	0
	.uleb128 0x1f
	.long	.LASF100
	.byte	0xa
	.value	0x2a5
	.long	0x62
	.long	0x81f
	.uleb128 0x18
	.long	0x2c7
	.byte	0
	.uleb128 0x1f
	.long	.LASF101
	.byte	0xa
	.value	0x345
	.long	0x2d
	.long	0x83f
	.uleb128 0x18
	.long	0xa5
	.uleb128 0x18
	.long	0x83f
	.uleb128 0x18
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x735
	.uleb128 0x1f
	.long	.LASF102
	.byte	0xa
	.value	0x33e
	.long	0x62
	.long	0x860
	.uleb128 0x18
	.long	0xa5
	.uleb128 0x18
	.long	0x72e
	.byte	0
	.uleb128 0x1f
	.long	.LASF103
	.byte	0xa
	.value	0x2f5
	.long	0x5bb
	.long	0x87b
	.uleb128 0x18
	.long	0x5b4
	.uleb128 0x18
	.long	0x5b4
	.byte	0
	.uleb128 0x22
	.long	.LASF104
	.byte	0xa
	.byte	0x76
	.long	0x5b4
	.long	0x890
	.uleb128 0x18
	.long	0x2c7
	.byte	0
	.uleb128 0x22
	.long	.LASF105
	.byte	0xa
	.byte	0xaa
	.long	0x5b4
	.long	0x8af
	.uleb128 0x18
	.long	0x2c7
	.uleb128 0x18
	.long	0x7c5
	.uleb128 0x18
	.long	0x62
	.byte	0
	.uleb128 0x22
	.long	.LASF106
	.byte	0xa
	.byte	0xaf
	.long	0x5c6
	.long	0x8ce
	.uleb128 0x18
	.long	0x2c7
	.uleb128 0x18
	.long	0x7c5
	.uleb128 0x18
	.long	0x62
	.byte	0
	.uleb128 0x22
	.long	.LASF107
	.byte	0xa
	.byte	0x85
	.long	0x8e8
	.long	0x8e8
	.uleb128 0x18
	.long	0x2c7
	.uleb128 0x18
	.long	0x7c5
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF108
	.uleb128 0x22
	.long	.LASF109
	.byte	0xa
	.byte	0x88
	.long	0x909
	.long	0x909
	.uleb128 0x18
	.long	0x2c7
	.uleb128 0x18
	.long	0x7c5
	.byte	0
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF110
	.uleb128 0x15
	.byte	0xb
	.byte	0x27
	.long	0x5fa
	.uleb128 0x15
	.byte	0xb
	.byte	0x2b
	.long	0x617
	.uleb128 0x15
	.byte	0xb
	.byte	0x2e
	.long	0x77b
	.uleb128 0x15
	.byte	0xb
	.byte	0x33
	.long	0x554
	.uleb128 0x15
	.byte	0xb
	.byte	0x34
	.long	0x584
	.uleb128 0x3
	.byte	0x10
	.byte	0x5
	.long	.LASF111
	.uleb128 0x15
	.byte	0xb
	.byte	0x36
	.long	0x4b4
	.uleb128 0x15
	.byte	0xb
	.byte	0x37
	.long	0x631
	.uleb128 0x15
	.byte	0xb
	.byte	0x38
	.long	0x64d
	.uleb128 0x15
	.byte	0xb
	.byte	0x39
	.long	0x662
	.uleb128 0x15
	.byte	0xb
	.byte	0x3a
	.long	0x677
	.uleb128 0x15
	.byte	0xb
	.byte	0x3c
	.long	0x514
	.uleb128 0x15
	.byte	0xb
	.byte	0x3e
	.long	0x6bc
	.uleb128 0x15
	.byte	0xb
	.byte	0x40
	.long	0x6d2
	.uleb128 0x15
	.byte	0xb
	.byte	0x43
	.long	0x6ed
	.uleb128 0x15
	.byte	0xb
	.byte	0x44
	.long	0x708
	.uleb128 0x15
	.byte	0xb
	.byte	0x45
	.long	0x73a
	.uleb128 0x15
	.byte	0xb
	.byte	0x47
	.long	0x75a
	.uleb128 0x15
	.byte	0xb
	.byte	0x48
	.long	0x78d
	.uleb128 0x15
	.byte	0xb
	.byte	0x4a
	.long	0x799
	.uleb128 0x15
	.byte	0xb
	.byte	0x4b
	.long	0x7ab
	.uleb128 0x15
	.byte	0xb
	.byte	0x4c
	.long	0x7cb
	.uleb128 0x15
	.byte	0xb
	.byte	0x4d
	.long	0x7ea
	.uleb128 0x15
	.byte	0xb
	.byte	0x4e
	.long	0x809
	.uleb128 0x15
	.byte	0xb
	.byte	0x50
	.long	0x81f
	.uleb128 0x15
	.byte	0xb
	.byte	0x51
	.long	0x845
	.uleb128 0x27
	.long	.LASF117
	.byte	0x1
	.byte	0xd
	.long	0x62
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xa72
	.uleb128 0x28
	.long	.LASF112
	.byte	0x1
	.byte	0xd
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x28
	.long	.LASF113
	.byte	0x1
	.byte	0xd
	.long	0x7c5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x29
	.string	"n"
	.byte	0x1
	.byte	0x13
	.long	0x4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.string	"a"
	.byte	0x1
	.byte	0x14
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x29
	.string	"y"
	.byte	0x1
	.byte	0x15
	.long	0xa72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.byte	0x15
	.long	0xa72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.byte	0x19
	.long	0x4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2a
	.long	.LASF114
	.byte	0x1
	.byte	0x1f
	.long	0x32a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF115
	.byte	0x1
	.byte	0x1f
	.long	0x32a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF116
	.byte	0x1
	.byte	0x1f
	.long	0x646
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x62
	.uleb128 0x2b
	.long	.LASF118
	.byte	0x1
	.byte	0x5
	.long	.LASF126
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xaf3
	.uleb128 0x2c
	.string	"y"
	.byte	0x1
	.byte	0x5
	.long	0xa72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.byte	0x5
	.long	0xa72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"a"
	.byte	0x1
	.byte	0x5
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.string	"n"
	.byte	0x1
	.byte	0x5
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF114
	.byte	0x1
	.byte	0x5
	.long	0xaf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF115
	.byte	0x1
	.byte	0x5
	.long	0xaf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.byte	0x7
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x32a
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF88:
	.string	"getenv"
.LASF33:
	.string	"_shortbuf"
.LASF125:
	.string	"rand"
.LASF122:
	.string	"_IO_lock_t"
.LASF53:
	.string	"stderr"
.LASF100:
	.string	"system"
.LASF22:
	.string	"_IO_buf_end"
.LASF90:
	.string	"mblen"
.LASF20:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF68:
	.string	"__gnu_cxx"
.LASF67:
	.string	"getdate_err"
.LASF14:
	.string	"_flags"
.LASF92:
	.string	"wchar_t"
.LASF26:
	.string	"_markers"
.LASF56:
	.string	"_sys_nerr"
.LASF71:
	.string	"_ZN9__gnu_cxx3divExx"
.LASF118:
	.string	"daxpy"
.LASF106:
	.string	"strtoull"
.LASF116:
	.string	"ncgt"
.LASF63:
	.string	"__timezone"
.LASF109:
	.string	"strtold"
.LASF70:
	.string	"_ZSt3absn"
.LASF105:
	.string	"strtoll"
.LASF47:
	.string	"_pos"
.LASF114:
	.string	"cgt1"
.LASF115:
	.string	"cgt2"
.LASF52:
	.string	"stdout"
.LASF93:
	.string	"mbtowc"
.LASF25:
	.string	"_IO_save_end"
.LASF108:
	.string	"float"
.LASF80:
	.string	"long long unsigned int"
.LASF102:
	.string	"wctomb"
.LASF55:
	.string	"sys_errlist"
.LASF24:
	.string	"_IO_backup_base"
.LASF35:
	.string	"_offset"
.LASF126:
	.string	"_Z5daxpyPiS_ijP8timespecS1_"
.LASF54:
	.string	"sys_nerr"
.LASF103:
	.string	"lldiv"
.LASF104:
	.string	"atoll"
.LASF28:
	.string	"_fileno"
.LASF60:
	.string	"tv_nsec"
.LASF7:
	.string	"size_t"
.LASF96:
	.string	"srand"
.LASF17:
	.string	"_IO_read_base"
.LASF87:
	.string	"bsearch"
.LASF112:
	.string	"argc"
.LASF51:
	.string	"stdin"
.LASF45:
	.string	"_next"
.LASF58:
	.string	"timespec"
.LASF13:
	.string	"char"
.LASF41:
	.string	"_mode"
.LASF74:
	.string	"5div_t"
.LASF62:
	.string	"__daylight"
.LASF64:
	.string	"tzname"
.LASF44:
	.string	"_IO_marker"
.LASF15:
	.string	"_IO_read_ptr"
.LASF94:
	.string	"quick_exit"
.LASF72:
	.string	"quot"
.LASF91:
	.string	"mbstowcs"
.LASF18:
	.string	"_IO_write_base"
.LASF48:
	.string	"_IO_2_1_stdin_"
.LASF78:
	.string	"long long int"
.LASF49:
	.string	"_IO_2_1_stdout_"
.LASF23:
	.string	"_IO_save_base"
.LASF69:
	.string	"__cxx11"
.LASF121:
	.string	"/home/migue/GIT/AC/BP4/Codigo Ensamblador"
.LASF12:
	.string	"__syscall_slong_t"
.LASF89:
	.string	"ldiv"
.LASF81:
	.string	"__compar_fn_t"
.LASF36:
	.string	"__pad1"
.LASF37:
	.string	"__pad2"
.LASF38:
	.string	"__pad3"
.LASF39:
	.string	"__pad4"
.LASF40:
	.string	"__pad5"
.LASF32:
	.string	"_vtable_offset"
.LASF113:
	.string	"argv"
.LASF110:
	.string	"long double"
.LASF117:
	.string	"main"
.LASF66:
	.string	"timezone"
.LASF16:
	.string	"_IO_read_end"
.LASF5:
	.string	"short int"
.LASF119:
	.string	"GNU C++14 6.3.0 20170406 -mtune=generic -march=x86-64 -g -O0 -fstack-protector-strong"
.LASF6:
	.string	"long int"
.LASF82:
	.string	"atexit"
.LASF123:
	.string	"_IO_FILE_plus"
.LASF76:
	.string	"ldiv_t"
.LASF124:
	.string	"at_quick_exit"
.LASF34:
	.string	"_lock"
.LASF59:
	.string	"tv_sec"
.LASF10:
	.string	"sizetype"
.LASF99:
	.string	"strtoul"
.LASF0:
	.string	"long unsigned int"
.LASF30:
	.string	"_old_offset"
.LASF43:
	.string	"_IO_FILE"
.LASF111:
	.string	"__int128"
.LASF73:
	.string	"div_t"
.LASF1:
	.string	"unsigned char"
.LASF120:
	.string	"../FuentesCreadas/daxpy.c"
.LASF61:
	.string	"__tzname"
.LASF46:
	.string	"_sbuf"
.LASF19:
	.string	"_IO_write_ptr"
.LASF97:
	.string	"strtod"
.LASF107:
	.string	"strtof"
.LASF101:
	.string	"wcstombs"
.LASF98:
	.string	"strtol"
.LASF11:
	.string	"__time_t"
.LASF75:
	.string	"6ldiv_t"
.LASF65:
	.string	"daylight"
.LASF8:
	.string	"__off_t"
.LASF77:
	.string	"7lldiv_t"
.LASF4:
	.string	"signed char"
.LASF2:
	.string	"short unsigned int"
.LASF79:
	.string	"lldiv_t"
.LASF83:
	.string	"atof"
.LASF57:
	.string	"_sys_errlist"
.LASF85:
	.string	"atoi"
.LASF86:
	.string	"atol"
.LASF84:
	.string	"double"
.LASF27:
	.string	"_chain"
.LASF29:
	.string	"_flags2"
.LASF31:
	.string	"_cur_column"
.LASF50:
	.string	"_IO_2_1_stderr_"
.LASF9:
	.string	"__off64_t"
.LASF42:
	.string	"_unused2"
.LASF21:
	.string	"_IO_buf_base"
.LASF95:
	.string	"qsort"
	.ident	"GCC: (Ubuntu 6.3.0-12ubuntu2) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
