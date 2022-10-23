	.file	"avs.c" #название файла
	.intel_syntax noprefix
	.text
	.section	.rodata #название секции
.LC0: 
	.string	"%d" # форматная строка для ввода и вывода чисел
	.text
	.globl	read #объявление функции для считывания массива
	.type	read, @function
read:
	endbr64 # механизм защиты для проверки передачи управления
	push	rbp #пролог
	mov	rbp, rsp
	sub     rsp, 16
	mov	eax, DWORD PTR [r12] # кладем в eax arr_size 
	cdqe
	sal	rax, 2    #Вычисляем нужный размер в байтах
	mov	rdi, rax #передаем нужный размер через rdi
	call	malloc@PLT #вызов malloc, возвращаемый указатель в rax 
	mov	r13, rax #кладем в регистр r13 новый указатель
	mov	DWORD PTR -4[rbp], 0 #кладем на стек значение переменной i для считывания элементов массива
	jmp	.L2 #переходим на метку .L2
.L3:
	mov	eax, DWORD PTR -4[rbp] #кладем в eax значение i
	cdqe
	lea	rdx, 0[0+rax*4] #считаем сдвиг относительно начала массива
	mov	rax, r13 #кладем в rax адрес нового массива
	add	rax, rdx #считаем итоговый адрес текущего элемента
	mov	rsi, rax #кладем этот адрес в rsi
	lea	rax, .LC0[rip] 
	mov	rdi, rax #кладем в rdi адрес строки для считывания текущего элемента массива
	mov	eax, 0
	call	__isoc99_scanf@PLT #вызываем scanf
	add	DWORD PTR -4[rbp], 1  #увеличиваем i на 1
.L2:
	mov	eax, DWORD PTR -4[rbp] #кладем в eax текущее значение i 
	cmp	eax, DWORD PTR [r12] #сравниваем с размером массива
	jl	.L3 #если меньше - прыгаем на метку .L3
	leave
	ret
	.size	read, .-read
	.globl	compute
	.type	compute, @function
compute:
	endbr64
	push	rbp #пролог функции
	mov	rbp, rsp
	sub	rsp, 16
	mov	eax, DWORD PTR [r12] #кладем в eax размер массива
	cdqe
	sal	rax, 2 #считаем нужное число байтов
	mov	rdi, rax #кладем это число в rdi
	call	malloc@PLT #вызываем malloc
	mov	r14, rax #кладем на стек адрес массива В, который лежит в rax
	mov	BYTE PTR -1[rbp], 0 #выделяем на стеке место под переменную met и кладем в неё 0
	mov	DWORD PTR -8[rbp], 0 #кладем на стек значение переменной i
	jmp	.L6 #прыгаем на метку .L6
.L9:
	mov	eax, DWORD PTR -8[rbp] #кладем в eax значение i
	cdqe
	lea	rdx, 0[0+rax*4] #считаем сдвиг относительно начала массива А
	mov	rax, r13 #кладем в rax адрес изначального массива А
	add	rax, rdx #считаем итоговый адрес текущего элемента массива А
	mov	eax, DWORD PTR [rax] #кладем в eax значение текущего элемента массива А
	test	eax, eax #проверяем его знак
	jle	.L7 #если элемент отрицательный или 0 - прыгаем на метку .L7
	mov	BYTE PTR -1[rbp], 1 #запоминаем, что встретили положительный элемент
.L7:
	mov	eax, DWORD PTR -8[rbp] #кладем в eax значение i
	cdqe
	lea	rdx, 0[0+rax*4] #считаем сдвиг относительно начала массива А
	mov	rax, r13 #кладем в rax адрес изначального массива А
	add	rax, rdx #считаем итоговый адрес текущего элемента массива А
	mov	edx, DWORD PTR -8[rbp] #кладем в edx значение i
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4] #считаем сдвиг относительно начала массива В
	mov	rdx, r14 #кладем в rdx адрес массива B
	add	rdx, rcx #считаем итоговый адрес текущего элемента массива B
	mov	eax, DWORD PTR [rax] #кладем в eax значение текущего элемента массива А
	mov	DWORD PTR [rdx], eax #присваиваем текущему элементу массива В значение элемента массива А
	cmp	BYTE PTR -1[rbp], 0 #смотрим, чему равна переменная met
	jne	.L8 #если она равна 1, прыгаем на метку .L8, иначен уменьшаем значение элемента массива В на 5
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, r14
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	mov	rax, r14
	add	rax, rcx
	sub	edx, 5
	mov	DWORD PTR [rax], edx
