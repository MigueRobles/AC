	.file	"figura1-modificado-a.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"R[0] = %i, R[39999] = %i\n"
.LC2:
	.string	"\nTiempo (seg.) = %11.9f\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB50:
	.file 1 "../FuentesModificados/figura1-modificado-a.c"
	.loc 1 11 0
	.cfi_startproc
.LVL0:
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	leaq	5056+s(%rip), %r12
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	leaq	s(%rip), %rbx
	subq	$160064, %rsp
	.cfi_def_cfa_offset 160096
	.loc 1 11 0
	movq	%rbx, %rbp
	movq	%fs:40, %rax
	movq	%rax, 160056(%rsp)
	xorl	%eax, %eax
.LVL1:
.L2:
.LBB7:
	.loc 1 18 0 discriminator 2
	call	rand@PLT
.LVL2:
	cltd
	shrl	$29, %edx
	addl	%edx, %eax
	andl	$7, %eax
	subl	%edx, %eax
	movl	%eax, 0(%rbp)
	.loc 1 19 0 discriminator 2
	call	rand@PLT
.LVL3:
	cltd
	shrl	$29, %edx
	addl	%edx, %eax
	andl	$7, %eax
	subl	%edx, %eax
	movl	%eax, 16(%rbp)
	.loc 1 20 0 discriminator 2
	call	rand@PLT
.LVL4:
	cltd
	shrl	$29, %edx
	addl	%edx, %eax
	andl	$7, %eax
	subl	%edx, %eax
	movl	%eax, 24(%rbp)
	.loc 1 21 0 discriminator 2
	call	rand@PLT
.LVL5:
	cltd
	shrl	$29, %edx
	addl	%edx, %eax
	andl	$7, %eax
	subl	%edx, %eax
	movl	%eax, 32(%rbp)
	.loc 1 22 0 discriminator 2
	call	rand@PLT
.LVL6:
	cltd
	shrl	$29, %edx
	addl	%edx, %eax
	andl	$7, %eax
	subl	%edx, %eax
	movl	%eax, 40(%rbp)
	.loc 1 23 0 discriminator 2
	call	rand@PLT
.LVL7:
	cltd
	shrl	$29, %edx
	addl	%edx, %eax
	andl	$7, %eax
	subl	%edx, %eax
	movl	%eax, 48(%rbp)
	.loc 1 24 0 discriminator 2
	call	rand@PLT
.LVL8:
	cltd
	shrl	$29, %edx
	addl	%edx, %eax
	andl	$7, %eax
	subl	%edx, %eax
	movl	%eax, 56(%rbp)
	.loc 1 25 0 discriminator 2
	call	rand@PLT
.LVL9:
	cltd
	shrl	$29, %edx
	addl	%edx, %eax
	andl	$7, %eax
	subl	%edx, %eax
	movl	%eax, 64(%rbp)
	.loc 1 26 0 discriminator 2
	call	rand@PLT
.LVL10:
	cltd
	shrl	$29, %edx
	addl	%edx, %eax
	andl	$7, %eax
	subl	%edx, %eax
	movl	%eax, 4(%rbp)
	.loc 1 27 0 discriminator 2
	call	rand@PLT
.LVL11:
	cltd
	shrl	$29, %edx
	addl	%edx, %eax
	andl	$7, %eax
	subl	%edx, %eax
	movl	%eax, 20(%rbp)
	.loc 1 28 0 discriminator 2
	call	rand@PLT
.LVL12:
	cltd
	shrl	$29, %edx
	addl	%edx, %eax
	andl	$7, %eax
	subl	%edx, %eax
	movl	%eax, 28(%rbp)
	.loc 1 29 0 discriminator 2
	call	rand@PLT
.LVL13:
	cltd
	shrl	$29, %edx
	addl	%edx, %eax
	andl	$7, %eax
	subl	%edx, %eax
	movl	%eax, 36(%rbp)
	.loc 1 30 0 discriminator 2
	call	rand@PLT
.LVL14:
	cltd
	shrl	$29, %edx
	addl	%edx, %eax
	andl	$7, %eax
	subl	%edx, %eax
	movl	%eax, 44(%rbp)
	.loc 1 31 0 discriminator 2
	call	rand@PLT
.LVL15:
	cltd
	shrl	$29, %edx
	addl	%edx, %eax
	andl	$7, %eax
	subl	%edx, %eax
	movl	%eax, 52(%rbp)
	.loc 1 32 0 discriminator 2
	call	rand@PLT
.LVL16:
	cltd
	shrl	$29, %edx
	addl	%edx, %eax
	andl	$7, %eax
	subl	%edx, %eax
	movl	%eax, 60(%rbp)
	.loc 1 33 0 discriminator 2
	call	rand@PLT
.LVL17:
	cltd
	shrl	$29, %edx
	addl	%edx, %eax
	andl	$7, %eax
	subl	%edx, %eax
	addq	$64, %rbp
	movl	%eax, 4(%rbp)
	.loc 1 17 0 discriminator 2
	cmpq	%r12, %rbp
	jne	.L2
