	.file	"avs_2.c"
	.intel_syntax noprefix
	.text
	.globl	compute
	.type	compute, @function
compute:
	endbr64
	movq	xmm4, QWORD PTR .LC2[rip]
	movsd	xmm5, QWORD PTR .LC3[rip]
	xorps	xmm3, xmm3
	xor	eax, eax
	movsd	xmm6, QWORD PTR .LC1[rip]
.L2:
	cmp	eax, edi
	jge	.L7
	movsd	xmm2, QWORD PTR .LC0[rip]
	movaps	xmm1, xmm0
	movaps	xmm3, xmm0
	movaps	xmm8, xmm2
.L4:
	movaps	xmm7, xmm1
	andps	xmm7, xmm4
	comisd	xmm7, xmm5
	jbe	.L8
	movaps	xmm9, xmm2
	movaps	xmm7, xmm0
	addsd	xmm2, xmm6
	addsd	xmm9, xmm8
	divsd	xmm7, xmm9
	mulsd	xmm1, xmm7
	movaps	xmm7, xmm0
	divsd	xmm7, xmm2
	mulsd	xmm1, xmm7
	addsd	xmm3, xmm1
	jmp	.L4
.L8:
	inc	eax
	jmp	.L2
.L7:
	movaps	xmm0, xmm3
	ret
	.size	compute, .-compute
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"x = %0.10lf\n"
.LC6:
	.string	"sh(x) = %0.10lf\n"
	.text
	.globl	write
	.type	write, @function
write:
	endbr64
	sub	rsp, 24
	lea	rdx, .LC5[rip]
	mov	esi, 1
	mov	al, 1
	movsd	QWORD PTR 8[rsp], xmm0
	movaps	xmm0, xmm1
	mov	QWORD PTR [rsp], rdi
	call	__fprintf_chk@PLT
	mov	rdi, QWORD PTR [rsp]
	mov	esi, 1
	mov	al, 1
	movsd	xmm2, QWORD PTR 8[rsp]
	lea	rdx, .LC6[rip]
	add	rsp, 24
	movaps	xmm0, xmm2
	jmp	__fprintf_chk@PLT
	.size	write, .-write
	.section	.rodata.str1.1
.LC7:
	.string	"Wrong number of arguments - %d instead of 2\n"
.LC8:
	.string	"--random"
.LC11:
	.string	"r"
.LC12:
	.string	"Wrong input file path"
.LC13:
	.string	"%lf"
.LC14:
	.string	"Wrong number"
.LC15:
	.string	"Wrong number of repeats"
.LC17:
	.string	"w"
.LC18:
	.string	"Wrong output file path"
.LC19:
	.string	"Execution time is %2.3f seconds\n"
	.section	.text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
	endbr64
	push	r12
	push	rbp
	push	rbx
	sub	rsp, 32
	cmp	edi, 4
	je	.L12
	lea	edx, -1[rdi]
	lea	rsi, .LC7[rip]
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk@PLT
	jmp	.L13
.L12:
	mov	r12, QWORD PTR 8[rsi]
	mov	rbp, rsi
	lea	rsi, .LC8[rip]
	mov	rdi, r12
	call	strcmp@PLT
	test	eax, eax
	jne	.L14
	xor	edi, edi
	call	time@PLT
	mov	edi, eax
	call	srand@PLT
	call	rand@PLT
	cvtsi2sd	xmm0, eax
	divsd	xmm0, QWORD PTR .LC9[rip]
	mulsd	xmm0, QWORD PTR .LC10[rip]
	movsd	QWORD PTR 24[rsp], xmm0
	jmp	.L15
.L14:
	mov	rdi, r12
	lea	rsi, .LC11[rip]
	call	fopen@PLT
	lea	rdi, .LC12[rip]
	mov	r12, rax
	test	rax, rax
	je	.L24
	mov	rdi, rax
	lea	rdx, 24[rsp]
	lea	rsi, .LC13[rip]
	xor	eax, eax
	call	__isoc99_fscanf@PLT
	movsd	xmm0, QWORD PTR 24[rsp]
	andps	xmm0, XMMWORD PTR .LC2[rip]
	comisd	xmm0, QWORD PTR .LC10[rip]
	jbe	.L22
	lea	rdi, .LC14[rip]
.L24:
	call	puts@PLT
	jmp	.L13
.L22:
	mov	rdi, r12
	call	fclose@PLT
.L15:
	mov	rdi, QWORD PTR 16[rbp]
	call	atoi@PLT
	mov	r12d, eax
	test	eax, eax
	jne	.L19
	lea	rsi, .LC15[rip]
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk@PLT
.L19:
	call	clock@PLT
	movsd	xmm0, QWORD PTR 24[rsp]
	mov	edi, r12d
	mov	rbx, rax
	call	compute
	movq	r12, xmm0
	call	clock@PLT
	cvtsi2sd	xmm1, rbx
	mov	rdi, QWORD PTR 24[rbp]
	lea	rsi, .LC17[rip]
	cvtsi2sd	xmm0, rax
	subsd	xmm0, xmm1
	divsd	xmm0, QWORD PTR .LC16[rip]
	movsd	QWORD PTR 8[rsp], xmm0
	call	fopen@PLT
	movsd	xmm0, QWORD PTR 8[rsp]
	test	rax, rax
	mov	rbp, rax
	jne	.L20
	lea	rsi, .LC18[rip]
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk@PLT
	jmp	.L13
.L20:
	mov	rdi, rax
	lea	rdx, .LC19[rip]
	mov	esi, 1
	mov	al, 1
	call	__fprintf_chk@PLT
	movsd	xmm1, QWORD PTR 24[rsp]
	mov	rdi, rbp
	movq	xmm0, r12
	call	write
.L13:
	add	rsp, 32
	xor	eax, eax
	pop	rbx
	pop	rbp
	pop	r12
	ret
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC1:
	.long	0
	.long	1073741824
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC2:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC3:
	.long	-350469331
	.long	1058682594
	.align 8
.LC9:
	.long	-4194304
	.long	1105199103
	.align 8
.LC10:
	.long	0
	.long	1077149696
	.align 8
.LC16:
	.long	0
	.long	1093567616
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