.L8:
	add	DWORD PTR -8[rbp], 1 #увеличиваем i
.L6:
	mov	eax, DWORD PTR -8[rbp] #кладем в eax значение i
	cmp	eax, DWORD PTR [r12] #сравниваем его с размером массива
	jl	.L9 #если меньше - прыгаем на метку .L9
	leave
	ret
	.size	compute, .-compute
	.section	.rodata
.LC1:
	.string	"%d " #форматная строка
	.text
	.globl	write
	.type	write, @function
write:
	endbr64
	push	rbp #пролог функции
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], 0 #кладем на стек значение переменной i
	jmp	.L12 #прыгаем на метку .L12
.L13:
	mov	eax, DWORD PTR -4[rbp] #кладем в еах значение i
	cdqe
	lea	rdx, 0[0+rax*4] #считаем сдвиг относительно начала массива В
	mov	rax, r14 #кладем в rax адрес массива B
	add	rax, rdx #считаем итоговый адрес текущего элемента массива B
	mov	eax, DWORD PTR [rax] 
	mov	esi, eax # передаем значение текущего элемента через esi
	lea	rax, .LC1[rip] 
	mov	rdi, rax #передаем через rdi адрес строки для вывода чисел через пробел
	mov	eax, 0
	call	printf@PLT #вызываем printf
	add	DWORD PTR -4[rbp], 1 #увеличиваем значение i
.L12:
	mov	eax, DWORD PTR -4[rbp] #кладем в eax значение i
	cmp	eax, DWORD PTR [r12] #сравниваем с размером массива
	jl	.L13 #если меньше прыгаем на метку .L13
	mov	edi, 10 #выводим символ перевода строки и выходим из функции
	call	putchar@PLT
	nop
	leave
	ret
	.size	write, .-write
	.section	.rodata
.LC2:
	.string	"Wrong size!"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64 
	push	rbp # пролог функции, сохраняем указатель фрейма
	mov	rbp, rsp 
	sub	rsp, 32 # освобождаем место под переменные
	mov	DWORD PTR -20[rbp], 0 # переменная arr_size лежит по адресу -20[rbp], кладем в неё 0
	lea     r12, -20[rbp] # сохраняем адрес в регистр r12
	mov	rax, r12 #кладем в rax адрес переменной arr_size
	mov	rsi, rax # для вызова функции scanf передаем адрес arr_size через регистр rsi
	lea	rax, .LC0[rip] #кладем в rax адрес форматной строки для ввода
	mov	rdi, rax # для вызова функции scanf передаем адрес форматной строки через регистр rdi
	mov	eax, 0
	call	__isoc99_scanf@PLT #вызов функции scanf 
	mov	eax, DWORD PTR [r12] #кладем в eax значение arr_size
	test	eax, eax # проверяем, что eax неотрицательное число, иначе прыгаем на метку .L15
	js	.L15
	mov	eax, DWORD PTR [r12] #кладем в eax значение arr_size
	cmp	eax, 10000 # проверяем, что eax не больше 10000, если верно - прыгаем на метку .L16
	jle	.L16
.L15:
	lea	rax, .LC2[rip] #кладем в rax адрес строки при некорректном вводе
	mov	rdi, rax #передаем адрес через rdi
	call	puts@PLT #вызываем printf
	mov	eax, 0 #зануляем eax 
	jmp	.L17
.L16:
	call	read # вызываем функцию для чтения массива, новый адрес лежит в r13
	call	compute #вызываем функцию для составления массива В, адрес в регистре r14
	call	write # вызываем функцию для вывода ответа
	mov	eax, 0
.L17:
	leave #завершение программы
	ret
	.size	main, .-main
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
