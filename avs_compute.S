	.file	"avs_2_compute.c"

	.intel_syntax noprefix

	.text

	.globl	compute

	.type	compute, @function

compute:

	push	rbp

	mov	rbp, rsp

	mov	QWORD PTR -24[rbp], rdi #запомнили адрес buf

	mov     r15, rdi #теперь адрес buf лежит в r15

	mov	QWORD PTR -32[rbp], rsi #запомнили адрес ans

	mov     r14, rsi  #в r14 теперь лежит адрес ans

	mov	DWORD PTR -36[rbp], edx

	mov	DWORD PTR -40[rbp], ecx

	mov	r13, 0 # в r13 теперь лежит cur

	mov	DWORD PTR -16[rbp], 0

	mov	DWORD PTR -8[rbp], 0

	jmp	.L2

.L10:

	mov	r13, 0

	mov	DWORD PTR -12[rbp], 0

	jmp	.L3

.L9:

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, r15

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 64

	jle	.L4

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, r15

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 89

	jg	.L4

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, r15

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 65

	je	.L4

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, r15

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 79

	je	.L4

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, r15

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 69

	je	.L4

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, r15

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 85

	je	.L4

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, r15

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 73

	je	.L4

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, r15

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	movsx	eax, al

	mov	DWORD PTR -16[rbp], eax

	mov	eax, DWORD PTR -16[rbp]

	movsx	rdx, eax

	imul	rdx, rdx, 1717986919

	shr	rdx, 32

	sar	edx, 2

	sar	eax, 31

	mov	ecx, eax

	mov	eax, edx

	sub	eax, ecx

	lea	ecx, 48[rax]

	mov	rdx, r13

	mov	rax, r14

	add	rax, rdx

	mov	edx, ecx

	mov	BYTE PTR [rax], dl

	add	r13, 1

	mov	edx, DWORD PTR -16[rbp]

	movsx	rax, edx

	imul	rax, rax, 1717986919

	shr	rax, 32

	sar	eax, 2

	mov	esi, edx

	sar	esi, 31

	sub	eax, esi

	mov	ecx, eax

	mov	eax, ecx

	sal	eax, 2

	add	eax, ecx

	add	eax, eax

	mov	ecx, edx

	sub	ecx, eax

	mov	eax, ecx

	lea	ecx, 48[rax]

	mov	rdx, r13

	mov	rax, r14

	add	rax, rdx

	mov	edx, ecx

	mov	BYTE PTR [rax], dl

	add	r13, 1

	jmp	.L5

.L4:

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, r15

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 98

	je	.L6

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, r15

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 99

	jne	.L7

.L6:

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, r15

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	movsx	eax, al

	mov	DWORD PTR -16[rbp], eax

	mov	eax, DWORD PTR -16[rbp]

	movsx	rdx, eax

	imul	rdx, rdx, 1717986919

	shr	rdx, 32

	sar	edx, 2

	sar	eax, 31

	mov	ecx, eax

	mov	eax, edx

	sub	eax, ecx

	lea	ecx, 48[rax]

	mov	rdx, r13

	mov	rax, r14

	add	rax, rdx

	mov	edx, ecx

	mov	BYTE PTR [rax], dl

	add	r13, 1

	mov	edx, DWORD PTR -16[rbp]

	movsx	rax, edx

	imul	rax, rax, 1717986919

	shr	rax, 32

	sar	eax, 2

	mov	esi, edx

	sar	esi, 31

	sub	eax, esi

	mov	ecx, eax

	mov	eax, ecx

	sal	eax, 2

	add	eax, ecx

	add	eax, eax

	mov	ecx, edx

	sub	ecx, eax

	mov	eax, ecx

	lea	ecx, 48[rax]

	mov	rdx, r13

	mov	rax, r14

	add	rax, rdx

	mov	edx, ecx

	mov	BYTE PTR [rax], dl

	add	r13, 1

	jmp	.L5

.L7:

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, r15

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 99

	jle	.L8

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, r15

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 122

	jg	.L8

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, r15

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 111

	je	.L8

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, r15

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 101

	je	.L8

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, r15

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 117

	je	.L8

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, r15

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 105

	je	.L8

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, r15

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	movsx	eax, al

	mov	DWORD PTR -16[rbp], eax

	mov	eax, DWORD PTR -16[rbp]

	movsx	rdx, eax

	imul	rdx, rdx, 1374389535

	shr	rdx, 32

	sar	edx, 5

	sar	eax, 31

	mov	ecx, eax

	mov	eax, edx

	sub	eax, ecx

	lea	ecx, 48[rax]

	mov	rdx, r13

	mov	rax, r14

	add	rax, rdx

	mov	edx, ecx

	mov	BYTE PTR [rax], dl

	add	r13, 1

	mov	eax, DWORD PTR -16[rbp]

	movsx	rdx, eax

	imul	rdx, rdx, 1717986919

	shr	rdx, 32

	sar	edx, 2

	sar	eax, 31

	sub	edx, eax

	movsx	rax, edx

	imul	rax, rax, 1717986919

	shr	rax, 32

	sar	eax, 2

	mov	esi, edx

	sar	esi, 31

	sub	eax, esi

	mov	ecx, eax

	mov	eax, ecx

	sal	eax, 2

	add	eax, ecx

	add	eax, eax

	mov	ecx, edx

	sub	ecx, eax

	mov	eax, ecx

	lea	ecx, 48[rax]

	mov	rdx, r13

	mov	rax, r14

	add	rax, rdx

	mov	edx, ecx

	mov	BYTE PTR [rax], dl

	add	r13, 1

	mov	edx, DWORD PTR -16[rbp]

	movsx	rax, edx

	imul	rax, rax, 1717986919

	shr	rax, 32

	sar	eax, 2

	mov	esi, edx

	sar	esi, 31

	sub	eax, esi

	mov	ecx, eax

	mov	eax, ecx

	sal	eax, 2

	add	eax, ecx

	add	eax, eax

	mov	ecx, edx

	sub	ecx, eax

	mov	eax, ecx

	lea	ecx, 48[rax]

	mov	rdx, r13

	mov	rax, r14

	add	rax, rdx

	mov	edx, ecx

	mov	BYTE PTR [rax], dl

	add	r13, 1

	jmp	.L5

.L8:

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, r15

	add	rax, rdx

	mov	rdx, r13

	mov	rcx, rdx

	mov	rdx, r14

	add	rdx, rcx

	movzx	eax, BYTE PTR [rax]

	mov	BYTE PTR [rdx], al

	add	r13, 1

.L5:

	add	DWORD PTR -12[rbp], 1

.L3:

	mov	eax, DWORD PTR -12[rbp]

	cmp	eax, DWORD PTR -36[rbp]

	jl	.L9

	mov	rdx, r13

	mov	rax, r14

	add	rax, rdx

	mov	BYTE PTR [rax], 0

	add	DWORD PTR -8[rbp], 1

.L2:

	mov	eax, DWORD PTR -8[rbp]

	cmp	eax, DWORD PTR -40[rbp]

	jl	.L10

	mov	rax, r13

	pop	rbp

	ret

	.size	compute, .-compute

	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"

	.section	.note.GNU-stack,"",@progbits
