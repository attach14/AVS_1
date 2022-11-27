	.file	"avs_2.c"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	compute
	.type	compute, @function
compute:
	endbr64
	test	edi, edi
	jle	.L6
	movq	xmm8, QWORD PTR .LC1[rip]
	movapd	xmm10, xmm0
	xor	eax, eax
	movsd	xmm7, QWORD PTR .LC3[rip]
	movsd	xmm6, QWORD PTR .LC0[rip]
	movsd	xmm9, QWORD PTR .LC2[rip]
	andpd	xmm10, xmm8
	.p2align 4,,10
	.p2align 3
.L3:
	comisd	xmm10, xmm7
	movapd	xmm2, xmm0
	movapd	xmm4, xmm0
	movapd	xmm1, xmm6
	jbe	.L5
	.p2align 4,,10
	.p2align 3
.L4:
	movapd	xmm3, xmm1
	addsd	xmm1, xmm9
	movapd	xmm5, xmm0
	addsd	xmm3, xmm6
	divsd	xmm5, xmm3
	movapd	xmm3, xmm0
	divsd	xmm3, xmm1
	mulsd	xmm3, xmm5
	mulsd	xmm2, xmm3
	movapd	xmm3, xmm2
	addsd	xmm4, xmm2
	andpd	xmm3, xmm8
	comisd	xmm3, xmm7
	ja	.L4
.L5:
	add	eax, 1
	cmp	edi, eax
	jne	.L3
	movapd	xmm0, xmm4
	ret
.L6:
	pxor	xmm4, xmm4
	movapd	xmm0, xmm4
	ret
	.size	compute, .-compute
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"x = %0.10lf\n"
.LC6:
	.string	"sh(x) = %0.10lf\n"
	.text
	.p2align 4
	.globl	write
	.type	write, @function
write:
	endbr64
	push	rbp
	lea	rdx, .LC5[rip]
	mov	esi, 1
	mov	rbp, rdi
	mov	eax, 1
	sub	rsp, 16
	movsd	QWORD PTR 8[rsp], xmm0
	movapd	xmm0, xmm1
	call	__fprintf_chk@PLT
	movsd	xmm2, QWORD PTR 8[rsp]
	add	rsp, 16
	mov	rdi, rbp
	lea	rdx, .LC6[rip]
	mov	esi, 1
	mov	eax, 1
	pop	rbp
	movapd	xmm0, xmm2
	jmp	__fprintf_chk@PLT
	.size	write, .-write
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC7:
	.string	"Wrong number of arguments - %d instead of 2\n"
	.section	.rodata.str1.1
.LC8:
	.string	"--random"
.LC10:
	.string	"r"
.LC11:
	.string	"Wrong input file path"
.LC12:
	.string	"%lf"
.LC14:
	.string	"Wrong number"
.LC15:
	.string	"Wrong number of repeats"
.LC17:
	.string	"w"
.LC18:
	.string	"Wrong output file path"
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"Execution time is %2.3f seconds\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
	endbr64
	push	r13
	push	r12
	push	rbp
	push	rbx
	sub	rsp, 40
	cmp	edi, 4
	jne	.L31
	mov	r12, QWORD PTR 8[rsi]
	mov	rbp, rsi
	lea	rsi, .LC8[rip]
	movsd	QWORD PTR [rsp], xmm4
	mov	rdi, r12
	call	strcmp@PLT
	movsd	xmm4, QWORD PTR [rsp]
	test	eax, eax
	je	.L32
	mov	rdi, r12
	lea	rsi, .LC10[rip]
	movsd	QWORD PTR [rsp], xmm4
	call	fopen@PLT
	movsd	xmm4, QWORD PTR [rsp]
	test	rax, rax
	mov	r12, rax
	je	.L33
	mov	rdi, rax
	lea	rdx, 24[rsp]
	xor	eax, eax
	movsd	QWORD PTR [rsp], xmm4
	lea	rsi, .LC12[rip]
	call	__isoc99_fscanf@PLT
	movsd	xmm0, QWORD PTR 24[rsp]
	movsd	xmm4, QWORD PTR [rsp]
	andpd	xmm0, XMMWORD PTR .LC1[rip]
	comisd	xmm0, QWORD PTR .LC13[rip]
	ja	.L34
	mov	rdi, r12
	movsd	QWORD PTR [rsp], xmm4
	call	fclose@PLT
	movsd	xmm4, QWORD PTR [rsp]
