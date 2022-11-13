	.file	"avs_2.c"

	.intel_syntax noprefix

	.text

	.globl	compute

	.type	compute, @function

compute:

	endbr64

	push	rbp

	mov	rbp, rsp

	mov	QWORD PTR -24[rbp], rdi

	mov	QWORD PTR -32[rbp], rsi

	mov	DWORD PTR -36[rbp], edx

	mov	DWORD PTR -40[rbp], ecx

	mov	DWORD PTR -4[rbp], 0

	mov	DWORD PTR -16[rbp], 0

	mov	DWORD PTR -8[rbp], 0

	jmp	.L2

.L10:

	mov	DWORD PTR -4[rbp], 0

	mov	DWORD PTR -12[rbp], 0

	jmp	.L3

.L9:

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, QWORD PTR -24[rbp]

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 64

	jle	.L4

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, QWORD PTR -24[rbp]

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 89

	jg	.L4

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, QWORD PTR -24[rbp]

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 65

	je	.L4

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, QWORD PTR -24[rbp]

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 79

	je	.L4

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, QWORD PTR -24[rbp]

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 69

	je	.L4

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, QWORD PTR -24[rbp]

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 85

	je	.L4

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, QWORD PTR -24[rbp]

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 73

	je	.L4

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, QWORD PTR -24[rbp]

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

	mov	eax, DWORD PTR -4[rbp]

	movsx	rdx, eax

	mov	rax, QWORD PTR -32[rbp]

	add	rax, rdx

	mov	edx, ecx

	mov	BYTE PTR [rax], dl

	add	DWORD PTR -4[rbp], 1

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

	mov	eax, DWORD PTR -4[rbp]

	movsx	rdx, eax

	mov	rax, QWORD PTR -32[rbp]

	add	rax, rdx

	mov	edx, ecx

	mov	BYTE PTR [rax], dl

	add	DWORD PTR -4[rbp], 1

	jmp	.L5

.L4:

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, QWORD PTR -24[rbp]

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 98

	je	.L6

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, QWORD PTR -24[rbp]

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 99

	jne	.L7

.L6:

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, QWORD PTR -24[rbp]

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

	mov	eax, DWORD PTR -4[rbp]

	movsx	rdx, eax

	mov	rax, QWORD PTR -32[rbp]

	add	rax, rdx

	mov	edx, ecx

	mov	BYTE PTR [rax], dl

	add	DWORD PTR -4[rbp], 1

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

	mov	eax, DWORD PTR -4[rbp]

	movsx	rdx, eax

	mov	rax, QWORD PTR -32[rbp]

	add	rax, rdx

	mov	edx, ecx

	mov	BYTE PTR [rax], dl

	add	DWORD PTR -4[rbp], 1

	jmp	.L5

.L7:

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, QWORD PTR -24[rbp]

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 99

	jle	.L8

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, QWORD PTR -24[rbp]

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 122

	jg	.L8

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, QWORD PTR -24[rbp]

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 111

	je	.L8

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, QWORD PTR -24[rbp]

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 101

	je	.L8

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, QWORD PTR -24[rbp]

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 117

	je	.L8

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, QWORD PTR -24[rbp]

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	cmp	al, 105

	je	.L8

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, QWORD PTR -24[rbp]

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

	mov	eax, DWORD PTR -4[rbp]

	movsx	rdx, eax

	mov	rax, QWORD PTR -32[rbp]

	add	rax, rdx

	mov	edx, ecx

	mov	BYTE PTR [rax], dl

	add	DWORD PTR -4[rbp], 1

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

	mov	eax, DWORD PTR -4[rbp]

	movsx	rdx, eax

	mov	rax, QWORD PTR -32[rbp]

	add	rax, rdx

	mov	edx, ecx

	mov	BYTE PTR [rax], dl

	add	DWORD PTR -4[rbp], 1

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

	mov	eax, DWORD PTR -4[rbp]

	movsx	rdx, eax

	mov	rax, QWORD PTR -32[rbp]

	add	rax, rdx

	mov	edx, ecx

	mov	BYTE PTR [rax], dl

	add	DWORD PTR -4[rbp], 1

	jmp	.L5

