	.file	"avs_2.c"
	.intel_syntax noprefix
	.section	.rodata
.LC4:
	.string	"x = %0.10lf\n"
.LC5:
	.string	"sh(x) = %0.10lf\n"
	.text
	.globl	write
	.type	write, @function
write:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	movsd	QWORD PTR -8[rbp], xmm0 #по адресу -8[rbp] лежит значение ans
	movsd	QWORD PTR -16[rbp], xmm1 #по адресу -16[rbp] лежит значение x
	mov	QWORD PTR -24[rbp], rdi #по адресу -24[rbp] лежит указатель файла для вывода, дальше идет вывод результатов 
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -24[rbp]
	movq	xmm0, rdx
	lea	rdx, .LC4[rip]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, 1
	call	fprintf@PLT
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	movq	xmm0, rdx
	lea	rdx, .LC5[rip]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, 1
	call	fprintf@PLT
	nop
	leave
	ret
	.size	write, .-write
	.section	.rodata
	.align 8
.LC6:
	.string	"Wrong number of arguments - %d instead of 2\n"
.LC7:
	.string	"--random"
.LC10:
	.string	"r"
.LC11:
	.string	"Wrong input file path"
.LC12:
	.string	"%lf"
.LC13:
	.string	"Wrong number"
.LC14:
	.string	"Wrong number of repeats"
.LC16:
	.string	"w"
.LC17:
	.string	"Wrong output file path"
	.align 8
.LC18:
	.string	"Execution time is %2.3f seconds\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	mov	DWORD PTR -68[rbp], edi #число параметров командной строки
	mov	QWORD PTR -80[rbp], rsi #адрес начала аргументов
	cmp	DWORD PTR -68[rbp], 4
	je	.L9 #если параметров меньше 4 завершаем программу
	mov	eax, DWORD PTR -68[rbp]
	sub	eax, 1
	mov	esi, eax
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	jmp	.L18
.L9:
	mov	rax, QWORD PTR -80[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	lea	rdx, .LC7[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT #проверяем тип ввода
	test	eax, eax
	jne	.L11 #если argv[1] != "--random"  - прыгаем на метку L11
	mov	edi, 0
	call	time@PLT
	mov	edi, eax
	call	srand@PLT
	call	rand@PLT
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax #в xmm0 кладем rand()
	movsd	xmm1, QWORD PTR .LC8[rip] #в xmm1 кладем RAND_MAX
	divsd	xmm0, xmm1
	movsd	QWORD PTR -64[rbp], xmm0 #в -64[rbp] хранится значение от 0 до 1
	movsd	xmm1, QWORD PTR -64[rbp] #в xmm1 кладем x
	movsd	xmm0, QWORD PTR .LC9[rip] #в xmm1 кладем 20
	mulsd	xmm0, xmm1 
	movsd	QWORD PTR -64[rbp], xmm0 #кладем в x значение 20*x
	jmp	.L12 
.L11:
	mov	rax, QWORD PTR -80[rbp] #файловый ввод
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	lea	rdx, .LC10[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	fopen@PLT #пытаемся открыть файл
	mov	QWORD PTR -8[rbp], rax #по адресу -8[rbp] лежит указатель файла для ввода
	cmp	QWORD PTR -8[rbp], 0
	jne	.L13 #если не получилось открыть и функция fopen() вернула 0 - выводим сообщение об ошибке и прыгаем в конец программы
	lea	rax, .LC11[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	eax, 0
	jmp	.L18
.L13:
	lea	rdx, -64[rbp] 
	mov	rax, QWORD PTR -8[rbp]
	lea	rcx, .LC12[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_fscanf@PLT #считываем значение из файла и кладем в -64[rbp], то есть по адресу x
	movsd	xmm0, QWORD PTR -64[rbp]
	movq	xmm1, QWORD PTR .LC2[rip]
	andpd	xmm0, xmm1
	comisd	xmm0, QWORD PTR .LC9[rip] #сравниваем модуль x и 20, если он модуль х больше - выводим сообщение об ошибке и прыгаем в конец программы
	jbe	.L20
	lea	rax, .LC13[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	eax, 0
	jmp	.L18
.L20:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	fclose@PLT #закрываем файл
.L12:
	mov	rax, QWORD PTR -80[rbp]
	add	rax, 16
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	atoi@PLT #находим число повторений
	mov	DWORD PTR -12[rbp], eax #переменная times лежит по адресу -12[rbp]
	cmp	DWORD PTR -12[rbp], 0 #если times == 0 - выводим сообщение об ошибке и прыгаем в конец программы
	jne	.L16
	lea	rax, .LC14[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L16:
	call	clock@PLT
	mov	QWORD PTR -24[rbp], rax #по адресу -24[rbp] лежит переменная start
	mov	rax, QWORD PTR -64[rbp]#запоминаем значение х для передачи в функцию compute
	mov	edx, DWORD PTR -12[rbp]#запоминаем значение times для передачи в функцию compute
	mov	edi, edx
	movq	xmm0, rax
	call	compute #вызываем compute
	movq	rax, xmm0
	mov	QWORD PTR -32[rbp], rax #по адресу -32[rbp] лежит переменная ans
	call	clock@PLT
	mov	QWORD PTR -40[rbp], rax #по адресу -40[rbp] лежит переменная finish
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, QWORD PTR -40[rbp] #кладем в xmm0 значение finish
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, QWORD PTR -24[rbp] #кладем в xmm1 значение start
	subsd	xmm0, xmm1 #находим finish - start
	movsd	QWORD PTR -48[rbp], xmm0 #по адресу -48[rbp] лежит переменная res
	movsd	xmm0, QWORD PTR -48[rbp] 
	movsd	xmm1, QWORD PTR .LC15[rip] 
	divsd	xmm0, xmm1
	movsd	QWORD PTR -48[rbp], xmm0 #кладем в переменную res значение res/CLOCKS_PER_SEC
	mov	rax, QWORD PTR -80[rbp]
	add	rax, 24
	mov	rax, QWORD PTR [rax]
	lea	rdx, .LC16[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	fopen@PLT #пытаемся открыть файл для вывода
	mov	QWORD PTR -56[rbp], rax #по адресу -56[rbp] теперь лежит указатель файла для вывода
	cmp	QWORD PTR -56[rbp], 0 #если открыть файл не получилось - выводим сообщение об ошибке и прыгаем в конец программы
	jne	.L17
	lea	rax, .LC17[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	jmp	.L18
.L17:
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -56[rbp]
	movq	xmm0, rdx
	lea	rdx, .LC18[rip]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, 1
	call	fprintf@PLT # выводим длительность программы
	movsd	xmm0, QWORD PTR -64[rbp] #сохраняем для передачи в функцию write значение x
	mov	rdx, QWORD PTR -56[rbp] #сохраняем для передачи в функцию write указатель файла для вывода
	mov	rax, QWORD PTR -32[rbp] #сохраняем для передачи в функцию write значение ans
	mov	rdi, rdx
	movapd	xmm1, xmm0
	movq	xmm0, rax
	call	write #вызываем write и потом завершаем программу
	mov	eax, 0
.L18:
	leave
	ret
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC1:
	.long	0
	.long	1073741824
	.align 16
.LC2:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC3:
	.long	-350469331
	.long	1058682594
	.align 8
.LC8:
	.long	-4194304
	.long	1105199103
	.align 8
.LC9:
	.long	0
	.long	1077149696
	.align 8
.LC15:
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