.L16:
	mov	rdi, QWORD PTR 16[rbp]
	xor	esi, esi
	mov	edx, 10
	movsd	QWORD PTR [rsp], xmm4
	call	strtol@PLT
	movsd	xmm4, QWORD PTR [rsp]
	test	eax, eax
	mov	r12, rax
	mov	ebx, eax
	je	.L35
	movsd	QWORD PTR [rsp], xmm4
	call	clock@PLT
	test	r12d, r12d
	movsd	xmm3, QWORD PTR 24[rsp]
	movsd	xmm4, QWORD PTR [rsp]
	mov	r13, rax
	jle	.L21
	movq	xmm8, QWORD PTR .LC1[rip]
	movapd	xmm10, xmm3
	xor	eax, eax
	movsd	xmm7, QWORD PTR .LC3[rip]
	movsd	xmm6, QWORD PTR .LC0[rip]
	movsd	xmm9, QWORD PTR .LC2[rip]
	andpd	xmm10, xmm8
	.p2align 4,,10
	.p2align 3
.L22:
	comisd	xmm10, xmm7
	movapd	xmm4, xmm3
	movapd	xmm1, xmm3
	movapd	xmm0, xmm6
	jbe	.L24
	.p2align 4,,10
	.p2align 3
.L23:
	movapd	xmm2, xmm0
	addsd	xmm0, xmm9
	movapd	xmm5, xmm3
	addsd	xmm2, xmm6
	divsd	xmm5, xmm2
	movapd	xmm2, xmm3
	divsd	xmm2, xmm0
	mulsd	xmm2, xmm5
	mulsd	xmm1, xmm2
	movapd	xmm2, xmm1
	addsd	xmm4, xmm1
	andpd	xmm2, xmm8
	comisd	xmm2, xmm7
	ja	.L23
.L24:
	add	eax, 1
	cmp	ebx, eax
	jne	.L22
.L21:
	movsd	QWORD PTR 8[rsp], xmm4
	call	clock@PLT
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	mov	rdi, QWORD PTR 24[rbp]
	cvtsi2sd	xmm0, rax
	lea	rsi, .LC17[rip]
	cvtsi2sd	xmm1, r13
	subsd	xmm0, xmm1
	mulsd	xmm0, QWORD PTR .LC16[rip]
	movsd	QWORD PTR [rsp], xmm0
	call	fopen@PLT
	movsd	xmm0, QWORD PTR [rsp]
	movsd	xmm4, QWORD PTR 8[rsp]
	test	rax, rax
	mov	rbp, rax
	je	.L36
	mov	rdi, rax
	mov	esi, 1
	mov	eax, 1
	movsd	QWORD PTR [rsp], xmm4
	lea	rdx, .LC19[rip]
	call	__fprintf_chk@PLT
	movsd	xmm4, QWORD PTR [rsp]
	movsd	xmm1, QWORD PTR 24[rsp]
	mov	rdi, rbp
	movapd	xmm0, xmm4
	call	write
.L14:
	add	rsp, 40
	xor	eax, eax
	pop	rbx
	pop	rbp
	pop	r12
	pop	r13
	ret
.L32:
	xor	edi, edi
	call	time@PLT
	mov	edi, eax
	call	srand@PLT
	call	rand@PLT
	pxor	xmm0, xmm0
	movsd	xmm4, QWORD PTR [rsp]
	cvtsi2sd	xmm0, eax
	mulsd	xmm0, QWORD PTR .LC9[rip]
	movsd	QWORD PTR 24[rsp], xmm0
	jmp	.L16
.L31:
	lea	edx, -1[rdi]
	lea	rsi, .LC7[rip]
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk@PLT
	jmp	.L14
.L35:
	lea	rsi, .LC15[rip]
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk@PLT
	call	clock@PLT
	movsd	xmm4, QWORD PTR [rsp]
	mov	r13, rax
	jmp	.L21
.L34:
	lea	rdi, .LC14[rip]
	call	puts@PLT
	jmp	.L14
.L33:
	lea	rdi, .LC11[rip]
	call	puts@PLT
	jmp	.L14
.L36:
	lea	rsi, .LC18[rip]
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk@PLT
	jmp	.L14
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC1:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC2:
	.long	0
	.long	1073741824
	.align 8
.LC3:
	.long	-350469331
	.long	1058682594
	.align 8
.LC9:
	.long	2621440
	.long	1044643840
	.align 8
.LC13:
	.long	0
	.long	1077149696
	.align 8
.LC16:
	.long	-1598689907
	.long	1051772663
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