.L8:

	mov	eax, DWORD PTR -12[rbp]

	movsx	rdx, eax

	mov	rax, QWORD PTR -24[rbp]

	add	rax, rdx

	mov	edx, DWORD PTR -4[rbp]

	movsx	rcx, edx

	mov	rdx, QWORD PTR -32[rbp]

	add	rdx, rcx

	movzx	eax, BYTE PTR [rax]

	mov	BYTE PTR [rdx], al

	add	DWORD PTR -4[rbp], 1

.L5:

	add	DWORD PTR -12[rbp], 1

.L3:

	mov	eax, DWORD PTR -12[rbp]

	cmp	eax, DWORD PTR -36[rbp]

	jl	.L9

	mov	eax, DWORD PTR -4[rbp]

	movsx	rdx, eax

	mov	rax, QWORD PTR -32[rbp]

	add	rax, rdx

	mov	BYTE PTR [rax], 0

	add	DWORD PTR -8[rbp], 1

.L2:

	mov	eax, DWORD PTR -8[rbp]

	cmp	eax, DWORD PTR -40[rbp]

	jl	.L10

	mov	eax, DWORD PTR -4[rbp]

	pop	rbp

	ret

	.size	compute, .-compute

	.globl	write

	.type	write, @function

write:

	endbr64

	push	rbp

	mov	rbp, rsp

	sub	rsp, 48

	mov	QWORD PTR -24[rbp], rdi

	mov	DWORD PTR -28[rbp], esi

	mov	QWORD PTR -40[rbp], rdx

	mov	DWORD PTR -4[rbp], 0

	jmp	.L13

.L14:

	mov	eax, DWORD PTR -4[rbp]

	movsx	rdx, eax

	mov	rax, QWORD PTR -24[rbp]

	add	rax, rdx

	movzx	eax, BYTE PTR [rax]

	movsx	eax, al

	mov	rdx, QWORD PTR -40[rbp]

	mov	rsi, rdx

	mov	edi, eax

	call	fputc@PLT

	add	DWORD PTR -4[rbp], 1

.L13:

	mov	eax, DWORD PTR -4[rbp]

	cmp	eax, DWORD PTR -28[rbp]

	jl	.L14

	nop

	nop

	leave

	ret

	.size	write, .-write

	.section	.rodata

	.align 8

.LC0:

	.string	"Wrong number of arguments - %d instead of 2\n"

.LC1:

	.string	"--random"

.LC2:

	.string	"r"

.LC3:

	.string	"Wrong input file path"

.LC4:

	.string	"The text is too long"

.LC5:

	.string	"Wrong number of repeats"

.LC7:

	.string	"w"

.LC8:

	.string	"Wrong output file path"

	.align 8

.LC9:

	.string	"Execution time is %2.3f seconds\n"

	.text

	.globl	main

	.type	main, @function

main:

	endbr64

	push	rbp

	mov	rbp, rsp

	lea	r11, -3997696[rsp]

.LPSRL0:

	sub	rsp, 4096

	or	DWORD PTR [rsp], 0

	cmp	rsp, r11

	jne	.LPSRL0

	sub	rsp, 2384

	mov	DWORD PTR -4000068[rbp], edi # в edi лежит значение argc, мы помещаем его на стек

	mov	QWORD PTR -4000080[rbp], rsi

	mov	DWORD PTR -4[rbp], 0

	cmp	DWORD PTR -4000068[rbp], 4 #проверяем корректность числа аргументов, если их не 4 - выводим сообщение об ошибке

	je	.L16

	mov	eax, DWORD PTR -4000068[rbp]

	sub	eax, 1

	mov	esi, eax

	lea	rax, .LC0[rip]

	mov	rdi, rax

	mov	eax, 0

	call	printf@PLT

	mov	eax, 0

	jmp	.L30