.LBE7:
	.loc 1 36 0
	leaq	16(%rsp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
.LVL18:
	leaq	40000+s(%rip), %r8
	leaq	48(%rsp), %r10
	movl	$1, %r9d
.LVL19:
	.p2align 4,,10
	.p2align 3
.L4:
	movl	%r9d, %edi
.LVL20:
	movq	%rbx, %rax
	xorl	%esi, %esi
	xorl	%ecx, %ecx
.LVL21:
	.p2align 4,,10
	.p2align 3
.L3:
	.loc 1 42 0 discriminator 2
	movl	(%rax), %edx
	addq	$8, %rax
	leal	(%rdi,%rdx,2), %edx
	addl	%edx, %ecx
.LVL22:
	.loc 1 43 0 discriminator 2
	movl	-4(%rax), %edx
	leal	(%rdx,%rdx,2), %edx
	subl	%edi, %edx
	addl	%edx, %esi
.LVL23:
	.loc 1 41 0 discriminator 2
	cmpq	%rax, %r8
	jne	.L3
	.loc 1 46 0
	cmpl	%esi, %ecx
	cmovg	%esi, %ecx
.LVL24:
	movl	%ecx, (%r10,%r9,4)
.LVL25:
	addq	$1, %r9
	.loc 1 38 0
	cmpq	$40000, %r9
	jne	.L4
	.loc 1 50 0
	leaq	32(%rsp), %rsi
.LVL26:
	xorl	%edi, %edi
.LVL27:
	call	clock_gettime@PLT
.LVL28:
	.loc 1 51 0
	movq	40(%rsp), %rax
	subq	24(%rsp), %rax
.LBB8:
.LBB9:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0
	leaq	.LC1(%rip), %rsi
.LBE9:
.LBE8:
	.loc 1 51 0
	pxor	%xmm0, %xmm0
.LBB14:
.LBB10:
	.loc 2 104 0
	movl	160044(%rsp), %ecx
.LBE10:
.LBE14:
	.loc 1 51 0
	pxor	%xmm1, %xmm1
.LBB15:
.LBB11:
	.loc 2 104 0
	movl	48(%rsp), %edx
	movl	$1, %edi
.LBE11:
.LBE15:
	.loc 1 51 0
	cvtsi2sdq	%rax, %xmm0
	movq	32(%rsp), %rax
	subq	16(%rsp), %rax
	cvtsi2sdq	%rax, %xmm1
.LBB16:
.LBB12:
	.loc 2 104 0
	xorl	%eax, %eax
.LBE12:
.LBE16:
	.loc 1 51 0
	divsd	.LC0(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rsp)
.LVL29:
.LBB17:
.LBB13:
	.loc 2 104 0
	call	__printf_chk@PLT
.LVL30:
.LBE13:
.LBE17:
.LBB18:
.LBB19:
	movsd	8(%rsp), %xmm0
	leaq	.LC2(%rip), %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
.LVL31:
.LBE19:
.LBE18:
	.loc 1 57 0
	xorl	%eax, %eax
	movq	160056(%rsp), %rbx
	xorq	%fs:40, %rbx
	jne	.L11
	addq	$160064, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L11:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL32:
	.cfi_endproc
.LFE50:
	.size	main, .-main
	.local	s
	.comm	s,40000,32
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1104006501
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/6/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/stdio.h"
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
	.long	0xcce
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF121
	.byte	0x4
	.long	.LASF122
	.long	.LASF123
	.long	.Ldebug_ranges0+0x60
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
	.uleb128 0x8
	.long	.LASF44
	.byte	0xd8
	.byte	0x5
	.byte	0xf1
	.long	0x237
	.uleb128 0x9
	.long	.LASF15
	.byte	0x5
	.byte	0xf2
	.long	0x65
	.byte	0
	.uleb128 0x9
	.long	.LASF16
	.byte	0x5
	.byte	0xf7
	.long	0xa8
	.byte	0x8
	.uleb128 0x9
	.long	.LASF17
	.byte	0x5
	.byte	0xf8
	.long	0xa8
	.byte	0x10
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.byte	0xf9
	.long	0xa8
	.byte	0x18
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.byte	0xfa
	.long	0xa8
	.byte	0x20
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.byte	0xfb
	.long	0xa8
	.byte	0x28
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.byte	0xfc
	.long	0xa8
	.byte	0x30
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.byte	0xfd
	.long	0xa8
	.byte	0x38
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.byte	0xfe
	.long	0xa8
	.byte	0x40
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.value	0x100
	.long	0xa8
	.byte	0x48
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.value	0x101
	.long	0xa8
	.byte	0x50
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.value	0x102
	.long	0xa8
	.byte	0x58
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.value	0x104
	.long	0x26f
	.byte	0x60
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.value	0x106
	.long	0x275
	.byte	0x68
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.value	0x108
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.value	0x10c
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.value	0x10e
	.long	0x73
	.byte	0x78
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.value	0x112
	.long	0x49
	.byte	0x80
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.value	0x113
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.value	0x114
	.long	0x27b
	.byte	0x83
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.value	0x118
	.long	0x28b
	.byte	0x88
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.value	0x121
	.long	0x7e
	.byte	0x90
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.value	0x129
	.long	0x9b
	.byte	0x98
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.value	0x12a
	.long	0x9b
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.value	0x12b
	.long	0x9b
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.value	0x12c
	.long	0x9b
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.value	0x12e
	.long	0x30
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF42
	.byte	0x5
	.value	0x12f
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF43
	.byte	0x5
	.value	0x131
	.long	0x291
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF124
	.byte	0x5
	.byte	0x96
	.uleb128 0x8
	.long	.LASF45
	.byte	0x18
	.byte	0x5
	.byte	0x9c
	.long	0x26f
	.uleb128 0x9
	.long	.LASF46
	.byte	0x5
	.byte	0x9d
	.long	0x26f
	.byte	0
	.uleb128 0x9
	.long	.LASF47
	.byte	0x5
	.byte	0x9e
	.long	0x275
	.byte	0x8
	.uleb128 0x9
	.long	.LASF48
	.byte	0x5
	.byte	0xa2
	.long	0x65
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x23e
	.uleb128 0x6
	.byte	0x8
	.long	0xba
	.uleb128 0xc
	.long	0xae
	.long	0x28b
	.uleb128 0xd
	.long	0x89
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x237
	.uleb128 0xc
	.long	0xae
	.long	0x2a1
	.uleb128 0xd
	.long	0x89
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF125
	.uleb128 0xf
	.long	.LASF49
	.byte	0x5
	.value	0x13b
	.long	0x2a1
	.uleb128 0xf
	.long	.LASF50
	.byte	0x5
	.value	0x13c
	.long	0x2a1
	.uleb128 0xf
	.long	.LASF51
	.byte	0x5
	.value	0x13d
	.long	0x2a1
	.uleb128 0x6
	.byte	0x8
	.long	0xb5
	.uleb128 0x7
	.long	0x2ca
	.uleb128 0x10
	.long	0x2ca
	.uleb128 0x11
	.long	.LASF52
	.byte	0x6
	.byte	0xaa
	.long	0x275
	.uleb128 0x11
	.long	.LASF53
	.byte	0x6
	.byte	0xab
	.long	0x275
	.uleb128 0x11
	.long	.LASF54
	.byte	0x6
	.byte	0xac
	.long	0x275
	.uleb128 0x11
	.long	.LASF55
	.byte	0x7
	.byte	0x1a
	.long	0x65
	.uleb128 0xc
	.long	0x2d0
	.long	0x311
	.uleb128 0x12
	.byte	0
	.uleb128 0x11
	.long	.LASF56
	.byte	0x7
	.byte	0x1b
	.long	0x306
	.uleb128 0x11
	.long	.LASF57
	.byte	0x7
	.byte	0x1e
	.long	0x65
	.uleb128 0x11
	.long	.LASF58
	.byte	0x7
	.byte	0x1f
	.long	0x306
	.uleb128 0x8
	.long	.LASF59
	.byte	0x10
	.byte	0x8
	.byte	0x78
	.long	0x357
	.uleb128 0x9
	.long	.LASF60
	.byte	0x8
	.byte	0x7a
	.long	0x90
	.byte	0
	.uleb128 0x9
	.long	.LASF61
	.byte	0x8
	.byte	0x7b
	.long	0x9d
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0xa8
	.long	0x367
	.uleb128 0xd
	.long	0x89
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF62
	.byte	0x8
	.value	0x11a
	.long	0x357
	.uleb128 0xf
	.long	.LASF63
	.byte	0x8
	.value	0x11b
	.long	0x65
	.uleb128 0xf
	.long	.LASF64
	.byte	0x8
	.value	0x11c
	.long	0x6c
	.uleb128 0xf
	.long	.LASF65
	.byte	0x8
	.value	0x121
	.long	0x357
	.uleb128 0xf
	.long	.LASF66
	.byte	0x8
	.value	0x129
	.long	0x65
	.uleb128 0xf
	.long	.LASF67
	.byte	0x8
	.value	0x12a
	.long	0x6c
	.uleb128 0xf
	.long	.LASF68
	.byte	0x8
	.value	0x193
	.long	0x65
	.uleb128 0x13
	.string	"std"
	.byte	0x10
	.byte	0
	.long	0x4d2
	.uleb128 0x14
	.long	.LASF70
	.byte	0xa
	.byte	0xdf
	.uleb128 0x15
	.byte	0xa
	.byte	0xdf
	.long	0x3c6
	.uleb128 0x16
	.byte	0x9
	.byte	0x7c
	.long	0x55c
	.uleb128 0x16
	.byte	0x9
	.byte	0x7d
	.long	0x58c
	.uleb128 0x16
	.byte	0x9
	.byte	0x81
	.long	0x602
	.uleb128 0x16
	.byte	0x9
	.byte	0x84
	.long	0x61f
	.uleb128 0x16
	.byte	0x9
	.byte	0x87
	.long	0x639
	.uleb128 0x16
	.byte	0x9
	.byte	0x88
	.long	0x64e
	.uleb128 0x16
	.byte	0x9
	.byte	0x89
	.long	0x663
	.uleb128 0x16
	.byte	0x9
	.byte	0x8a
	.long	0x678
	.uleb128 0x16
	.byte	0x9
	.byte	0x8c
	.long	0x6a1
	.uleb128 0x16
	.byte	0x9
	.byte	0x8f
	.long	0x6bc
	.uleb128 0x16
	.byte	0x9
	.byte	0x91
	.long	0x6d2
	.uleb128 0x16
	.byte	0x9
	.byte	0x94
	.long	0x6ed
	.uleb128 0x16
	.byte	0x9
	.byte	0x95
	.long	0x708
	.uleb128 0x16
	.byte	0x9
	.byte	0x96
	.long	0x739
	.uleb128 0x16
	.byte	0x9
	.byte	0x98
	.long	0x759
	.uleb128 0x16
	.byte	0x9
	.byte	0x9b
	.long	0x77a
	.uleb128 0x16
	.byte	0x9
	.byte	0x9e
	.long	0x78c
	.uleb128 0x16
	.byte	0x9
	.byte	0xa0
	.long	0x798
	.uleb128 0x16
	.byte	0x9
	.byte	0xa1
	.long	0x7aa
	.uleb128 0x16
	.byte	0x9
	.byte	0xa2
	.long	0x7ca
	.uleb128 0x16
	.byte	0x9
	.byte	0xa3
	.long	0x7e9
	.uleb128 0x16
	.byte	0x9
	.byte	0xa4
	.long	0x808
	.uleb128 0x16
	.byte	0x9
	.byte	0xa6
	.long	0x81e
	.uleb128 0x16
	.byte	0x9
	.byte	0xa7
	.long	0x843
	.uleb128 0x17
	.byte	0x9
	.value	0x104
	.long	0x5c3
	.uleb128 0x17
	.byte	0x9
	.value	0x109
	.long	0x51c
	.uleb128 0x17
	.byte	0x9
	.value	0x10a
	.long	0x85d
	.uleb128 0x17
	.byte	0x9
	.value	0x10c
	.long	0x878
	.uleb128 0x17
	.byte	0x9
	.value	0x10d
	.long	0x8cb
	.uleb128 0x17
	.byte	0x9
	.value	0x10e
	.long	0x88d
	.uleb128 0x17
	.byte	0x9
	.value	0x10f
	.long	0x8ac
	.uleb128 0x17
	.byte	0x9
	.value	0x110
	.long	0x8ec
	.uleb128 0x18
	.string	"abs"
	.byte	0x9
	.byte	0xb9
	.long	.LASF71
	.long	0x930
	.uleb128 0x19
	.long	0x930
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF69
	.byte	0xa
	.byte	0xe1
	.long	0x537
	.uleb128 0x14
	.long	.LASF70
	.byte	0xa
	.byte	0xe3
	.uleb128 0x15
	.byte	0xa
	.byte	0xe3
	.long	0x4dd
	.uleb128 0x16
	.byte	0x9
	.byte	0xdc
	.long	0x5c3
	.uleb128 0x16
	.byte	0x9
	.byte	0xec
	.long	0x85d
	.uleb128 0x16
	.byte	0x9
	.byte	0xf7
	.long	0x878
	.uleb128 0x16
	.byte	0x9
	.byte	0xf8
	.long	0x88d
	.uleb128 0x16
	.byte	0x9
	.byte	0xf9
	.long	0x8ac
	.uleb128 0x16
	.byte	0x9
	.byte	0xfb
	.long	0x8cb
	.uleb128 0x16
	.byte	0x9
	.byte	0xfc
	.long	0x8ec
	.uleb128 0x18
	.string	"div"
	.byte	0x9
	.byte	0xe9
	.long	.LASF72
	.long	0x5c3
	.uleb128 0x19
	.long	0x5bc
	.uleb128 0x19
	.long	0x5bc
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x8
	.byte	0xb
	.byte	0x3b
	.long	.LASF75
	.long	0x55c
	.uleb128 0x9
	.long	.LASF73
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
	.long	.LASF74
	.byte	0xb
	.byte	0x3e
	.long	0x537
	.uleb128 0x1b
	.byte	0x10
	.byte	0xb
	.byte	0x43
	.long	.LASF76
	.long	0x58c
	.uleb128 0x9
	.long	.LASF73
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
	.long	.LASF77
	.byte	0xb
	.byte	0x46
	.long	0x567
	.uleb128 0x1b
	.byte	0x10
	.byte	0xb
	.byte	0x4f
	.long	.LASF78
	.long	0x5bc
	.uleb128 0x9
	.long	.LASF73
	.byte	0xb
	.byte	0x50
	.long	0x5bc
	.byte	0
	.uleb128 0x1c
	.string	"rem"
	.byte	0xb
	.byte	0x51
	.long	0x5bc
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF79
	.uleb128 0x3
	.long	.LASF80
	.byte	0xb
	.byte	0x52
	.long	0x597
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF81
	.uleb128 0x1d
	.long	.LASF82
	.byte	0xb
	.value	0x2be
	.long	0x5e1
	.uleb128 0x6
	.byte	0x8
	.long	0x5e7
	.uleb128 0x1e
	.long	0x65
	.long	0x5fb
	.uleb128 0x19
	.long	0x5fb
	.uleb128 0x19
	.long	0x5fb
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x601
	.uleb128 0x1f
	.uleb128 0x20
	.long	.LASF83
	.byte	0xb
	.value	0x1e0
	.long	0x65
	.long	0x618
	.uleb128 0x19
	.long	0x618
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x61e
	.uleb128 0x21
	.uleb128 0x22
	.long	.LASF117
	.byte	0xb
	.value	0x1e5
	.long	.LASF117
	.long	0x65
	.long	0x639
	.uleb128 0x19
	.long	0x618
	.byte	0
	.uleb128 0x23
	.long	.LASF84
	.byte	0xc
	.byte	0x1a
	.long	0x29
	.long	0x64e
	.uleb128 0x19
	.long	0x2ca
	.byte	0
	.uleb128 0x23
	.long	.LASF85
	.byte	0xb
	.byte	0xef
	.long	0x65
	.long	0x663
	.uleb128 0x19
	.long	0x2ca
	.byte	0
	.uleb128 0x23
	.long	.LASF86
	.byte	0xb
	.byte	0xf4
	.long	0x6c
	.long	0x678
	.uleb128 0x19
	.long	0x2ca
	.byte	0
	.uleb128 0x23
	.long	.LASF87
	.byte	0xd
	.byte	0x14
	.long	0x9b
	.long	0x6a1
	.uleb128 0x19
	.long	0x5fb
	.uleb128 0x19
	.long	0x5fb
	.uleb128 0x19
	.long	0x30
	.uleb128 0x19
	.long	0x30
	.uleb128 0x19
	.long	0x5d5
	.byte	0
	.uleb128 0x24
	.string	"div"
	.byte	0xb
	.value	0x2ed
	.long	0x55c
	.long	0x6bc
	.uleb128 0x19
	.long	0x65
	.uleb128 0x19
	.long	0x65
	.byte	0
	.uleb128 0x20
	.long	.LASF88
	.byte	0xb
	.value	0x20d
	.long	0xa8
	.long	0x6d2
	.uleb128 0x19
	.long	0x2ca
	.byte	0
	.uleb128 0x20
	.long	.LASF89
	.byte	0xb
	.value	0x2ef
	.long	0x58c
	.long	0x6ed
	.uleb128 0x19
	.long	0x6c
	.uleb128 0x19
	.long	0x6c
	.byte	0
	.uleb128 0x20
	.long	.LASF90
	.byte	0xb
	.value	0x337
	.long	0x65
	.long	0x708
	.uleb128 0x19
	.long	0x2ca
	.uleb128 0x19
	.long	0x30
	.byte	0
	.uleb128 0x23
	.long	.LASF91
	.byte	0xe
	.byte	0x71
	.long	0x30
	.long	0x727
	.uleb128 0x19
	.long	0x727
	.uleb128 0x19
	.long	0x2ca
	.uleb128 0x19
	.long	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x72d
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF92
	.uleb128 0x7
	.long	0x72d
	.uleb128 0x20
	.long	.LASF93
	.byte	0xb
	.value	0x33a
	.long	0x65
	.long	0x759
	.uleb128 0x19
	.long	0x727
	.uleb128 0x19
	.long	0x2ca
	.uleb128 0x19
	.long	0x30
	.byte	0
	.uleb128 0x25
	.long	.LASF95
	.byte	0xb
	.value	0x2d5
	.long	0x77a
	.uleb128 0x19
	.long	0x9b
	.uleb128 0x19
	.long	0x30
	.uleb128 0x19
	.long	0x30
	.uleb128 0x19
	.long	0x5d5
	.byte	0
	.uleb128 0x26
	.long	.LASF94
	.byte	0xb
	.value	0x1fe
	.long	0x78c
	.uleb128 0x19
	.long	0x65
	.byte	0
	.uleb128 0x27
	.long	.LASF126
	.byte	0xb
	.value	0x14f
	.long	0x65
	.uleb128 0x25
	.long	.LASF96
	.byte	0xb
	.value	0x151
	.long	0x7aa
	.uleb128 0x19
	.long	0x50
	.byte	0
	.uleb128 0x23
	.long	.LASF97
	.byte	0xb
	.byte	0x7d
	.long	0x29
	.long	0x7c4
	.uleb128 0x19
	.long	0x2ca
	.uleb128 0x19
	.long	0x7c4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa8
	.uleb128 0x23
	.long	.LASF98
	.byte	0xb
	.byte	0x90
	.long	0x6c
	.long	0x7e9
	.uleb128 0x19
	.long	0x2ca
	.uleb128 0x19
	.long	0x7c4
	.uleb128 0x19
	.long	0x65
	.byte	0
	.uleb128 0x23
	.long	.LASF99
	.byte	0xb
	.byte	0x94
	.long	0x3b
	.long	0x808
	.uleb128 0x19
	.long	0x2ca
	.uleb128 0x19
	.long	0x7c4
	.uleb128 0x19
	.long	0x65
	.byte	0
	.uleb128 0x20
	.long	.LASF100
	.byte	0xb
	.value	0x2a5
	.long	0x65
	.long	0x81e
	.uleb128 0x19
	.long	0x2ca
	.byte	0
	.uleb128 0x23
	.long	.LASF101
	.byte	0xe
	.byte	0x90
	.long	0x30
	.long	0x83d
	.uleb128 0x19
	.long	0xa8
	.uleb128 0x19
	.long	0x83d
	.uleb128 0x19
	.long	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x734
	.uleb128 0x23
	.long	.LASF102
	.byte	0xe
	.byte	0x53
	.long	0x65
	.long	0x85d
	.uleb128 0x19
	.long	0xa8
	.uleb128 0x19
	.long	0x72d
	.byte	0
	.uleb128 0x20
	.long	.LASF103
	.byte	0xb
	.value	0x2f5
	.long	0x5c3
	.long	0x878
	.uleb128 0x19
	.long	0x5bc
	.uleb128 0x19
	.long	0x5bc
	.byte	0
	.uleb128 0x23
	.long	.LASF104
	.byte	0xb
	.byte	0xfd
	.long	0x5bc
	.long	0x88d
	.uleb128 0x19
	.long	0x2ca
	.byte	0
	.uleb128 0x23
	.long	.LASF105
	.byte	0xb
	.byte	0xaa
	.long	0x5bc
	.long	0x8ac
	.uleb128 0x19
	.long	0x2ca
	.uleb128 0x19
	.long	0x7c4
	.uleb128 0x19
	.long	0x65
	.byte	0
	.uleb128 0x23
	.long	.LASF106
	.byte	0xb
	.byte	0xaf
	.long	0x5ce
	.long	0x8cb
	.uleb128 0x19
	.long	0x2ca
	.uleb128 0x19
	.long	0x7c4
	.uleb128 0x19
	.long	0x65
	.byte	0
	.uleb128 0x23
	.long	.LASF107
	.byte	0xb
	.byte	0x85
	.long	0x8e5
	.long	0x8e5
	.uleb128 0x19
	.long	0x2ca
	.uleb128 0x19
	.long	0x7c4
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF108
	.uleb128 0x23
	.long	.LASF109
	.byte	0xb
	.byte	0x88
	.long	0x906
	.long	0x906
	.uleb128 0x19
	.long	0x2ca
	.uleb128 0x19
	.long	0x7c4
	.byte	0
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF110
	.uleb128 0x16
	.byte	0xf
	.byte	0x27
	.long	0x602
	.uleb128 0x16
	.byte	0xf
	.byte	0x2b
	.long	0x61f
	.uleb128 0x16
	.byte	0xf
	.byte	0x2e
	.long	0x77a
	.uleb128 0x16
	.byte	0xf
	.byte	0x33
	.long	0x55c
	.uleb128 0x16
	.byte	0xf
	.byte	0x34
	.long	0x58c
	.uleb128 0x2
	.byte	0x10
	.byte	0x5
	.long	.LASF111
	.uleb128 0x16
	.byte	0xf
	.byte	0x36
	.long	0x4bc
	.uleb128 0x16
	.byte	0xf
	.byte	0x37
	.long	0x639
	.uleb128 0x16
	.byte	0xf
	.byte	0x38
	.long	0x64e
	.uleb128 0x16
	.byte	0xf
	.byte	0x39
	.long	0x663
	.uleb128 0x16
	.byte	0xf
	.byte	0x3a
	.long	0x678
	.uleb128 0x16
	.byte	0xf
	.byte	0x3c
	.long	0x51c
	.uleb128 0x16
	.byte	0xf
	.byte	0x3e
	.long	0x6bc
	.uleb128 0x16
	.byte	0xf
	.byte	0x40
	.long	0x6d2
	.uleb128 0x16
	.byte	0xf
	.byte	0x43
	.long	0x6ed
	.uleb128 0x16
	.byte	0xf
	.byte	0x44
	.long	0x708
	.uleb128 0x16
	.byte	0xf
	.byte	0x45
	.long	0x739
	.uleb128 0x16
	.byte	0xf
	.byte	0x47
	.long	0x759
	.uleb128 0x16
	.byte	0xf
	.byte	0x48
	.long	0x78c
	.uleb128 0x16
	.byte	0xf
	.byte	0x4a
	.long	0x798
	.uleb128 0x16
	.byte	0xf
	.byte	0x4b
	.long	0x7aa
	.uleb128 0x16
	.byte	0xf
	.byte	0x4c
	.long	0x7ca
	.uleb128 0x16
	.byte	0xf
	.byte	0x4d
	.long	0x7e9
	.uleb128 0x16
	.byte	0xf
	.byte	0x4e
	.long	0x808
	.uleb128 0x16
	.byte	0xf
	.byte	0x50
	.long	0x81e
	.uleb128 0x16
	.byte	0xf
	.byte	0x51
	.long	0x843
	.uleb128 0x28
	.byte	0x8
	.byte	0x1
	.byte	0x6
	.long	0x9e0
	.uleb128 0x1c
	.string	"a"
	.byte	0x1
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0x1c
	.string	"b"
	.byte	0x1
	.byte	0x8
	.long	0x65
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.long	0x9c3
	.long	0x9f1
	.uleb128 0x29
	.long	0x89
	.value	0x1387
	.byte	0
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.byte	0x9
	.long	0x9e0
	.uleb128 0x9
	.byte	0x3
	.quad	s
	.uleb128 0x2b
	.long	.LASF127
	.byte	0x1
	.byte	0xb
	.long	0x65
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0xc83
	.uleb128 0x2c
	.long	.LASF112
	.byte	0x1
	.byte	0xb
	.long	0x65
	.long	.LLST0
	.uleb128 0x2c
	.long	.LASF113
	.byte	0x1
	.byte	0xb
	.long	0x7c4
	.long	.LLST1
	.uleb128 0x2d
	.string	"ii"
	.byte	0x1
	.byte	0xc
	.long	0x65
	.long	.LLST2
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.byte	0xc
	.long	0x65
	.long	.LLST3
	.uleb128 0x2d
	.string	"X1"
	.byte	0x1
	.byte	0xc
	.long	0x65
	.long	.LLST4
	.uleb128 0x2d
	.string	"X2"
	.byte	0x1
	.byte	0xc
	.long	0x65
	.long	.LLST5
	.uleb128 0x2a
	.string	"R"
	.byte	0x1
	.byte	0xd
	.long	0xc83
	.uleb128 0x4
	.byte	0x91
	.sleb128 -160048
	.uleb128 0x2e
	.long	.LASF114
	.byte	0x1
	.byte	0xf
	.long	0x332
	.uleb128 0x4
	.byte	0x91
	.sleb128 -160080
	.uleb128 0x2e
	.long	.LASF115
	.byte	0x1
	.byte	0xf
	.long	0x332
	.uleb128 0x4
	.byte	0x91
	.sleb128 -160064
	.uleb128 0x2f
	.long	.LASF116
	.byte	0x1
	.byte	0xf
	.long	0x29
	.long	.LLST6
	.uleb128 0x30
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0xba6
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.byte	0x11
	.long	0x65
	.uleb128 0x32
	.quad	.LVL2
	.long	0x78c
	.uleb128 0x32
	.quad	.LVL3
	.long	0x78c
	.uleb128 0x32
	.quad	.LVL4
	.long	0x78c
	.uleb128 0x32
	.quad	.LVL5
	.long	0x78c
	.uleb128 0x32
	.quad	.LVL6
	.long	0x78c
	.uleb128 0x32
	.quad	.LVL7
	.long	0x78c
	.uleb128 0x32
	.quad	.LVL8
	.long	0x78c
	.uleb128 0x32
	.quad	.LVL9
	.long	0x78c
	.uleb128 0x32
	.quad	.LVL10
	.long	0x78c
	.uleb128 0x32
	.quad	.LVL11
	.long	0x78c
	.uleb128 0x32
	.quad	.LVL12
	.long	0x78c
	.uleb128 0x32
	.quad	.LVL13
	.long	0x78c
	.uleb128 0x32
	.quad	.LVL14
	.long	0x78c
	.uleb128 0x32
	.quad	.LVL15
	.long	0x78c
	.uleb128 0x32
	.quad	.LVL16
	.long	0x78c
	.uleb128 0x32
	.quad	.LVL17
	.long	0x78c
	.byte	0
	.uleb128 0x33
	.long	0xc94
	.quad	.LBB8
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x35
	.long	0xbe7
	.uleb128 0x34
	.long	0xca4
	.long	.LLST7
	.uleb128 0x35
	.quad	.LVL30
	.long	0xcb1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	0xc94
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.byte	0x1
	.byte	0x36
	.long	0xc37
	.uleb128 0x34
	.long	0xca4
	.long	.LLST8
	.uleb128 0x35
	.quad	.LVL31
	.long	0xcb1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x7
	.byte	0x91
	.sleb128 -160088
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.byte	0
	.byte	0
	.uleb128 0x38
	.quad	.LVL18
	.long	0xcbc
	.long	0xc56
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -160080
	.byte	0
	.uleb128 0x38
	.quad	.LVL28
	.long	0xcbc
	.long	0xc75
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -160064
	.byte	0
	.uleb128 0x32
	.quad	.LVL32
	.long	0xcc8
	.byte	0
	.uleb128 0xc
	.long	0x65
	.long	0xc94
	.uleb128 0x29
	.long	0x89
	.value	0x9c3f
	.byte	0
	.uleb128 0x39
	.long	.LASF118
	.byte	0x2
	.byte	0x66
	.long	0x65
	.byte	0x3
	.long	0xcb1
	.uleb128 0x3a
	.long	.LASF128
	.byte	0x2
	.byte	0x66
	.long	0x2d5
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3c
	.long	.LASF119
	.long	.LASF119
	.byte	0x2
	.byte	0x57
	.uleb128 0x3d
	.long	.LASF120
	.long	.LASF120
	.byte	0x8
	.value	0x156
	.uleb128 0x3e
	.long	.LASF129
	.long	.LASF129
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
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x29
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x3a
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
.LLST0:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x1
	.byte	0x55
	.quad	.LVL1
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
	.quad	.LFE50
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL18
	.quad	.LVL19
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL20
	.quad	.LVL25
	.value	0x1
	.byte	0x55
	.quad	.LVL25
	.quad	.LVL27
	.value	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL20
	.quad	.LVL21
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL20
	.quad	.LVL21
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL21
	.quad	.LVL24
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL20
	.quad	.LVL21
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL21
	.quad	.LVL26
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL29
	.quad	.LVL30-1
	.value	0x1
	.byte	0x61
	.quad	.LVL30-1
	.quad	.LFE50
	.value	0x4
	.byte	0x91
	.sleb128 -160088
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL29
	.quad	.LVL30
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL30
	.quad	.LVL31
	.value	0xa
	.byte	0x3
	.quad	.LC2
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
	.quad	.LBB8
	.quad	.LBE8
	.quad	.LBB14
	.quad	.LBE14
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
.LASF88:
	.string	"getenv"
.LASF34:
	.string	"_shortbuf"
.LASF126:
	.string	"rand"
.LASF123:
	.string	"/home/migue/GIT/AC/BP4/Bin"
.LASF124:
	.string	"_IO_lock_t"
.LASF54:
	.string	"stderr"
.LASF100:
	.string	"system"
.LASF23:
	.string	"_IO_buf_end"
.LASF90:
	.string	"mblen"
.LASF21:
	.string	"_IO_write_end"
.LASF4:
	.string	"unsigned int"
.LASF69:
	.string	"__gnu_cxx"
.LASF68:
	.string	"getdate_err"
.LASF15:
	.string	"_flags"
.LASF92:
	.string	"wchar_t"
.LASF27:
	.string	"_markers"
.LASF57:
	.string	"_sys_nerr"
.LASF72:
	.string	"_ZN9__gnu_cxx3divExx"
.LASF106:
	.string	"strtoull"
.LASF116:
	.string	"ncgt"
.LASF64:
	.string	"__timezone"
.LASF109:
	.string	"strtold"
.LASF71:
	.string	"_ZSt3absn"
.LASF105:
	.string	"strtoll"
.LASF48:
	.string	"_pos"
.LASF114:
	.string	"cgt1"
.LASF115:
	.string	"cgt2"
.LASF53:
	.string	"stdout"
.LASF93:
	.string	"mbtowc"
.LASF26:
	.string	"_IO_save_end"
.LASF108:
	.string	"float"
.LASF81:
	.string	"long long unsigned int"
.LASF102:
	.string	"wctomb"
.LASF56:
	.string	"sys_errlist"
.LASF25:
	.string	"_IO_backup_base"
.LASF36:
	.string	"_offset"
.LASF55:
	.string	"sys_nerr"
.LASF103:
	.string	"lldiv"
.LASF104:
	.string	"atoll"
.LASF29:
	.string	"_fileno"
.LASF61:
	.string	"tv_nsec"
.LASF8:
	.string	"size_t"
.LASF96:
	.string	"srand"
.LASF18:
	.string	"_IO_read_base"
.LASF87:
	.string	"bsearch"
.LASF112:
	.string	"argc"
.LASF52:
	.string	"stdin"
.LASF46:
	.string	"_next"
.LASF128:
	.string	"__fmt"
.LASF59:
	.string	"timespec"
.LASF14:
	.string	"char"
.LASF42:
	.string	"_mode"
.LASF75:
	.string	"5div_t"
.LASF63:
	.string	"__daylight"
.LASF65:
	.string	"tzname"
.LASF45:
	.string	"_IO_marker"
.LASF16:
	.string	"_IO_read_ptr"
.LASF94:
	.string	"quick_exit"
.LASF73:
	.string	"quot"
.LASF91:
	.string	"mbstowcs"
.LASF19:
	.string	"_IO_write_base"
.LASF121:
	.string	"GNU C++14 6.3.0 20170406 -mtune=generic -march=x86-64 -g -O2 -fstack-protector-strong"
.LASF49:
	.string	"_IO_2_1_stdin_"
.LASF79:
	.string	"long long int"
.LASF118:
	.string	"printf"
.LASF50:
	.string	"_IO_2_1_stdout_"
.LASF24:
	.string	"_IO_save_base"
.LASF119:
	.string	"__printf_chk"
.LASF70:
	.string	"__cxx11"
.LASF13:
	.string	"__syscall_slong_t"
.LASF89:
	.string	"ldiv"
.LASF120:
	.string	"clock_gettime"
.LASF82:
	.string	"__compar_fn_t"
.LASF37:
	.string	"__pad1"
.LASF38:
	.string	"__pad2"
.LASF39:
	.string	"__pad3"
.LASF40:
	.string	"__pad4"
.LASF41:
	.string	"__pad5"
.LASF33:
	.string	"_vtable_offset"
.LASF113:
	.string	"argv"
.LASF110:
	.string	"long double"
.LASF127:
	.string	"main"
.LASF67:
	.string	"timezone"
.LASF17:
	.string	"_IO_read_end"
.LASF6:
	.string	"short int"
.LASF7:
	.string	"long int"
.LASF129:
	.string	"__stack_chk_fail"
.LASF83:
	.string	"atexit"
.LASF125:
	.string	"_IO_FILE_plus"
.LASF77:
	.string	"ldiv_t"
.LASF117:
	.string	"at_quick_exit"
.LASF35:
	.string	"_lock"
.LASF60:
	.string	"tv_sec"
.LASF11:
	.string	"sizetype"
.LASF99:
	.string	"strtoul"
.LASF1:
	.string	"long unsigned int"
.LASF31:
	.string	"_old_offset"
.LASF44:
	.string	"_IO_FILE"
.LASF111:
	.string	"__int128"
.LASF74:
	.string	"div_t"
.LASF2:
	.string	"unsigned char"
.LASF62:
	.string	"__tzname"
.LASF47:
	.string	"_sbuf"
.LASF20:
	.string	"_IO_write_ptr"
.LASF97:
	.string	"strtod"
.LASF107:
	.string	"strtof"
.LASF101:
	.string	"wcstombs"
.LASF98:
	.string	"strtol"
.LASF122:
	.string	"../FuentesModificados/figura1-modificado-a.c"
.LASF12:
	.string	"__time_t"
.LASF76:
	.string	"6ldiv_t"
.LASF66:
	.string	"daylight"
.LASF9:
	.string	"__off_t"
.LASF78:
	.string	"7lldiv_t"
.LASF5:
	.string	"signed char"
.LASF3:
	.string	"short unsigned int"
.LASF80:
	.string	"lldiv_t"
.LASF84:
	.string	"atof"
.LASF58:
	.string	"_sys_errlist"
.LASF85:
	.string	"atoi"
.LASF86:
	.string	"atol"
.LASF0:
	.string	"double"
.LASF28:
	.string	"_chain"
.LASF30:
	.string	"_flags2"
.LASF32:
	.string	"_cur_column"
.LASF51:
	.string	"_IO_2_1_stderr_"
.LASF10:
	.string	"__off64_t"
.LASF43:
	.string	"_unused2"
.LASF22:
	.string	"_IO_buf_base"
.LASF95:
	.string	"qsort"
	.ident	"GCC: (Ubuntu 6.3.0-12ubuntu2) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
