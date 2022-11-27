	.file	"avs_2_compute.c"
	.intel_syntax noprefix
	.text
	.globl	compute
	.type	compute, @function
compute:
	endbr64
	push	rbp
	mov	rbp, rsp
	movapd	xmm4, xmm0 #в регистре xmm4 теперь лежит значение x
	# в edi лежит переменная times
	mov     r12, 0 # в r12 теперь лежит значение j
	jmp	.L2 #заходим в тело цикла
.L5:
	movapd	xmm0, xmm4
	movapd	xmm5, xmm0 # в xmm5 теперь лежит значение res, изначально res = x
	movapd	xmm0, xmm4
	movapd	xmm6, xmm0 # в xmm6 теперь лежит лежит значение last, изначально last = x
	movsd	xmm0, QWORD PTR .LC0[rip]
	movapd	xmm7, xmm0 # в xmm7 теперь лежит значение n, изначально n = 1
	jmp	.L3
.L4:
	movapd	xmm1, xmm7 #xmm1 = n
	movsd	xmm0, QWORD PTR .LC0[rip] #xmm0 = 1
	addsd	xmm1, xmm0 # xmm1 = n + 1
	movapd	xmm0, xmm4 #xmm0 = x
	divsd	xmm0, xmm1 #xmm0 = x / (n+1)
	movapd	xmm1, xmm0 #xmm1 = x / (n+1)
	mulsd	xmm1, xmm6 #xmm1 = (x / (n+1)) * last
	movapd	xmm2, xmm7 #xmm2 = n
	movsd	xmm0, QWORD PTR .LC1[rip] #xmm0 = 2
	addsd	xmm2, xmm0 #xmm2 = n + 2
	movapd	xmm0, xmm4 #xmm0 = x
	divsd	xmm0, xmm2 #xmm0 = x / (n+2)
	mulsd	xmm0, xmm1 #xmm0 = (x / (n+2)) * (x / (n+1)) * last
	movapd	xmm6, xmm0 #last = xmm0 = (x / (n+2)) * (x / (n+1)) * last
	movapd	xmm1, xmm7 #xmm1 = n
	movsd	xmm0, QWORD PTR .LC1[rip] #xmm0 = 2
	addsd	xmm0, xmm1 #xmm0 = n + 2
	movapd	xmm7, xmm0 # n = n + 2
	movapd	xmm0, xmm5 #xmm0 = res
	addsd	xmm0, xmm6 #xmm0 = xmm0 + last = res + last
	movapd	xmm5, xmm0 # res = res + last
.L3:
	movapd	xmm0, xmm6 #xmm0 = last
	movq	xmm1, QWORD PTR .LC2[rip]  
	andpd	xmm0, xmm1 # находим модуль xmm0, то есть модуль last
	comisd	xmm0, QWORD PTR .LC3[rip] #сравниваем модуль last и 0.0001
	ja	.L4 #если |last| > 0.0001 продолжаем итерации, иначе - выходим из цикла
	add	r12, 1 #увеличиваем значение j
.L2:
	mov	rax, r12
	cmp	rax, rdi #сравниваем текущее значение j с times
	jl	.L5 #если j >= times кладем в rax возвращаемое значение - значение переменной res, дальше пролог и завершение работы функции
	movapd	xmm0, xmm5
	movq	rax, xmm0
	movq	xmm0, rax
	pop	rbp
	ret
	.size	compute, .-compute
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