.L16:

	mov	rax, QWORD PTR -4000080[rbp] #проверяем первый аргумент - тот, который отвечает за ввод, с помощью сравнения со строкой "--random" которая лежит по адресу метки .LC1

	add	rax, 8

	mov	rax, QWORD PTR [rax] 

	lea	rdx, .LC1[rip]

	mov	rsi, rdx

	mov	rdi, rax

	call	strcmp@PLT

	test	eax, eax

	jne	.L18 #если строки не равны - ввод файловый, считаем переменную i

	call	rand@PLT

	movsx	rdx, eax

	imul	rdx, rdx, 1125899907

	shr	rdx, 32

	sar	edx, 18

	mov	ecx, eax

	sar	ecx, 31

	sub	edx, ecx

	mov	DWORD PTR -4[rbp], edx

	mov	edx, DWORD PTR -4[rbp]

	imul	edx, edx, 1000000

	sub	eax, edx

	mov	DWORD PTR -4[rbp], eax #в eax лежит значение i, теперь кладем его на стек и проверяем что оно не 0

	cmp	DWORD PTR -4[rbp], 0

	jne	.L19 

	add	DWORD PTR -4[rbp], 1

.L19:

	mov	DWORD PTR -12[rbp], 0 #кладем на стек значение y для цикла

	jmp	.L20

.L21:

	call	rand@PLT #получаем случайный символ и записываем в buf

	movsx	rdx, eax

	imul	rdx, rdx, -1401515643

	shr	rdx, 32

	add	edx, eax

	sar	edx, 6

	mov	ecx, eax

	sar	ecx, 31

	sub	edx, ecx

	mov	DWORD PTR -8[rbp], edx # по адресу -8[rbp] лежит переменная ch

	mov	edx, DWORD PTR -8[rbp]

	imul	edx, edx, 95

	sub	eax, edx

	mov	DWORD PTR -8[rbp], eax

	add	DWORD PTR -8[rbp], 32

	mov	eax, DWORD PTR -8[rbp]

	mov	edx, eax

	mov	eax, DWORD PTR -12[rbp]

	cdqe

	mov	BYTE PTR -1000064[rbp+rax], dl #в dl лежит наш случайный символ, его кладем на последнюю позицию

	add	DWORD PTR -12[rbp], 1 #увеличиваем у на 1

.L20:

	mov	eax, DWORD PTR -12[rbp] #проверяем что y < i

	cmp	eax, DWORD PTR -4[rbp]

	jl	.L21

	mov	eax, DWORD PTR -4[rbp] #после конца цикла кладем '\0' в конец buf

	cdqe

	mov	BYTE PTR -1000064[rbp+rax], 0

	jmp	.L22

.L18:

	mov	rax, QWORD PTR -4000080[rbp] #пытаемся открыть файл

	add	rax, 8

	mov	rax, QWORD PTR [rax]

	lea	rdx, .LC2[rip]

	mov	rsi, rdx

	mov	rdi, rax

	call	fopen@PLT

	mov	QWORD PTR -24[rbp], rax #кладем на стек результат открытия и проверяем, что все хорошо

	cmp	QWORD PTR -24[rbp], 0

	jne	.L24

	lea	rax, .LC3[rip]

	mov	rdi, rax

	call	puts@PLT

	mov	eax, 0

	jmp	.L30

.L26:

	mov	rax, QWORD PTR -24[rbp]

	mov	rdi, rax

	call	fgetc@PLT

	mov	DWORD PTR -8[rbp], eax

	mov	eax, DWORD PTR -4[rbp]

	lea	edx, 1[rax]

	mov	DWORD PTR -4[rbp], edx

	mov	edx, DWORD PTR -8[rbp]

	cdqe

	mov	BYTE PTR -1000064[rbp+rax], dl

.L24:

	cmp	DWORD PTR -8[rbp], -1 #проверяем что ch не -1

	je	.L25

	cmp	DWORD PTR -4[rbp], 999999 #проверяем, что buf не переполнился

	jle	.L26

.L25:

	cmp	DWORD PTR -4[rbp], 1000000 # при переполнении сообщаем об ошибке

	jne	.L27

	mov	eax, DWORD PTR -4[rbp]

	sub	eax, 1

	cdqe

	movzx	eax, BYTE PTR -1000064[rbp+rax]

	cmp	al, -1

	je	.L27

	lea	rax, .LC4[rip]

	mov	rdi, rax

	call	puts@PLT

	mov	eax, 0

	jmp	.L30

.L27:

	mov	eax, DWORD PTR -4[rbp]

	sub	eax, 1

	cdqe

	mov	BYTE PTR -1000064[rbp+rax], 0

	sub	DWORD PTR -4[rbp], 1

	mov	rax, QWORD PTR -24[rbp]

	mov	rdi, rax

	call	fclose@PLT

.L22:

	mov	rax, QWORD PTR -4000080[rbp]

	add	rax, 16

	mov	rax, QWORD PTR [rax]

	mov	rdi, rax

	call	atoi@PLT

	mov	DWORD PTR -28[rbp], eax

	cmp	DWORD PTR -28[rbp], 0

	jne	.L28

	lea	rax, .LC5[rip]

	mov	rdi, rax

	mov	eax, 0

	call	printf@PLT

.L28:

	call	clock@PLT

	mov	QWORD PTR -40[rbp], rax

	mov	ecx, DWORD PTR -28[rbp]

	mov	edx, DWORD PTR -4[rbp]

	lea	rsi, -4000064[rbp]

	lea	rax, -1000064[rbp]

	mov	rdi, rax

	call	compute

	mov	DWORD PTR -4[rbp], eax

	call	clock@PLT

	mov	QWORD PTR -48[rbp], rax

	pxor	xmm0, xmm0

	cvtsi2sd	xmm0, QWORD PTR -48[rbp]

	pxor	xmm1, xmm1

	cvtsi2sd	xmm1, QWORD PTR -40[rbp]

	subsd	xmm0, xmm1

	movsd	QWORD PTR -56[rbp], xmm0

	movsd	xmm0, QWORD PTR -56[rbp]

	movsd	xmm1, QWORD PTR .LC6[rip]

	divsd	xmm0, xmm1

	movsd	QWORD PTR -56[rbp], xmm0

	mov	rax, QWORD PTR -4000080[rbp]

	add	rax, 24

	mov	rax, QWORD PTR [rax]

	lea	rdx, .LC7[rip]

	mov	rsi, rdx

	mov	rdi, rax

	call	fopen@PLT

	mov	QWORD PTR -64[rbp], rax

	cmp	QWORD PTR -64[rbp], 0

	jne	.L29

	lea	rax, .LC8[rip]

	mov	rdi, rax

	mov	eax, 0

	call	printf@PLT

	mov	eax, 0

	jmp	.L30

.L29:

	mov	rdx, QWORD PTR -56[rbp]

	mov	rax, QWORD PTR -64[rbp]

	movq	xmm0, rdx

	lea	rdx, .LC9[rip]

	mov	rsi, rdx

	mov	rdi, rax

	mov	eax, 1

	call	fprintf@PLT

	mov	rdx, QWORD PTR -64[rbp]

	mov	ecx, DWORD PTR -4[rbp]

	lea	rax, -4000064[rbp]

	mov	esi, ecx

	mov	rdi, rax

	call	write

	mov	eax, 0

.L30:

	leave

	ret

	.size	main, .-main

	.section	.rodata

	.align 8

.LC6:

	.long	0

	.long	1093567616

	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"

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
