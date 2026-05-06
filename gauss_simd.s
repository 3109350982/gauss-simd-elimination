	.file	"main.cpp"
	.text
	.p2align 4
	.def	_ZL12gauss_serialR6Matrix;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL12gauss_serialR6Matrix
_ZL12gauss_serialR6Matrix:
.LFB10560:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	movl	(%rcx), %ebx
	testl	%ebx, %ebx
	jle	.L11
	movslq	4(%rcx), %r11
	movq	8(%rcx), %r13
	xorl	%ebp, %ebp
	movl	$1, %edi
	leal	-2(%rbx), %esi
	vmovsd	.LC1(%rip), %xmm2
	movl	%edi, %r9d
	leaq	1(%r11), %rax
	leaq	0(,%r11,8), %r10
	vmovsd	0(%r13,%rbp,8), %xmm1
	leaq	16(%r13), %r14
	vmovq	%rax, %xmm4
	leaq	8(%r13,%r10), %r15
	leaq	8(%r13), %rax
	vmovq	%rax, %xmm3
	movq	%r15, %rax
	vmovq	%xmm4, %r15
	vmovq	%rax, %xmm4
	cmpl	$-1, %esi
	je	.L3
	.p2align 4
	.p2align 3
.L13:
	movl	%esi, %r12d
	leaq	0(,%rbp,8), %r8
	vmovq	%xmm3, %rax
	leaq	(%r12,%rbp), %rdx
	addq	%r8, %rax
	leaq	(%r14,%rdx,8), %rdx
	.p2align 4
	.p2align 3
.L5:
	vmovsd	(%rax), %xmm0
	addq	$8, %rax
	vdivsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -8(%rax)
	cmpq	%rdx, %rax
	jne	.L5
	vmovq	%xmm4, %rax
	movq	%r11, %rcx
	vmovsd	%xmm2, 0(%r13,%rbp,8)
	addq	%rax, %r8
	leaq	(%r11,%rbp), %rax
	negq	%rcx
	addq	%r12, %rax
	leaq	(%r14,%rax,8), %rdx
	.p2align 4
	.p2align 3
.L7:
	vmovsd	-8(%r8), %xmm1
	movq	%r8, %rax
	.p2align 4
	.p2align 3
.L6:
	vmovsd	(%rax,%rcx,8), %xmm0
	addq	$8, %rax
	vfnmadd213sd	-8(%rax), %xmm1, %xmm0
	vmovsd	%xmm0, -8(%rax)
	cmpq	%rax, %rdx
	jne	.L6
	incl	%r9d
	movq	$0x000000000, -8(%r8)
	subq	%r11, %rcx
	addq	%r10, %r8
	addq	%r10, %rdx
	cmpl	%r9d, %ebx
	jne	.L7
	incq	%rdi
	addq	%r15, %rbp
	decl	%esi
	vmovsd	0(%r13,%rbp,8), %xmm1
	movl	%edi, %r9d
	cmpl	$-1, %esi
	jne	.L13
.L3:
	addq	$8, %r10
	leal	-1(%rbx), %eax
	imulq	%rax, %r10
	vmovsd	%xmm2, 0(%r13,%r10)
.L11:
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.seh_endproc
	.p2align 4
	.def	_ZL19gauss_sse_unalignedR6Matrix;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL19gauss_sse_unalignedR6Matrix
_ZL19gauss_sse_unalignedR6Matrix:
.LFB10562:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movl	(%rcx), %esi
	testl	%esi, %esi
	jle	.L58
	vmovsd	.LC1(%rip), %xmm22
	movq	8(%rcx), %r15
	leal	-1(%rsi), %eax
	movq	$1, 8(%rsp)
	movslq	4(%rcx), %r10
	movl	%eax, (%rsp)
	leal	2(%rsi), %eax
	movl	$3, 16(%rsp)
	movl	%eax, 44(%rsp)
	leal	-2(%rsi), %eax
	xorl	%edx, %edx
	movq	%rcx, 128(%rsp)
	movl	%eax, 32(%rsp)
	movq	%r15, %r14
	movq	%rcx, %r15
	.p2align 4
	.p2align 3
.L44:
	leaq	1(%r10), %rax
	movl	(%rsp), %edi
	imulq	%rdx, %rax
	leaq	(%r14,%rax,8), %rbx
	movq	8(%rsp), %rax
	vmovsd	(%rbx), %xmm3
	vmovd	%eax, %xmm21
	movl	%eax, 20(%rsp)
	vmovddup	%xmm3, %xmm2
	cmpl	%edi, %eax
	jge	.L59
	imulq	%rdx, %r10
	addq	8(%rsp), %r10
	leaq	(%r14,%r10,8), %rax
	vmovupd	(%rax), %xmm5
	vdivpd	%xmm2, %xmm5, %xmm1
	vmovupd	%xmm1, (%rax)
	cmpl	%edi, 16(%rsp)
	jge	.L21
	movslq	16(%rsp), %rcx
	movq	32(%rsp), %rax
	subq	%rcx, %rax
	andl	$4294967294, %eax
	leaq	5(%rdx,%rax), %r8
	.p2align 4
	.p2align 3
.L22:
	movslq	4(%r15), %rax
	movq	8(%r15), %r9
	imulq	%rdx, %rax
	addq	%rcx, %rax
	addq	$2, %rcx
	leaq	(%r9,%rax,8), %rax
	vmovupd	(%rax), %xmm5
	vdivpd	%xmm2, %xmm5, %xmm1
	vmovupd	%xmm1, (%rax)
	cmpq	%rcx, %r8
	jne	.L22
.L21:
	movl	16(%rsp), %eax
	movl	%esi, %ecx
	movslq	4(%r15), %r10
	movq	8(%r15), %r14
	subl	%eax, %ecx
	andl	$-2, %ecx
	addl	%eax, %ecx
	leaq	1(%r10), %rax
	imulq	%rdx, %rax
	leaq	(%r14,%rax,8), %rbx
.L20:
	cmpl	%ecx, %esi
	jle	.L26
	movl	%esi, %r9d
	movq	%rdx, %r11
	subl	%ecx, %r9d
	imulq	%r10, %r11
	leal	-1(%r9), %eax
	cmpl	$6, %eax
	jbe	.L45
	movslq	%ecx, %rax
	movl	%r9d, %r8d
	vbroadcastsd	%xmm3, %zmm4
	addq	%r11, %rax
	shrl	$3, %r8d
	leaq	(%r14,%rax,8), %rax
	salq	$6, %r8
	addq	%rax, %r8
	.p2align 4
	.p2align 3
.L25:
	vmovupd	(%rax), %zmm5
	addq	$64, %rax
	vdivpd	%zmm4, %zmm5, %zmm2
	vmovupd	%zmm2, -64(%rax)
	cmpq	%rax, %r8
	jne	.L25
	movl	%r9d, %eax
	andl	$-8, %eax
	leal	(%rax,%rcx), %r8d
	cmpl	%eax, %r9d
	je	.L26
.L23:
	subl	%eax, %r9d
	leal	-1(%r9), %r12d
	cmpl	$2, %r12d
	jbe	.L28
	movslq	%ecx, %rcx
	vbroadcastsd	%xmm3, %ymm2
	addq	%r11, %rcx
	addq	%rcx, %rax
	leaq	(%r14,%rax,8), %rax
	vmovupd	(%rax), %ymm5
	vdivpd	%ymm2, %ymm5, %ymm2
	vmovupd	%ymm2, (%rax)
	movl	%r9d, %eax
	andl	$-4, %eax
	addl	%eax, %r8d
	cmpl	%eax, %r9d
	je	.L26
.L28:
	movslq	%r8d, %rax
	addq	%r11, %rax
	leaq	(%r14,%rax,8), %rax
	vmovsd	(%rax), %xmm2
	vdivsd	%xmm3, %xmm2, %xmm2
	vmovsd	%xmm2, (%rax)
	leal	1(%r8), %eax
	cmpl	%eax, %esi
	jle	.L26
	cltq
	addl	$2, %r8d
	addq	%r11, %rax
	leaq	(%r14,%rax,8), %rax
	vmovsd	(%rax), %xmm2
	vdivsd	%xmm3, %xmm2, %xmm2
	vmovsd	%xmm2, (%rax)
	cmpl	%r8d, %esi
	jle	.L26
	movslq	%r8d, %r8
	addq	%r11, %r8
	leaq	(%r14,%r8,8), %rax
	vmovsd	(%rax), %xmm2
	vdivsd	%xmm3, %xmm2, %xmm2
	vmovsd	%xmm2, (%rax)
.L26:
	vmovsd	%xmm22, (%rbx)
	movl	44(%rsp), %ebx
	cmpl	%ebx, 16(%rsp)
	je	.L60
	movl	32(%rsp), %ebx
	movl	%esi, %r12d
	movq	8(%rsp), %r8
	movq	%r15, %r13
	movl	%ebx, %eax
	subl	%edx, %eax
	leaq	2(%rdx,%rax), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rax
	movl	16(%rsp), %ebx
	subq	%rbx, %rax
	subl	%ebx, %r12d
	andl	$4294967294, %eax
	andl	$-2, %r12d
	leaq	5(%rdx,%rax), %r11
	addl	%ebx, %r12d
	movq	%r10, %rax
	movq	%r14, %r10
	movl	%r12d, 40(%rsp)
	movq	%rax, %r14
	.p2align 4
	.p2align 3
.L43:
	movq	%r14, %r12
	movl	(%rsp), %ebx
	imulq	%r8, %r12
	leaq	(%r12,%rdx), %rax
	leaq	(%r10,%rax,8), %rbp
	vmovsd	0(%rbp), %xmm5
	vmovddup	%xmm5, %xmm2
	cmpl	%ebx, 20(%rsp)
	jge	.L61
	movq	8(%rsp), %rbx
	imulq	%rdx, %r14
	addq	%rbx, %r12
	addq	%rbx, %r14
	movl	(%rsp), %ebx
	leaq	(%r10,%r12,8), %rax
	vmovupd	(%r10,%r14,8), %xmm1
	vfnmadd213pd	(%rax), %xmm2, %xmm1
	vmovupd	%xmm1, (%rax)
	movl	16(%rsp), %eax
	cmpl	%ebx, %eax
	jge	.L33
	movslq	%eax, %rcx
	.p2align 4
	.p2align 3
.L34:
	movslq	4(%r13), %rax
	movq	8(%r13), %r10
	movq	%rax, %r9
	imulq	%rdx, %rax
	imulq	%r8, %r9
	addq	%rcx, %rax
	addq	%rcx, %r9
	vmovupd	(%r10,%rax,8), %xmm1
	addq	$2, %rcx
	leaq	(%r10,%r9,8), %r9
	vfnmadd213pd	(%r9), %xmm2, %xmm1
	vmovupd	%xmm1, (%r9)
	cmpq	%r11, %rcx
	jne	.L34
.L33:
	movslq	4(%r13), %r14
	movq	8(%r13), %r10
	movq	%r14, %r12
	imulq	%r8, %r12
	leaq	(%rdx,%r12), %rax
	leaq	(%r10,%rax,8), %rbp
	movl	40(%rsp), %eax
	cmpl	%eax, %esi
	jle	.L32
	movl	%eax, %ecx
.L30:
	movl	%esi, %r15d
	movq	%rdx, %rbx
	movslq	%ecx, %r9
	subl	%ecx, %r15d
	imulq	%r14, %rbx
	leal	-1(%r15), %eax
	vmovd	%eax, %xmm4
	leaq	(%r9,%r12), %rax
	vmovq	%rax, %xmm3
	salq	$3, %rax
	vmovq	%rax, %xmm1
	leaq	(%rbx,%r9), %rax
	vmovq	%rax, %xmm0
	leaq	1(%r9,%rbx), %rax
	salq	$3, %rax
	vmovq	%rax, %xmm2
	vmovd	%xmm4, %eax
	cmpl	$2, %eax
	seta	4(%rsp)
	movzbl	4(%rsp), %edi
	cmpl	%ecx, %esi
	setg	%al
	andl	%edi, %eax
	testb	$1, %al
	je	.L35
	vmovq	%xmm1, %rax
	vmovq	%xmm2, %rdi
	subq	%rdi, %rax
	cmpq	$48, %rax
	jbe	.L35
	movl	$1, %edi
	cmpl	%ecx, %esi
	movl	%r15d, %eax
	cmovle	%edi, %eax
	vmovd	%xmm4, %edi
	movl	%eax, 4(%rsp)
	cmpl	$6, %edi
	jbe	.L47
	vmovq	%xmm2, %rdi
	shrl	$3, %eax
	vbroadcastsd	%xmm5, %zmm17
	movl	%eax, %r15d
	leaq	-8(%r10,%rdi), %r9
	vmovq	%xmm1, %rdi
	xorl	%eax, %eax
	addq	%r10, %rdi
	salq	$6, %r15
	.p2align 4
	.p2align 3
.L37:
	vmovupd	(%r9,%rax), %zmm4
	vfnmadd213pd	(%rdi,%rax), %zmm17, %zmm4
	vmovupd	%zmm4, (%rdi,%rax)
	addq	$64, %rax
	cmpq	%r15, %rax
	jne	.L37
	movl	4(%rsp), %edi
	movl	%edi, %eax
	andl	$-8, %eax
	addl	%eax, %ecx
	cmpl	%edi, %eax
	je	.L32
.L36:
	movl	4(%rsp), %r9d
	subl	%eax, %r9d
	leal	-1(%r9), %r15d
	cmpl	$2, %r15d
	jbe	.L39
	movl	%eax, %eax
	vmovq	%xmm3, %r15
	vmovq	%xmm0, %rdi
	vbroadcastsd	%xmm5, %ymm2
	addq	%rax, %r15
	addq	%rax, %rdi
	movl	%r9d, %eax
	leaq	(%r10,%r15,8), %r15
	andl	$-4, %eax
	vmovupd	(%r15), %ymm3
	addl	%eax, %ecx
	vfnmadd132pd	(%r10,%rdi,8), %ymm3, %ymm2
	vmovupd	%ymm2, (%r15)
	cmpl	%r9d, %eax
	je	.L32
.L39:
	movslq	%ecx, %rax
	leaq	(%rax,%r12), %r9
	addq	%rbx, %rax
	vmovsd	(%r10,%rax,8), %xmm2
	leaq	(%r10,%r9,8), %r9
	leal	1(%rcx), %eax
	vfnmadd213sd	(%r9), %xmm5, %xmm2
	vmovsd	%xmm2, (%r9)
	cmpl	%eax, %esi
	jle	.L32
	cltq
	addl	$2, %ecx
	leaq	(%r12,%rax), %r9
	addq	%rbx, %rax
	vmovsd	(%r10,%rax,8), %xmm2
	leaq	(%r10,%r9,8), %r9
	vfnmadd213sd	(%r9), %xmm5, %xmm2
	vmovsd	%xmm2, (%r9)
	cmpl	%ecx, %esi
	jle	.L32
	movslq	%ecx, %rcx
	addq	%rcx, %r12
	addq	%rbx, %rcx
	leaq	(%r10,%r12,8), %rax
	vmovsd	(%rax), %xmm3
	vfnmadd132sd	(%r10,%rcx,8), %xmm3, %xmm5
	vmovsd	%xmm5, (%rax)
.L32:
	movq	$0x000000000, 0(%rbp)
	incq	%r8
	cmpq	%r8, 24(%rsp)
	jne	.L43
	movq	%r14, %rax
	incl	16(%rsp)
	movq	%r10, %r14
	movq	%r13, %r15
	incq	8(%rsp)
	movq	%rax, %r10
	incq	%rdx
	jmp	.L44
	.p2align 4
	.p2align 3
.L35:
	leaq	(%r10,%rbx,8), %rcx
	leaq	(%r10,%r12,8), %rax
	.p2align 4
	.p2align 3
.L42:
	vmovsd	(%rcx,%r9,8), %xmm0
	vfnmadd213sd	(%rax,%r9,8), %xmm5, %xmm0
	vmovsd	%xmm0, (%rax,%r9,8)
	incq	%r9
	cmpl	%r9d, %esi
	jg	.L42
	jmp	.L32
	.p2align 4
	.p2align 3
.L61:
	vmovd	%xmm21, %ecx
	jmp	.L30
.L47:
	xorl	%eax, %eax
	jmp	.L36
.L60:
	vzeroupper
.L58:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L59:
	movl	8(%rsp), %ecx
	jmp	.L20
.L45:
	movl	%ecx, %r8d
	xorl	%eax, %eax
	jmp	.L23
	.seh_endproc
	.p2align 4
	.def	_ZL17gauss_avx_unroll4R6Matrix;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL17gauss_avx_unroll4R6Matrix
_ZL17gauss_avx_unroll4R6Matrix:
.LFB10566:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movl	(%rcx), %r11d
	movq	%rcx, %r14
	testl	%r11d, %r11d
	jle	.L114
	vmovsd	.LC1(%rip), %xmm18
	leal	-3(%r11), %eax
	movslq	4(%rcx), %r15
	movq	$1, 8(%rsp)
	movl	%eax, 4(%rsp)
	leal	-15(%r11), %eax
	movq	8(%rcx), %r13
	xorl	%edx, %edx
	movl	%eax, 32(%rsp)
	leal	-17(%r11), %eax
	movl	%eax, 48(%rsp)
	leal	-8(%r11), %eax
	movl	%eax, 56(%rsp)
	leal	-4(%r11), %eax
	movl	%eax, 52(%rsp)
	movq	%r15, %rax
	movq	%r13, %r15
	movq	%rax, %r13
	.p2align 4
	.p2align 3
.L94:
	leaq	0(,%rdx,8), %rdi
	leaq	1(%r13), %rax
	movq	8(%rsp), %rcx
	imulq	%rdi, %rax
	vmovsd	(%r15,%rax), %xmm16
	movl	32(%rsp), %eax
	vmovd	%ecx, %xmm17
	movl	%ecx, 20(%rsp)
	vbroadcastsd	%xmm16, %ymm2
	cmpl	%eax, %ecx
	jge	.L95
	movl	48(%rsp), %r9d
	shrl	$4, %r9d
	movl	%r9d, %eax
	salq	$4, %rax
	leaq	17(%rdx,%rax), %r8
	jmp	.L65
	.p2align 4
	.p2align 3
.L68:
	movq	8(%r14), %r15
	movslq	4(%r14), %r13
.L65:
	imulq	%rdx, %r13
	leaq	(%rcx,%r13), %rax
	leaq	4(%rcx,%r13), %r10
	leaq	(%r15,%rax,8), %rax
	vmovupd	(%r15,%r10,8), %ymm4
	leaq	8(%rcx,%r13), %r10
	vmovupd	(%rax), %ymm1
	vmovupd	(%r15,%r10,8), %ymm3
	leaq	12(%rcx,%r13), %r10
	vmovupd	(%r15,%r10,8), %ymm0
	vdivpd	%ymm2, %ymm4, %ymm4
	vdivpd	%ymm2, %ymm1, %ymm5
	vmovupd	%ymm5, (%rax)
	movslq	4(%r14), %rax
	vdivpd	%ymm2, %ymm3, %ymm3
	imulq	%rdx, %rax
	leaq	4(%rcx,%rax), %r10
	movq	8(%r14), %rax
	vmovupd	%ymm4, (%rax,%r10,8)
	movslq	4(%r14), %rax
	vdivpd	%ymm2, %ymm0, %ymm0
	imulq	%rdx, %rax
	leaq	8(%rcx,%rax), %r10
	movq	8(%r14), %rax
	vmovupd	%ymm3, (%rax,%r10,8)
	movslq	4(%r14), %rax
	imulq	%rdx, %rax
	leaq	12(%rcx,%rax), %r10
	movq	8(%r14), %rax
	addq	$16, %rcx
	vmovupd	%ymm0, (%rax,%r10,8)
	cmpq	%rcx, %r8
	jne	.L68
	movl	%r11d, %eax
	subl	48(%rsp), %eax
	sall	$4, %r9d
	movq	8(%r14), %r15
	movslq	4(%r14), %r13
	addl	%r9d, %eax
	cmpl	4(%rsp), %eax
	jge	.L115
.L111:
	imulq	%rdx, %r13
	movslq	%eax, %r9
	leal	4(%rax), %ebx
	leaq	0(%r13,%r9), %r10
	leaq	(%r15,%r10,8), %rcx
	vmovupd	(%rcx), %ymm1
	vdivpd	%ymm2, %ymm1, %ymm0
	vmovupd	%ymm0, (%rcx)
	cmpl	%ebx, 4(%rsp)
	jle	.L72
	movq	56(%rsp), %r8
	movslq	%ebx, %rcx
	subq	%rax, %r8
	andl	$4294967292, %r8d
	leaq	8(%r9,%r8), %r10
	.p2align 4
	.p2align 3
.L73:
	movslq	4(%r14), %r8
	movq	8(%r14), %r9
	imulq	%rdx, %r8
	addq	%rcx, %r8
	addq	$4, %rcx
	leaq	(%r9,%r8,8), %r8
	vmovupd	(%r8), %ymm1
	vdivpd	%ymm2, %ymm1, %ymm0
	vmovupd	%ymm0, (%r8)
	cmpq	%rcx, %r10
	jne	.L73
.L72:
	movl	52(%rsp), %r8d
	movq	8(%r14), %r15
	movslq	4(%r14), %r13
	subl	%eax, %r8d
	andl	$-4, %r8d
	addl	%ebx, %r8d
.L66:
	cmpl	%r8d, %r11d
	jle	.L77
	movl	%r11d, %r10d
	movq	%rdx, %rbx
	subl	%r8d, %r10d
	imulq	%r13, %rbx
	leal	-1(%r10), %ecx
	cmpl	$6, %ecx
	jbe	.L97
	movslq	%r8d, %rcx
	movl	%r10d, %r9d
	vbroadcastsd	%xmm16, %zmm4
	addq	%rbx, %rcx
	shrl	$3, %r9d
	leaq	(%r15,%rcx,8), %rcx
	salq	$6, %r9
	addq	%rcx, %r9
	.p2align 4
	.p2align 3
.L76:
	vmovupd	(%rcx), %zmm1
	addq	$64, %rcx
	vdivpd	%zmm4, %zmm1, %zmm3
	vmovupd	%zmm3, -64(%rcx)
	cmpq	%rcx, %r9
	jne	.L76
	movl	%r10d, %ecx
	andl	$-8, %ecx
	leal	(%rcx,%r8), %r9d
	cmpl	%r10d, %ecx
	je	.L77
.L74:
	subl	%ecx, %r10d
	leal	-1(%r10), %ebp
	cmpl	$2, %ebp
	jbe	.L79
	movslq	%r8d, %r8
	addq	%rbx, %r8
	addq	%r8, %rcx
	leaq	(%r15,%rcx,8), %rcx
	vmovupd	(%rcx), %ymm1
	vdivpd	%ymm2, %ymm1, %ymm2
	vmovupd	%ymm2, (%rcx)
	movl	%r10d, %ecx
	andl	$-4, %ecx
	addl	%ecx, %r9d
	cmpl	%r10d, %ecx
	je	.L77
.L79:
	movslq	%r9d, %rcx
	addq	%rbx, %rcx
	leaq	(%r15,%rcx,8), %rcx
	vmovsd	(%rcx), %xmm2
	vdivsd	%xmm16, %xmm2, %xmm2
	vmovsd	%xmm2, (%rcx)
	leal	1(%r9), %ecx
	cmpl	%ecx, %r11d
	jle	.L77
	movslq	%ecx, %rcx
	addq	%rbx, %rcx
	leaq	(%r15,%rcx,8), %rcx
	vmovsd	(%rcx), %xmm2
	vdivsd	%xmm16, %xmm2, %xmm2
	vmovsd	%xmm2, (%rcx)
	leal	2(%r9), %ecx
	cmpl	%ecx, %r11d
	jle	.L77
	movslq	%ecx, %rcx
	addq	%rcx, %rbx
	leaq	(%r15,%rbx,8), %rcx
	vmovsd	(%rcx), %xmm2
	vdivsd	%xmm16, %xmm2, %xmm2
	vmovsd	%xmm2, (%rcx)
.L77:
	leaq	1(%r13), %rcx
	imulq	%rcx, %rdi
	cmpl	$-16, 48(%rsp)
	vmovsd	%xmm18, (%r15,%rdi)
	je	.L116
	movl	48(%rsp), %edi
	movl	%r11d, %r9d
	movq	%r14, %r12
	movq	%r15, %r14
	leal	15(%rdi), %ecx
	movl	%edi, %r8d
	subl	%edi, %r9d
	shrl	$4, %r8d
	leaq	2(%rdx,%rcx), %rcx
	movq	%rcx, 24(%rsp)
	movl	%r8d, %ecx
	sall	$4, %r8d
	leal	(%r8,%r9), %edi
	movq	56(%rsp), %r8
	salq	$4, %rcx
	movl	52(%rsp), %r9d
	movl	%edi, 36(%rsp)
	leal	4(%rax), %edi
	leaq	17(%rdx,%rcx), %rcx
	movl	%edi, 44(%rsp)
	movslq	%eax, %rdi
	vmovq	%rdi, %xmm1
	subq	%rax, %r8
	subl	%eax, %r9d
	andl	$4294967292, %r8d
	andl	$-4, %r9d
	cmpl	4(%rsp), %eax
	leaq	8(%rdi,%r8), %r8
	movl	$0, %edi
	cmovge	%edi, %r9d
	leal	4(%rax,%r9), %eax
	movl	%eax, 40(%rsp)
	movq	8(%rsp), %rax
	.p2align 4
	.p2align 3
.L93:
	movq	%r13, %rdi
	movl	32(%rsp), %r15d
	imulq	%rax, %rdi
	leaq	(%rdi,%rdx), %r9
	leaq	(%r14,%r9,8), %rsi
	vmovsd	(%rsi), %xmm19
	vbroadcastsd	%xmm19, %ymm2
	cmpl	%r15d, 20(%rsp)
	jge	.L81
	movq	8(%rsp), %r9
	jmp	.L82
	.p2align 4
	.p2align 3
.L117:
	movslq	4(%r12), %r13
.L82:
	movq	%r13, %r10
	imulq	%rdx, %r13
	imulq	%rax, %r10
	leaq	4(%r10,%r9), %rsi
	leaq	(%r10,%r9), %rbx
	vmovupd	(%r14,%rsi,8), %ymm21
	leaq	8(%r10,%r9), %rsi
	leaq	12(%r10,%r9), %r10
	leaq	(%r14,%rbx,8), %rbx
	vmovupd	(%r14,%r10,8), %ymm5
	leaq	4(%r13,%r9), %r10
	vmovupd	(%r14,%rsi,8), %ymm20
	vmovupd	(%r14,%r10,8), %ymm4
	leaq	8(%r13,%r9), %r10
	vmovupd	(%r14,%r10,8), %ymm3
	leaq	12(%r13,%r9), %r10
	addq	%r9, %r13
	vmovupd	(%r14,%r13,8), %ymm22
	vmovupd	(%r14,%r10,8), %ymm0
	vfnmadd213pd	(%rbx), %ymm2, %ymm22
	vfnmadd132pd	%ymm2, %ymm21, %ymm4
	vfnmadd132pd	%ymm2, %ymm20, %ymm3
	vfnmadd132pd	%ymm2, %ymm5, %ymm0
	vmovupd	%ymm22, (%rbx)
	movslq	4(%r12), %r10
	imulq	%rax, %r10
	leaq	4(%r9,%r10), %rbx
	movq	8(%r12), %r10
	vmovupd	%ymm4, (%r10,%rbx,8)
	movslq	4(%r12), %r10
	imulq	%rax, %r10
	leaq	8(%r9,%r10), %rbx
	movq	8(%r12), %r10
	vmovupd	%ymm3, (%r10,%rbx,8)
	movslq	4(%r12), %r10
	imulq	%rax, %r10
	leaq	12(%r9,%r10), %rbx
	movq	8(%r12), %r10
	addq	$16, %r9
	vmovupd	%ymm0, (%r10,%rbx,8)
	movq	8(%r12), %r14
	cmpq	%r9, %rcx
	jne	.L117
	movslq	4(%r12), %r13
	movq	%r14, %r9
	movl	4(%rsp), %esi
	cmpl	%esi, 36(%rsp)
	jge	.L98
.L84:
	movq	%rax, %r9
	vmovq	%xmm1, %rdi
	imulq	%r13, %r9
	imulq	%rdx, %r13
	addq	%rdi, %r9
	addq	%rdi, %r13
	leaq	(%r14,%r9,8), %r9
	vmovupd	(%r14,%r13,8), %ymm0
	vfnmadd213pd	(%r9), %ymm2, %ymm0
	vmovupd	%ymm0, (%r9)
	movslq	44(%rsp), %r9
	cmpl	%r9d, 4(%rsp)
	jle	.L89
	.p2align 4
	.p2align 3
.L90:
	movslq	4(%r12), %r10
	movq	8(%r12), %rsi
	movq	%r10, %rbx
	imulq	%rdx, %r10
	imulq	%rax, %rbx
	addq	%r9, %r10
	addq	%r9, %rbx
	vmovupd	(%rsi,%r10,8), %ymm0
	addq	$4, %r9
	leaq	(%rsi,%rbx,8), %rbx
	vfnmadd213pd	(%rbx), %ymm2, %ymm0
	vmovupd	%ymm0, (%rbx)
	cmpq	%r9, %r8
	jne	.L90
.L89:
	movl	40(%rsp), %r10d
	movslq	4(%r12), %r13
	movq	8(%r12), %r9
.L83:
	movq	%rax, %rdi
	movq	%r9, %r14
	imulq	%r13, %rdi
	leaq	(%rdx,%rdi), %r9
	leaq	(%r14,%r9,8), %rsi
	cmpl	%r10d, %r11d
	jle	.L86
.L87:
	movq	%rdx, %rbp
	movslq	%r10d, %rbx
	imulq	%r13, %rbp
	leaq	(%rbx,%rdi), %r9
	salq	$3, %r9
	leaq	1(%rbp,%rbx), %r15
	movl	%r11d, %ebx
	subl	%r10d, %ebx
	salq	$3, %r15
	decl	%ebx
	cmpl	$2, %ebx
	seta	%bl
	cmpl	%r10d, %r11d
	setg	18(%rsp)
	andw	18(%rsp), %bx
	andl	$1, %ebx
	je	.L91
	movq	%r9, %rbx
	subq	%r15, %rbx
	cmpq	$16, %rbx
	jbe	.L91
	addq	%r14, %r9
	vmovupd	(%r9), %ymm5
	vfnmadd132pd	-8(%r14,%r15), %ymm5, %ymm2
	vmovupd	%ymm2, (%r9)
.L86:
	movq	$0x000000000, (%rsi)
	incq	%rax
	cmpq	24(%rsp), %rax
	jne	.L93
	movq	%r14, %r15
	incq	8(%rsp)
	movq	%r12, %r14
	incq	%rdx
	decl	48(%rsp)
	jmp	.L94
	.p2align 4
	.p2align 3
.L91:
	addq	%r14, %r9
	vmovsd	-8(%r14,%r15), %xmm2
	vfnmadd213sd	(%r9), %xmm19, %xmm2
	vmovsd	%xmm2, (%r9)
	leal	1(%r10), %r9d
	cmpl	%r9d, %r11d
	jle	.L86
	movslq	%r9d, %r9
	leaq	(%r9,%rdi), %rbx
	addq	%rbp, %r9
	vmovsd	(%r14,%r9,8), %xmm2
	leaq	(%r14,%rbx,8), %rbx
	leal	2(%r10), %r9d
	vfnmadd213sd	(%rbx), %xmm19, %xmm2
	vmovsd	%xmm2, (%rbx)
	cmpl	%r11d, %r9d
	jge	.L86
	movslq	%r9d, %r9
	addl	$3, %r10d
	leaq	(%r9,%rdi), %rbx
	addq	%rbp, %r9
	vmovsd	(%r14,%r9,8), %xmm2
	leaq	(%r14,%rbx,8), %rbx
	vfnmadd213sd	(%rbx), %xmm19, %xmm2
	vmovsd	%xmm2, (%rbx)
	cmpl	%r10d, %r11d
	jle	.L86
	movslq	%r10d, %r10
	addq	%r10, %rdi
	addq	%rbp, %r10
	leaq	(%r14,%rdi,8), %r9
	vmovsd	(%r9), %xmm5
	vfnmadd132sd	(%r14,%r10,8), %xmm5, %xmm19
	vmovsd	%xmm19, (%r9)
	jmp	.L86
	.p2align 4
	.p2align 3
.L81:
	movl	4(%rsp), %r15d
	cmpl	%r15d, 20(%rsp)
	jl	.L84
	vmovd	%xmm17, %r10d
	jmp	.L87
	.p2align 4
	.p2align 3
.L98:
	movl	36(%rsp), %r10d
	jmp	.L83
.L116:
	vzeroupper
.L114:
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L95:
	movl	8(%rsp), %eax
	cmpl	4(%rsp), %eax
	jl	.L111
.L115:
	movl	%eax, %r8d
	jmp	.L66
.L97:
	movl	%r8d, %r9d
	xorl	%ecx, %ecx
	jmp	.L74
	.seh_endproc
	.p2align 4
	.def	_ZL17gauss_avx_alignedR6Matrix;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL17gauss_avx_alignedR6Matrix
_ZL17gauss_avx_alignedR6Matrix:
.LFB10565:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movl	(%rcx), %r8d
	movq	%rcx, %r14
	testl	%r8d, %r8d
	jle	.L180
	vmovsd	.LC1(%rip), %xmm17
	movslq	%r8d, %rax
	movq	8(%rcx), %r13
	leal	-3(%r8), %ebx
	movslq	4(%rcx), %rcx
	movq	%rax, 40(%rsp)
	leal	-8(%r8), %eax
	movl	$2, 16(%rsp)
	movl	%eax, 24(%rsp)
	leal	-4(%r8), %eax
	movq	$1, 32(%rsp)
	xorl	%r9d, %r9d
	movl	%eax, 20(%rsp)
	movq	%r14, %r15
	.p2align 4
	.p2align 3
.L153:
	movq	%rcx, %rdi
	imulq	%r9, %rdi
	leaq	(%rdi,%r9), %rax
	vmovsd	0(%r13,%rax,8), %xmm3
	movq	32(%rsp), %rax
	vmovd	%eax, %xmm19
	vmovd	%eax, %xmm18
	vbroadcastsd	%xmm3, %ymm4
	cmpl	%eax, %r8d
	jle	.L120
	testb	$3, %al
	je	.L181
	movslq	16(%rsp), %rax
	leaq	0(%r13,%rdi,8), %r10
	jmp	.L123
	.p2align 4
	.p2align 3
.L174:
	incq	%rax
	testb	$3, %dl
	je	.L121
.L123:
	vmovsd	-8(%r10,%rax,8), %xmm0
	movl	%eax, %edx
	vdivsd	%xmm3, %xmm0, %xmm0
	vmovsd	%xmm0, -8(%r10,%rax,8)
	cmpl	%eax, %r8d
	jg	.L174
	cmpl	%ebx, %edx
	jge	.L124
.L125:
	movslq	%edx, %r10
	leal	4(%rdx), %r11d
	addq	%r10, %rdi
	leaq	0(%r13,%rdi,8), %rax
	vmovapd	(%rax), %ymm5
	vdivpd	%ymm4, %ymm5, %ymm0
	vmovapd	%ymm0, (%rax)
	cmpl	%ebx, %r11d
	jge	.L131
	movq	24(%rsp), %rax
	movslq	%r11d, %rcx
	subq	%rdx, %rax
	andl	$4294967292, %eax
	leaq	8(%r10,%rax), %r10
	.p2align 4
	.p2align 3
.L132:
	movslq	4(%r15), %rax
	movq	8(%r15), %rsi
	imulq	%r9, %rax
	addq	%rcx, %rax
	addq	$4, %rcx
	leaq	(%rsi,%rax,8), %rax
	vmovapd	(%rax), %ymm2
	vdivpd	%ymm4, %ymm2, %ymm0
	vmovapd	%ymm0, (%rax)
	cmpq	%rcx, %r10
	jne	.L132
.L131:
	movl	20(%rsp), %eax
	movl	$0, %esi
	movq	8(%r15), %r13
	movslq	4(%r15), %rcx
	subl	%edx, %eax
	andl	$-4, %eax
	cmpl	%ebx, %edx
	cmovge	%esi, %eax
	leal	(%r11,%rax), %edx
.L124:
	cmpl	%edx, %r8d
	jle	.L128
	movq	%r9, %rdi
	imulq	%rcx, %rdi
.L155:
	movl	%r8d, %eax
	movl	$1, %r11d
	subl	%edx, %eax
	cmpl	%edx, %r8d
	cmovg	%eax, %r11d
	decl	%eax
	cmpl	$6, %eax
	jbe	.L157
	cmpl	%edx, %r8d
	jle	.L157
	movslq	%edx, %rax
	movl	%r11d, %r10d
	vbroadcastsd	%xmm3, %zmm5
	addq	%rdi, %rax
	shrl	$3, %r10d
	leaq	0(%r13,%rax,8), %rax
	salq	$6, %r10
	addq	%rax, %r10
	.p2align 4
	.p2align 3
.L134:
	vmovupd	(%rax), %zmm2
	addq	$64, %rax
	vdivpd	%zmm5, %zmm2, %zmm0
	vmovupd	%zmm0, -64(%rax)
	cmpq	%rax, %r10
	jne	.L134
	movl	%r11d, %eax
	andl	$-8, %eax
	leal	(%rax,%rdx), %r10d
	cmpl	%r11d, %eax
	je	.L128
.L133:
	subl	%eax, %r11d
	leal	-1(%r11), %r14d
	cmpl	$2, %r14d
	jbe	.L136
	movslq	%edx, %rdx
	addq	%rdi, %rdx
	addq	%rdx, %rax
	leaq	0(%r13,%rax,8), %rax
	vmovupd	(%rax), %ymm5
	vdivpd	%ymm4, %ymm5, %ymm4
	vmovupd	%ymm4, (%rax)
	movl	%r11d, %eax
	andl	$-4, %eax
	addl	%eax, %r10d
	cmpl	%r11d, %eax
	je	.L128
.L136:
	movslq	%r10d, %rax
	addq	%rdi, %rax
	leaq	0(%r13,%rax,8), %rax
	vmovsd	(%rax), %xmm0
	vdivsd	%xmm3, %xmm0, %xmm0
	vmovsd	%xmm0, (%rax)
	leal	1(%r10), %eax
	cmpl	%eax, %r8d
	jle	.L128
	cltq
	addl	$2, %r10d
	addq	%rdi, %rax
	leaq	0(%r13,%rax,8), %rax
	vmovsd	(%rax), %xmm0
	vdivsd	%xmm3, %xmm0, %xmm0
	vmovsd	%xmm0, (%rax)
	cmpl	%r10d, %r8d
	jle	.L128
	movslq	%r10d, %r10
	addq	%r10, %rdi
	leaq	0(%r13,%rdi,8), %rax
	vmovsd	(%rax), %xmm0
	vdivsd	%xmm3, %xmm0, %xmm0
	vmovsd	%xmm0, (%rax)
.L128:
	leaq	1(%rcx), %rax
	movq	32(%rsp), %r10
	imulq	%r9, %rax
	vmovsd	%xmm17, 0(%r13,%rax,8)
	cmpq	%r10, 40(%rsp)
	je	.L179
	vmovd	%xmm19, %eax
	movq	%r15, %r12
	andl	$3, %eax
	vmovd	%eax, %xmm1
	movl	%r8d, %eax
	subl	16(%rsp), %eax
	leaq	2(%r9,%rax), %rax
	movq	%rax, 8(%rsp)
	.p2align 4
	.p2align 3
.L152:
	movq	%r10, %r15
	movq	%rcx, %rdi
	imulq	%rcx, %r15
	imulq	%r9, %rdi
	leaq	(%r15,%r9), %rax
	leaq	0(%r13,%rax,8), %rbp
	vmovd	%xmm1, %eax
	vmovsd	0(%rbp), %xmm4
	vbroadcastsd	%xmm4, %ymm3
	testl	%eax, %eax
	je	.L182
	movslq	16(%rsp), %rax
	leaq	0(%r13,%rdi,8), %rsi
	leaq	0(%r13,%r15,8), %rdx
	jmp	.L140
	.p2align 4
	.p2align 3
.L177:
	incq	%rax
	testb	$3, %r11b
	je	.L138
.L140:
	vmovsd	-8(%rsi,%rax,8), %xmm0
	movl	%eax, %r11d
	vfnmadd213sd	-8(%rdx,%rax,8), %xmm4, %xmm0
	vmovsd	%xmm0, -8(%rdx,%rax,8)
	cmpl	%eax, %r8d
	jg	.L177
	cmpl	%ebx, %r11d
	jge	.L141
.L142:
	movslq	%r11d, %rax
	addq	%rax, %r15
	addq	%rax, %rdi
	vmovapd	0(%r13,%rdi,8), %ymm0
	leaq	0(%r13,%r15,8), %rdx
	leal	4(%r11), %r13d
	vfnmadd213pd	(%rdx), %ymm3, %ymm0
	vmovapd	%ymm0, (%rdx)
	cmpl	%r13d, %ebx
	jle	.L148
	movq	24(%rsp), %rcx
	movslq	%r13d, %rdx
	subq	%r11, %rcx
	andl	$4294967292, %ecx
	leaq	8(%rax,%rcx), %rsi
	.p2align 4
	.p2align 3
.L149:
	movslq	4(%r12), %rax
	movq	%r10, %rcx
	movq	8(%r12), %rdi
	imulq	%rax, %rcx
	imulq	%r9, %rax
	addq	%rdx, %rcx
	addq	%rdx, %rax
	leaq	(%rdi,%rcx,8), %rcx
	addq	$4, %rdx
	vmovapd	(%rdi,%rax,8), %ymm0
	vfnmadd213pd	(%rcx), %ymm3, %ymm0
	vmovapd	%ymm0, (%rcx)
	cmpq	%rdx, %rsi
	jne	.L149
.L148:
	movl	20(%rsp), %eax
	movl	$0, %esi
	movq	%r10, %r15
	movslq	4(%r12), %rcx
	subl	%r11d, %eax
	andl	$-4, %eax
	cmpl	%ebx, %r11d
	cmovge	%esi, %eax
	imulq	%rcx, %r15
	leal	0(%r13,%rax), %r11d
	movq	8(%r12), %r13
	leaq	(%r9,%r15), %rax
	leaq	0(%r13,%rax,8), %rbp
.L141:
	cmpl	%r11d, %r8d
	jle	.L145
	movq	%r9, %rdi
	imulq	%rcx, %rdi
.L154:
	movslq	%r11d, %rdx
	leaq	(%rdx,%r15), %rax
	leaq	1(%rdx,%rdi), %r14
	movl	%r8d, %edx
	subl	%r11d, %edx
	salq	$3, %rax
	salq	$3, %r14
	decl	%edx
	cmpl	$2, %edx
	seta	%sil
	cmpl	%r8d, %r11d
	setl	%dl
	andl	%esi, %edx
	andl	$1, %edx
	je	.L150
	movq	%rax, %rdx
	subq	%r14, %rdx
	cmpq	$16, %rdx
	jbe	.L150
	addq	%r13, %rax
	vmovupd	(%rax), %ymm5
	vfnmadd132pd	-8(%r13,%r14), %ymm5, %ymm3
	vmovupd	%ymm3, (%rax)
.L145:
	movq	$0x000000000, 0(%rbp)
	incq	%r10
	cmpq	8(%rsp), %r10
	jne	.L152
	incq	32(%rsp)
	movq	%r12, %r15
	incq	%r9
	incl	16(%rsp)
	jmp	.L153
.L182:
	vmovd	%xmm18, %r11d
	.p2align 4
	.p2align 3
.L138:
	cmpl	%ebx, %r11d
	jl	.L142
	jmp	.L154
	.p2align 4
	.p2align 3
.L150:
	addq	%r13, %rax
	vmovsd	-8(%r13,%r14), %xmm0
	vfnmadd213sd	(%rax), %xmm4, %xmm0
	vmovsd	%xmm0, (%rax)
	leal	1(%r11), %eax
	cmpl	%eax, %r8d
	jle	.L145
	cltq
	leaq	(%rax,%r15), %rdx
	addq	%rdi, %rax
	vmovsd	0(%r13,%rax,8), %xmm0
	leaq	0(%r13,%rdx,8), %rdx
	leal	2(%r11), %eax
	vfnmadd213sd	(%rdx), %xmm4, %xmm0
	vmovsd	%xmm0, (%rdx)
	cmpl	%r8d, %eax
	jge	.L145
	cltq
	addl	$3, %r11d
	leaq	(%rax,%r15), %rdx
	addq	%rdi, %rax
	vmovsd	0(%r13,%rax,8), %xmm0
	leaq	0(%r13,%rdx,8), %rdx
	vfnmadd213sd	(%rdx), %xmm4, %xmm0
	vmovsd	%xmm0, (%rdx)
	cmpl	%r11d, %r8d
	jle	.L145
	movslq	%r11d, %r11
	addq	%r11, %r15
	addq	%rdi, %r11
	leaq	0(%r13,%r15,8), %rax
	vmovsd	(%rax), %xmm5
	vfnmadd132sd	0(%r13,%r11,8), %xmm5, %xmm4
	vmovsd	%xmm4, (%rax)
	jmp	.L145
.L181:
	movl	32(%rsp), %edx
.L121:
	cmpl	%ebx, %edx
	jl	.L125
	jmp	.L155
.L179:
	vzeroupper
.L180:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L157:
	movl	%edx, %r10d
	xorl	%eax, %eax
	jmp	.L133
.L120:
	cmpl	%ebx, %eax
	jge	.L128
	movl	%eax, %edx
	jmp	.L125
	.seh_endproc
	.p2align 4
	.def	_ZL19gauss_avx_unalignedR6Matrix;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL19gauss_avx_unalignedR6Matrix
_ZL19gauss_avx_unalignedR6Matrix:
.LFB10564:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movl	(%rcx), %r11d
	movq	%rcx, %r14
	testl	%r11d, %r11d
	jle	.L219
	movq	8(%rcx), %r15
	vmovsd	.LC1(%rip), %xmm16
	leal	-3(%r11), %eax
	movq	%r14, 128(%rsp)
	movslq	4(%rcx), %rcx
	movl	%eax, 8(%rsp)
	leal	-9(%r11), %eax
	movl	$1, %edi
	movl	%eax, 40(%rsp)
	leal	4(%r11), %eax
	movl	$5, 12(%rsp)
	movl	%eax, 44(%rsp)
	xorl	%eax, %eax
	movq	%r15, %r14
	movq	128(%rsp), %r15
	.p2align 4
	.p2align 3
.L207:
	leaq	1(%rcx), %rdx
	vmovd	%edi, %xmm5
	movl	%edi, 32(%rsp)
	imulq	%rax, %rdx
	leaq	(%r14,%rdx,8), %rbp
	vmovsd	0(%rbp), %xmm17
	vbroadcastsd	%xmm17, %ymm3
	cmpl	8(%rsp), %edi
	jge	.L220
	imulq	%rax, %rcx
	addq	%rdi, %rcx
	leaq	(%r14,%rcx,8), %rdx
	vmovupd	(%rdx), %ymm4
	vdivpd	%ymm3, %ymm4, %ymm1
	vmovupd	%ymm1, (%rdx)
	movl	8(%rsp), %edx
	cmpl	%edx, 12(%rsp)
	jge	.L190
	movl	40(%rsp), %edx
	movslq	12(%rsp), %rcx
	shrl	$2, %edx
	leaq	9(%rax,%rdx,4), %r8
	.p2align 4
	.p2align 3
.L191:
	movslq	4(%r15), %rdx
	movq	8(%r15), %r9
	imulq	%rax, %rdx
	addq	%rcx, %rdx
	addq	$4, %rcx
	leaq	(%r9,%rdx,8), %rdx
	vmovupd	(%rdx), %ymm0
	vdivpd	%ymm3, %ymm0, %ymm1
	vmovupd	%ymm1, (%rdx)
	cmpq	%rcx, %r8
	jne	.L191
.L190:
	movslq	4(%r15), %rcx
	movl	%r11d, %r8d
	movl	12(%rsp), %esi
	movq	8(%r15), %r14
	leaq	1(%rcx), %rdx
	imulq	%rax, %rdx
	subl	%esi, %r8d
	andl	$-4, %r8d
	addl	%esi, %r8d
	leaq	(%r14,%rdx,8), %rbp
.L189:
	cmpl	%r8d, %r11d
	jle	.L195
	movl	%r11d, %r10d
	movq	%rax, %rbx
	subl	%r8d, %r10d
	imulq	%rcx, %rbx
	leal	-1(%r10), %edx
	cmpl	$6, %edx
	jbe	.L208
	movslq	%r8d, %rdx
	movl	%r10d, %r9d
	vbroadcastsd	%xmm17, %zmm4
	addq	%rbx, %rdx
	shrl	$3, %r9d
	leaq	(%r14,%rdx,8), %rdx
	salq	$6, %r9
	addq	%rdx, %r9
	.p2align 4
	.p2align 3
.L194:
	vmovupd	(%rdx), %zmm0
	addq	$64, %rdx
	vdivpd	%zmm4, %zmm0, %zmm2
	vmovupd	%zmm2, -64(%rdx)
	cmpq	%r9, %rdx
	jne	.L194
	movl	%r10d, %edx
	andl	$-8, %edx
	leal	(%rdx,%r8), %r9d
	cmpl	%r10d, %edx
	je	.L195
.L192:
	subl	%edx, %r10d
	leal	-1(%r10), %r13d
	cmpl	$2, %r13d
	jbe	.L197
	movslq	%r8d, %r8
	addq	%rbx, %r8
	addq	%r8, %rdx
	leaq	(%r14,%rdx,8), %rdx
	vmovupd	(%rdx), %ymm4
	vdivpd	%ymm3, %ymm4, %ymm3
	vmovupd	%ymm3, (%rdx)
	movl	%r10d, %edx
	andl	$-4, %edx
	addl	%edx, %r9d
	cmpl	%edx, %r10d
	je	.L195
.L197:
	movslq	%r9d, %rdx
	addq	%rbx, %rdx
	leaq	(%r14,%rdx,8), %rdx
	vmovsd	(%rdx), %xmm2
	vdivsd	%xmm17, %xmm2, %xmm2
	vmovsd	%xmm2, (%rdx)
	leal	1(%r9), %edx
	cmpl	%edx, %r11d
	jle	.L195
	movslq	%edx, %rdx
	addl	$2, %r9d
	addq	%rbx, %rdx
	leaq	(%r14,%rdx,8), %rdx
	vmovsd	(%rdx), %xmm2
	vdivsd	%xmm17, %xmm2, %xmm2
	vmovsd	%xmm2, (%rdx)
	cmpl	%r9d, %r11d
	jle	.L195
	movslq	%r9d, %r9
	addq	%rbx, %r9
	leaq	(%r14,%r9,8), %rdx
	vmovsd	(%rdx), %xmm2
	vdivsd	%xmm17, %xmm2, %xmm2
	vmovsd	%xmm2, (%rdx)
.L195:
	movl	44(%rsp), %edx
	vmovsd	%xmm16, 0(%rbp)
	cmpl	%edx, 12(%rsp)
	je	.L221
	movl	40(%rsp), %esi
	movl	%r11d, %ebp
	movq	%rdi, 24(%rsp)
	movq	%r14, %r12
	movq	%r15, %r13
	leal	7(%rsi), %edx
	shrl	$2, %esi
	leaq	2(%rax,%rdx), %rdx
	movq	%rdx, 16(%rsp)
	movl	%esi, %edx
	movl	12(%rsp), %esi
	leaq	9(%rax,%rdx,4), %r8
	movq	%rdi, %rdx
	subl	%esi, %ebp
	andl	$-4, %ebp
	addl	%esi, %ebp
	movl	%ebp, 36(%rsp)
	.p2align 4
	.p2align 3
.L206:
	movq	%rcx, %rbx
	movl	8(%rsp), %r14d
	imulq	%rdx, %rbx
	leaq	(%rbx,%rax), %r9
	leaq	(%r12,%r9,8), %rsi
	vmovsd	(%rsi), %xmm18
	vbroadcastsd	%xmm18, %ymm2
	cmpl	%r14d, 32(%rsp)
	jge	.L222
	movq	24(%rsp), %rsi
	imulq	%rax, %rcx
	movl	12(%rsp), %edi
	addq	%rsi, %rbx
	addq	%rsi, %rcx
	movl	8(%rsp), %esi
	vmovupd	(%r12,%rcx,8), %ymm1
	leaq	(%r12,%rbx,8), %r9
	vfnmadd213pd	(%r9), %ymm2, %ymm1
	vmovupd	%ymm1, (%r9)
	cmpl	%esi, %edi
	jge	.L202
	movslq	%edi, %r9
	.p2align 4
	.p2align 3
.L203:
	movslq	4(%r13), %rcx
	movq	8(%r13), %rbx
	movq	%rcx, %r10
	imulq	%rax, %rcx
	imulq	%rdx, %r10
	addq	%r9, %rcx
	addq	%r9, %r10
	vmovupd	(%rbx,%rcx,8), %ymm1
	addq	$4, %r9
	leaq	(%rbx,%r10,8), %r10
	vfnmadd213pd	(%r10), %ymm2, %ymm1
	vmovupd	%ymm1, (%r10)
	cmpq	%r8, %r9
	jne	.L203
.L202:
	movslq	4(%r13), %rcx
	movq	%rdx, %rbx
	movq	8(%r13), %r12
	movl	36(%rsp), %edi
	imulq	%rcx, %rbx
	leaq	(%rax,%rbx), %r9
	leaq	(%r12,%r9,8), %rsi
	cmpl	%edi, %r11d
	jle	.L201
	movl	%edi, %r10d
.L199:
	movq	%rax, %rbp
	movslq	%r10d, %r15
	imulq	%rcx, %rbp
	leaq	(%r15,%rbx), %r9
	salq	$3, %r9
	leaq	1(%rbp,%r15), %rdi
	movl	%r11d, %r15d
	subl	%r10d, %r15d
	salq	$3, %rdi
	decl	%r15d
	cmpl	$2, %r15d
	seta	%r15b
	cmpl	%r10d, %r11d
	setg	%r14b
	andl	%r14d, %r15d
	andl	$1, %r15d
	je	.L204
	movq	%r9, %r14
	subq	%rdi, %r14
	cmpq	$16, %r14
	jbe	.L204
	addq	%r12, %r9
	vmovupd	(%r9), %ymm4
	vfnmadd132pd	-8(%r12,%rdi), %ymm4, %ymm2
	vmovupd	%ymm2, (%r9)
.L201:
	movq	$0x000000000, (%rsi)
	incq	%rdx
	cmpq	%rdx, 16(%rsp)
	jne	.L206
	movq	24(%rsp), %rdi
	movq	%r12, %r14
	movq	%r13, %r15
	incq	%rax
	incl	12(%rsp)
	decl	40(%rsp)
	incq	%rdi
	jmp	.L207
	.p2align 4
	.p2align 3
.L204:
	addq	%r12, %r9
	vmovsd	-8(%r12,%rdi), %xmm2
	vfnmadd213sd	(%r9), %xmm18, %xmm2
	vmovsd	%xmm2, (%r9)
	leal	1(%r10), %r9d
	cmpl	%r9d, %r11d
	jle	.L201
	movslq	%r9d, %r9
	leaq	(%r9,%rbx), %r14
	addq	%rbp, %r9
	vmovsd	(%r12,%r9,8), %xmm2
	leaq	(%r12,%r14,8), %r14
	leal	2(%r10), %r9d
	vfnmadd213sd	(%r14), %xmm18, %xmm2
	vmovsd	%xmm2, (%r14)
	cmpl	%r9d, %r11d
	jle	.L201
	movslq	%r9d, %r9
	leaq	(%r9,%rbx), %r14
	addq	%rbp, %r9
	vmovsd	(%r12,%r9,8), %xmm2
	leaq	(%r12,%r14,8), %r14
	leal	3(%r10), %r9d
	vfnmadd213sd	(%r14), %xmm18, %xmm2
	vmovsd	%xmm2, (%r14)
	cmpl	%r9d, %r11d
	jle	.L201
	movslq	%r9d, %r10
	leaq	(%r10,%rbx), %r9
	addq	%rbp, %r10
	leaq	(%r12,%r9,8), %r9
	vmovsd	(%r9), %xmm3
	vfnmadd132sd	(%r12,%r10,8), %xmm3, %xmm18
	vmovsd	%xmm18, (%r9)
	jmp	.L201
	.p2align 4
	.p2align 3
.L222:
	vmovd	%xmm5, %r10d
	jmp	.L199
.L221:
	vzeroupper
.L219:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L220:
	movl	%edi, %r8d
	jmp	.L189
.L208:
	movl	%r8d, %r9d
	xorl	%edx, %edx
	jmp	.L192
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii "matrix size mismatch\0"
	.text
	.p2align 4
	.def	_ZL12max_abs_diffRK6MatrixS1_;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL12max_abs_diffRK6MatrixS1_
_ZL12max_abs_diffRK6MatrixS1_:
.LFB10559:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	(%rcx), %r11d
	cmpl	(%rdx), %r11d
	jne	.L235
	testl	%r11d, %r11d
	jle	.L230
	vmovq	.LC3(%rip), %xmm2
	movslq	4(%rcx), %rbx
	xorl	%r10d, %r10d
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	8(%rdx), %rdi
	movslq	4(%rdx), %rsi
	xorl	%r9d, %r9d
	movslq	%r11d, %r8
	movq	8(%rcx), %rdx
	salq	$3, %rbx
	.p2align 4
	.p2align 3
.L228:
	leaq	(%rdi,%r10,8), %rcx
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
.L227:
	vmovsd	(%rdx,%rax,8), %xmm0
	vsubsd	(%rcx,%rax,8), %xmm0, %xmm0
	incq	%rax
	vandpd	%xmm2, %xmm0, %xmm0
	vmaxsd	%xmm1, %xmm0, %xmm1
	cmpq	%r8, %rax
	jne	.L227
	incl	%r9d
	addq	%rbx, %rdx
	addq	%rsi, %r10
	cmpl	%r9d, %r11d
	jne	.L228
	vmovsd	%xmm1, %xmm1, %xmm0
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	ret
.L230:
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovsd	%xmm1, %xmm1, %xmm0
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	ret
.L235:
	movl	$16, %ecx
	call	__cxa_allocate_exception
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %r12
.LEHB0:
	call	_ZNSt13runtime_errorC1EPKc
.LEHE0:
	leaq	_ZNSt13runtime_errorD1Ev(%rip), %r8
	leaq	_ZTISt13runtime_error(%rip), %rdx
	movq	%r12, %rcx
.LEHB1:
	call	__cxa_throw
.L232:
	movq	%rax, %rsi
	movq	%r12, %rcx
	vzeroupper
	call	__cxa_free_exception
	movq	%rsi, %rcx
	call	_Unwind_Resume
	nop
.LEHE1:
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA10559:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10559-.LLSDACSB10559
.LLSDACSB10559:
	.uleb128 .LEHB0-.LFB10559
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L232-.LFB10559
	.uleb128 0
	.uleb128 .LEHB1-.LFB10559
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE10559:
	.text
	.seh_endproc
	.p2align 4
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB11706:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.section	.text.unlikely,"x"
	.align 2
	.def	_ZN6MatrixC1Ei.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN6MatrixC1Ei.part.0
_ZN6MatrixC1Ei.part.0:
.LFB11711:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	$8, %ecx
	call	__cxa_allocate_exception
	leaq	_ZNSt9bad_allocD1Ev(%rip), %r8
	leaq	_ZTISt9bad_alloc(%rip), %rdx
	movq	%rax, %rcx
	movq	.refptr._ZTVSt9bad_alloc(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rcx)
	call	__cxa_throw
	nop
	.seh_endproc
	.text
	.p2align 4
	.def	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEExdNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEExdNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEExdNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0:
.LFB11735:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	leaq	-1(%r8), %rax
	movq	%r8, %rdi
	movq	%rdx, %r9
	movq	%rax, %rsi
	andl	$1, %edi
	shrq	$63, %rsi
	addq	%rax, %rsi
	sarq	%rsi
	cmpq	%rsi, %rdx
	jge	.L239
	movq	%rdx, %r10
	jmp	.L243
	.p2align 4
	.p2align 3
.L255:
	vmovsd	%xmm1, (%rcx,%r10,8)
	cmpq	%rdx, %rsi
	jle	.L241
.L242:
	movq	%rdx, %r10
.L243:
	leaq	1(%r10), %rax
	leaq	(%rax,%rax), %rdx
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	-8(%rcx,%rdx,8), %r11
	leaq	-1(%rdx), %rbx
	vmovsd	(%rax), %xmm1
	vmovsd	(%r11), %xmm0
	vcomisd	%xmm1, %xmm0
	jbe	.L255
	vmovsd	%xmm0, (%rcx,%r10,8)
	cmpq	%rbx, %rsi
	jle	.L249
	movq	%rbx, %rdx
	jmp	.L242
	.p2align 4
	.p2align 3
.L249:
	movq	%r11, %rax
	movq	%rbx, %rdx
.L241:
	testq	%rdi, %rdi
	je	.L248
.L244:
	leaq	-1(%rdx), %r10
	movq	%r10, %r8
	shrq	$63, %r8
	addq	%r10, %r8
	sarq	%r8
	cmpq	%r9, %rdx
	jg	.L247
	jmp	.L245
	.p2align 4
	.p2align 3
.L257:
	leaq	-1(%r8), %rdx
	vmovsd	%xmm0, (%rax)
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	movq	%r8, %rdx
	sarq	%rax
	cmpq	%r8, %r9
	jge	.L256
	movq	%rax, %r8
.L247:
	leaq	(%rcx,%r8,8), %r10
	leaq	(%rcx,%rdx,8), %rax
	vmovsd	(%r10), %xmm0
	vcomisd	%xmm0, %xmm3
	ja	.L257
.L245:
	vmovsd	%xmm3, (%rax)
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4
	.p2align 3
.L239:
	leaq	(%rcx,%rdx,8), %rax
	testq	%rdi, %rdi
	jne	.L245
	movq	%r9, %rdx
	.p2align 4
	.p2align 3
.L248:
	leaq	-2(%r8), %r10
	movq	%r10, %r8
	shrq	$63, %r8
	addq	%r10, %r8
	sarq	%r8
	cmpq	%r8, %rdx
	jne	.L244
	leaq	1(%rdx,%rdx), %rdx
	leaq	(%rcx,%rdx,8), %r8
	vmovsd	(%r8), %xmm0
	vmovsd	%xmm0, (%rax)
	movq	%r8, %rax
	jmp	.L244
	.p2align 4
	.p2align 3
.L256:
	movq	%r10, %rax
	vmovsd	%xmm3, (%rax)
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.p2align 4
	.def	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEExNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEExNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEExNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0:
.LFB11724:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rdx, %rax
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	subq	%rcx, %rax
	cmpq	$128, %rax
	jle	.L303
	leaq	8(%rcx), %rbp
	testq	%r8, %r8
	je	.L260
.L262:
	movq	%rdx, %rax
	vmovsd	8(%rdi), %xmm1
	decq	%r8
	vmovsd	-8(%rdx), %xmm3
	subq	%rdi, %rax
	vmovsd	(%rdi), %xmm0
	movq	%rax, %rcx
	shrq	$63, %rax
	sarq	$3, %rcx
	addq	%rcx, %rax
	sarq	%rax
	leaq	(%rdi,%rax,8), %rax
	vmovsd	(%rax), %xmm2
	vcomisd	%xmm1, %xmm2
	jbe	.L298
	vcomisd	%xmm2, %xmm3
	ja	.L302
	vcomisd	%xmm1, %xmm3
	ja	.L304
.L305:
	vunpcklpd	%xmm0, %xmm1, %xmm0
	vmovupd	%xmm0, (%rdi)
	vmovsd	-8(%rdx), %xmm0
.L271:
	movq	%rbp, %rbx
	movq	%rdx, %rax
	.p2align 4
	.p2align 3
.L278:
	vmovsd	(%rbx), %xmm2
	movq	%rbx, %rsi
	vcomisd	%xmm2, %xmm1
	ja	.L279
	subq	$8, %rax
	vcomisd	%xmm1, %xmm0
	jbe	.L280
	.p2align 4
	.p2align 3
.L282:
	vmovsd	-8(%rax), %xmm0
	subq	$8, %rax
	vcomisd	%xmm1, %xmm0
	ja	.L282
.L280:
	cmpq	%rbx, %rax
	jbe	.L306
	vmovsd	%xmm0, (%rbx)
	vmovsd	%xmm2, (%rax)
	vmovsd	-8(%rax), %xmm0
	vmovsd	(%rdi), %xmm1
.L279:
	addq	$8, %rbx
	jmp	.L278
.L298:
	vcomisd	%xmm1, %xmm3
	ja	.L305
	vcomisd	%xmm2, %xmm3
	jbe	.L302
.L304:
	vmovsd	%xmm3, (%rdi)
	vmovsd	%xmm0, -8(%rdx)
	vmovsd	(%rdi), %xmm1
	jmp	.L271
	.p2align 4
	.p2align 3
.L306:
	movq	%rbx, %rcx
	movq	%r8, 112(%rsp)
	call	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEExNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0
	movq	%rbx, %rax
	subq	%rdi, %rax
	movq	112(%rsp), %r8
	cmpq	$128, %rax
	jle	.L303
	testq	%r8, %r8
	je	.L260
	movq	%rbx, %rdx
	jmp	.L262
.L302:
	vmovsd	%xmm2, (%rdi)
	vmovsd	%xmm0, (%rax)
	vmovsd	(%rdi), %xmm1
	vmovsd	-8(%rdx), %xmm0
	jmp	.L271
.L260:
	sarq	$3, %rax
	leaq	-2(%rax), %rbx
	movq	%rax, %r8
	sarq	%rbx
	jmp	.L264
.L307:
	movq	40(%rsp), %r8
	decq	%rbx
.L264:
	vmovsd	(%rdi,%rbx,8), %xmm3
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	movq	%r8, 40(%rsp)
	call	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEExdNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0
	testq	%rbx, %rbx
	jne	.L307
	subq	$8, %rsi
	.p2align 4
	.p2align 3
.L265:
	vmovsd	(%rdi), %xmm0
	vmovsd	(%rsi), %xmm3
	movq	%rsi, %rbx
	xorl	%edx, %edx
	subq	%rdi, %rbx
	movq	%rdi, %rcx
	subq	$8, %rsi
	movq	%rbx, %r8
	sarq	$3, %r8
	vmovsd	%xmm0, 8(%rsi)
	call	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEExdNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0
	cmpq	$8, %rbx
	jg	.L265
.L303:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "basic_string::_M_construct null not valid\0"
	.text
	.align 2
	.p2align 4
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.constprop.5;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.constprop.5
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.constprop.5:
.LFB11737:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	leaq	16(%rcx), %r13
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%r13, (%rcx)
	testq	%rdx, %rdx
	je	.L309
	movq	%rdx, %rcx
	call	strlen
	movq	%rax, %rsi
	movq	%rax, 40(%rsp)
	cmpq	$15, %rax
	ja	.L319
	cmpq	$1, %rax
	jne	.L313
	movzbl	(%r12), %edx
	movb	%dl, 16(%rbx)
.L314:
	movq	%rax, 8(%rbx)
	movb	$0, 0(%r13,%rax)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%r12
	popq	%r13
	ret
	.p2align 4
	.p2align 3
.L313:
	testq	%rax, %rax
	je	.L314
	jmp	.L312
	.p2align 4
	.p2align 3
.L319:
	leaq	40(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%rbx, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
	movq	%rax, %r13
	movq	%rax, (%rbx)
	movq	40(%rsp), %rax
	movq	%rax, 16(%rbx)
.L312:
	movq	%r13, %rcx
	movq	%rsi, %r8
	movq	%r12, %rdx
	call	memcpy
	movq	40(%rsp), %rax
	movq	(%rbx), %r13
	jmp	.L314
.L309:
	leaq	.LC4(%rip), %rcx
	call	_ZSt19__throw_logic_errorPKc
	nop
	.seh_endproc
	.section	.text$_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev
	.def	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev
_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev:
.LFB10722:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	__imp__errno(%rip), %rsi
	movq	%rcx, %rbx
	call	*%rsi
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L323
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4
	.p2align 3
.L323:
	movl	(%rbx), %ebx
	call	*%rsi
	movl	%ebx, (%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA10722:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10722-.LLSDACSB10722
.LLSDACSB10722:
.LLSDACSE10722:
	.section	.text$_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC5:
	.ascii "vector::_M_realloc_insert\0"
	.section	.text$_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_
	.def	_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_
_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_:
.LFB11421:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	vmovaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	vmovaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	movq	8(%rcx), %rbp
	movq	(%rcx), %r13
	movabsq	$1152921504606846975, %rbx
	movq	%rbp, %rax
	movq	%rcx, %rdi
	movq	%rdx, %r12
	movq	%r8, %r15
	subq	%r13, %rax
	sarq	$3, %rax
	cmpq	%rbx, %rax
	je	.L343
	testq	%rax, %rax
	movl	$1, %edx
	movq	%r12, %r14
	cmovne	%rax, %rdx
	addq	%rdx, %rax
	setc	%dl
	subq	%r13, %r14
	movzbl	%dl, %edx
	testq	%rdx, %rdx
	jne	.L337
	testq	%rax, %rax
	jne	.L329
	xorl	%ebx, %ebx
	xorl	%esi, %esi
.L335:
	vmovsd	(%r15), %xmm0
	subq	%r12, %rbp
	leaq	8(%rsi,%r14), %r15
	vmovq	16(%rdi), %xmm7
	leaq	(%r15,%rbp), %rax
	vmovq	%rax, %xmm6
	vmovsd	%xmm0, (%rsi,%r14)
	testq	%r14, %r14
	jg	.L344
	testq	%rbp, %rbp
	jg	.L333
	testq	%r13, %r13
	jne	.L345
.L334:
	vmovq	%rsi, %xmm1
	vmovaps	48(%rsp), %xmm7
	movq	%rbx, 16(%rdi)
	vpunpcklqdq	%xmm6, %xmm1, %xmm0
	vmovaps	32(%rsp), %xmm6
	vmovdqu	%xmm0, (%rdi)
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4
	.p2align 3
.L329:
	cmpq	%rbx, %rax
	cmovbe	%rax, %rbx
	salq	$3, %rbx
.L328:
	movq	%rbx, %rcx
	call	_Znwy
	movq	%rax, %rsi
	addq	%rax, %rbx
	jmp	.L335
	.p2align 4
	.p2align 3
.L333:
	movq	%rbp, %r8
	movq	%r12, %rdx
	movq	%r15, %rcx
	call	memcpy
	testq	%r13, %r13
	je	.L334
.L345:
	vmovq	%xmm7, %rdx
	subq	%r13, %rdx
	jmp	.L336
	.p2align 4
	.p2align 3
.L344:
	movq	%r13, %rdx
	movq	%r14, %r8
	movq	%rsi, %rcx
	call	memmove
	vmovq	%xmm7, %rdx
	subq	%r13, %rdx
	testq	%rbp, %rbp
	jg	.L333
.L336:
	movq	%r13, %rcx
	call	_ZdlPvy
	jmp	.L334
	.p2align 4
	.p2align 3
.L337:
	movabsq	$9223372036854775800, %rbx
	jmp	.L328
.L343:
	leaq	.LC5(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	nop
	.seh_endproc
	.section .rdata,"dr"
.LC6:
	.ascii "vector::reserve\0"
	.text
	.p2align 4
	.def	_ZL11time_kernelRK6MatrixPFvRS_EiPS_.constprop.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL11time_kernelRK6MatrixPFvRS_EiPS_.constprop.0
_ZL11time_kernelRK6MatrixPFvRS_EiPS_.constprop.0:
.LFB11736:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$216, %rsp
	.seh_stackalloc	216
	vmovaps	%xmm6, 112(%rsp)
	.seh_savexmm	%xmm6, 112
	vmovaps	%xmm7, 128(%rsp)
	.seh_savexmm	%xmm7, 128
	vmovaps	%xmm8, 144(%rsp)
	.seh_savexmm	%xmm8, 144
	vmovaps	%xmm9, 160(%rsp)
	.seh_savexmm	%xmm9, 160
	vmovaps	%xmm10, 176(%rsp)
	.seh_savexmm	%xmm10, 176
	vmovaps	%xmm11, 192(%rsp)
	.seh_savexmm	%xmm11, 192
	.seh_endprologue
	vpxor	%xmm0, %xmm0, %xmm0
	movabsq	$1152921504606846975, %rax
	movslq	%r8d, %rdi
	movq	%rcx, %r13
	movq	%rdx, %r14
	vmovq	%r9, %xmm10
	movq	%rdi, %rsi
	vmovdqa	%xmm0, 80(%rsp)
	movq	$0, 96(%rsp)
	cmpq	%rax, %rdi
	ja	.L461
	testq	%rdi, %rdi
	jne	.L348
.L353:
	xorl	%r12d, %r12d
	vpxor	%xmm9, %xmm9, %xmm9
	vpxor	%xmm8, %xmm8, %xmm8
.L349:
	vmovq	%xmm10, %rax
	movq	8(%rax), %rcx
	testq	%rcx, %rcx
	je	.L365
	call	*__imp__aligned_free(%rip)
.L365:
	vmovq	%xmm10, %rax
	vpunpckldq	%xmm9, %xmm8, %xmm9
	movq	80(%rsp), %rdx
	vmovq	%xmm9, (%rax)
	movq	%r12, 8(%rax)
	movq	88(%rsp), %rax
	movq	%rax, %rbp
	subq	%rdx, %rbp
	movq	%rbp, %r13
	je	.L366
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rbp
	ja	.L462
	movq	%rbp, %rcx
.LEHB2:
	call	_Znwy
.LEHE2:
	movq	%rax, %r12
	movq	88(%rsp), %rax
	movq	80(%rsp), %rdx
	movq	%rax, %rbp
	subq	%rdx, %rbp
	movq	%rbp, %r8
	cmpq	%rdx, %rax
	je	.L372
.L406:
	movq	%r12, %rcx
	movq	%r8, 40(%rsp)
	call	memmove
	movq	40(%rsp), %r8
.L372:
	leaq	(%r12,%r8), %rdi
	vxorpd	%xmm6, %xmm6, %xmm6
	cmpq	%r12, %rdi
	je	.L398
	movq	%rbp, %rbx
	movl	$63, %r8d
	movq	%rdi, %rdx
	movq	%r12, %rcx
	sarq	$3, %rbx
	leaq	8(%r12), %rsi
	lzcntq	%rbx, %rax
	subl	%eax, %r8d
	movslq	%r8d, %r8
	addq	%r8, %r8
	call	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEExNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0
	cmpq	$128, %rbp
	jle	.L374
	leaq	128(%r12), %rbp
	movl	$8, %r14d
	jmp	.L382
	.p2align 4
	.p2align 3
.L464:
	cmpq	%r12, %rsi
	je	.L377
	movq	%rsi, %r8
	leaq	(%r12,%r14), %rcx
	movq	%r12, %rdx
	subq	%r12, %r8
	call	memmove
.L377:
	addq	$8, %rsi
	vmovsd	%xmm6, (%r12)
	cmpq	%rsi, %rbp
	je	.L463
.L382:
	vmovsd	(%rsi), %xmm6
	vmovsd	(%r12), %xmm0
	movq	%rsi, %rdx
	vcomisd	%xmm6, %xmm0
	ja	.L464
	vmovsd	-8(%rsi), %xmm0
	leaq	-8(%rsi), %rax
	vcomisd	%xmm6, %xmm0
	jbe	.L379
	.p2align 4
	.p2align 3
.L381:
	vmovsd	%xmm0, 8(%rax)
	movq	%rax, %rdx
	vmovsd	-8(%rax), %xmm0
	subq	$8, %rax
	vcomisd	%xmm6, %xmm0
	ja	.L381
.L379:
	addq	$8, %rsi
	vmovsd	%xmm6, (%rdx)
	cmpq	%rsi, %rbp
	jne	.L382
.L463:
	cmpq	%rbp, %rdi
	je	.L384
	.p2align 4
	.p2align 3
.L383:
	vmovsd	0(%rbp), %xmm1
	vmovsd	-8(%rbp), %xmm0
	leaq	-8(%rbp), %rax
	vcomisd	%xmm1, %xmm0
	jbe	.L455
	.p2align 4
	.p2align 3
.L387:
	vmovsd	%xmm0, 8(%rax)
	movq	%rax, %rdx
	vmovsd	-8(%rax), %xmm0
	subq	$8, %rax
	vcomisd	%xmm1, %xmm0
	ja	.L387
	addq	$8, %rbp
	vmovsd	%xmm1, (%rdx)
	cmpq	%rbp, %rdi
	jne	.L383
.L384:
	shrq	%rbx
	vmovsd	(%r12,%rbx,8), %xmm6
.L398:
	movq	%r13, %rdx
	movq	%r12, %rcx
	call	_ZdlPvy
.L405:
	movq	80(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L346
	movq	96(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L346:
	vmovsd	%xmm6, %xmm6, %xmm0
	vmovaps	128(%rsp), %xmm7
	vmovaps	112(%rsp), %xmm6
	vmovaps	144(%rsp), %xmm8
	vmovaps	160(%rsp), %xmm9
	vmovaps	176(%rsp), %xmm10
	vmovaps	192(%rsp), %xmm11
	addq	$216, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L374:
	movl	$8, %ebp
	cmpq	%rsi, %rdi
	jne	.L389
	jmp	.L384
	.p2align 4
	.p2align 3
.L465:
	cmpq	%r12, %rsi
	je	.L392
	movq	%rsi, %r8
	leaq	(%r12,%rbp), %rcx
	movq	%r12, %rdx
	subq	%r12, %r8
	call	memmove
.L392:
	vmovsd	%xmm6, (%r12)
.L393:
	addq	$8, %rsi
	cmpq	%rsi, %rdi
	je	.L384
.L389:
	vmovsd	(%rsi), %xmm6
	vmovsd	(%r12), %xmm0
	vcomisd	%xmm6, %xmm0
	ja	.L465
	vmovsd	-8(%rsi), %xmm0
	leaq	-8(%rsi), %rax
	vcomisd	%xmm6, %xmm0
	jbe	.L457
	.p2align 4
	.p2align 3
.L396:
	vmovsd	%xmm0, 8(%rax)
	movq	%rax, %rdx
	vmovsd	-8(%rax), %xmm0
	subq	$8, %rax
	vcomisd	%xmm6, %xmm0
	ja	.L396
.L394:
	vmovsd	%xmm6, (%rdx)
	jmp	.L393
.L366:
	cmpq	%rdx, %rax
	je	.L466
	xorl	%r8d, %r8d
	xorl	%r12d, %r12d
	jmp	.L406
.L455:
	movq	%rbp, %rdx
	addq	$8, %rbp
	vmovsd	%xmm1, (%rdx)
	cmpq	%rbp, %rdi
	jne	.L383
	jmp	.L384
.L348:
	salq	$3, %rdi
	movq	%rdi, %rcx
.LEHB3:
	call	_Znwy
.LEHE3:
	movq	80(%rsp), %r12
	movq	88(%rsp), %r8
	movq	%rax, %rbx
	movq	96(%rsp), %rbp
	subq	%r12, %r8
	testq	%r8, %r8
	jg	.L467
	testq	%r12, %r12
	jne	.L351
.L352:
	vpbroadcastq	%rbx, %xmm0
	addq	%rdi, %rbx
	vmovdqa	%xmm0, 80(%rsp)
	movq	%rbx, 96(%rsp)
	testl	%esi, %esi
	jle	.L353
	vxorps	%xmm7, %xmm7, %xmm7
	xorl	%r12d, %r12d
	vpxor	%xmm9, %xmm9, %xmm9
	xorl	%ebx, %ebx
	movq	__imp__aligned_free(%rip), %rbp
	vmovsd	.LC7(%rip), %xmm6
	vpxor	%xmm8, %xmm8, %xmm8
	movq	__imp__aligned_malloc(%rip), %rdi
	vmovq	%rbp, %xmm11
	jmp	.L364
	.p2align 4
	.p2align 3
.L470:
	vmovsd	%xmm0, (%rdx)
	leal	-1(%rsi), %eax
	addq	$8, %rdx
	movq	%rdx, 88(%rsp)
	cmpl	%ebx, %eax
	je	.L468
.L361:
	movq	72(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L363
	call	*%rbp
.L363:
	incl	%ebx
	cmpl	%ebx, %esi
	je	.L349
.L364:
	movl	0(%r13), %eax
	movq	$0, 72(%rsp)
	movl	%eax, %ecx
	leal	6(%rax), %edx
	vmovd	%eax, %xmm2
	addl	$3, %ecx
	cmovns	%ecx, %edx
	movslq	%eax, %rcx
	andl	$-4, %edx
	vpinsrd	$1, %edx, %xmm2, %xmm0
	movslq	%edx, %rdx
	imulq	%rdx, %rcx
	vmovq	%xmm0, 64(%rsp)
	movl	$32, %edx
	salq	$3, %rcx
.LEHB4:
	call	*%rdi
.LEHE4:
	movq	%rax, %rcx
	movq	%rax, 72(%rsp)
	testq	%rax, %rax
	je	.L469
	movslq	64(%rsp), %r8
	movslq	68(%rsp), %rax
	imulq	%rax, %r8
	salq	$3, %r8
	je	.L358
	xorl	%edx, %edx
	call	memset
	movq	%rax, %rcx
.L358:
	movslq	0(%r13), %r8
	movslq	4(%r13), %rax
	imulq	%rax, %r8
	salq	$3, %r8
	je	.L357
	movq	8(%r13), %rdx
	call	memmove
.L357:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	leaq	64(%rsp), %rcx
	movq	%rax, %r15
.LEHB5:
	call	*%r14
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	88(%rsp), %rdx
	subq	%r15, %rax
	vcvtsi2sdq	%rax, %xmm7, %xmm0
	vdivsd	%xmm6, %xmm0, %xmm0
	vmovsd	%xmm0, 56(%rsp)
	cmpq	96(%rsp), %rdx
	jne	.L470
	leaq	80(%rsp), %rcx
	leaq	56(%rsp), %r8
	call	_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_
.LEHE5:
	leal	-1(%rsi), %eax
	cmpl	%ebx, %eax
	jne	.L361
	.p2align 4
	.p2align 3
.L468:
	testq	%r12, %r12
	je	.L362
	movq	%r12, %rcx
	vmovq	%xmm11, %rax
	call	*%rax
.L362:
	vmovd	64(%rsp), %xmm8
	vmovd	68(%rsp), %xmm9
	movq	72(%rsp), %r12
	jmp	.L363
.L466:
	vxorpd	%xmm6, %xmm6, %xmm6
	jmp	.L405
.L467:
	movq	%r12, %rdx
	movq	%rax, %rcx
	call	memmove
.L351:
	movq	%rbp, %rdx
	movq	%r12, %rcx
	subq	%r12, %rdx
	call	_ZdlPvy
	jmp	.L352
.L457:
	movq	%rsi, %rdx
	jmp	.L394
.L462:
.LEHB6:
	call	_ZSt17__throw_bad_allocv
.LEHE6:
.L461:
	leaq	.LC6(%rip), %rcx
.LEHB7:
	call	_ZSt20__throw_length_errorPKc
.LEHE7:
.L413:
	movq	72(%rsp), %rcx
	movq	%rax, %rbx
	testq	%rcx, %rcx
	je	.L459
	vzeroupper
	call	*__imp__aligned_free(%rip)
.L402:
	testq	%r12, %r12
	je	.L369
	movq	%r12, %rcx
	call	*__imp__aligned_free(%rip)
.L369:
	movq	%rbx, %r12
.L403:
	movq	80(%rsp), %rcx
	movq	96(%rsp), %rdx
	subq	%rcx, %rdx
	testq	%rcx, %rcx
	je	.L404
	call	_ZdlPvy
.L404:
	movq	%r12, %rcx
.LEHB8:
	call	_Unwind_Resume
.LEHE8:
.L469:
.LEHB9:
	call	_ZN6MatrixC1Ei.part.0
.LEHE9:
.L459:
	vzeroupper
	jmp	.L402
.L412:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L402
.L415:
.L460:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L369
.L411:
	movq	%rax, %r12
	vzeroupper
	jmp	.L403
.L414:
	jmp	.L460
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA11736:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11736-.LLSDACSB11736
.LLSDACSB11736:
	.uleb128 .LEHB2-.LFB11736
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L415-.LFB11736
	.uleb128 0
	.uleb128 .LEHB3-.LFB11736
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L411-.LFB11736
	.uleb128 0
	.uleb128 .LEHB4-.LFB11736
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L412-.LFB11736
	.uleb128 0
	.uleb128 .LEHB5-.LFB11736
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L413-.LFB11736
	.uleb128 0
	.uleb128 .LEHB6-.LFB11736
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L414-.LFB11736
	.uleb128 0
	.uleb128 .LEHB7-.LFB11736
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L411-.LFB11736
	.uleb128 0
	.uleb128 .LEHB8-.LFB11736
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB11736
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L412-.LFB11736
	.uleb128 0
.LLSDACSE11736:
	.text
	.seh_endproc
	.section	.text$_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
	.def	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_:
.LFB11446:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	vmovaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	vmovaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	movq	8(%rcx), %rbp
	movq	(%rcx), %r13
	movabsq	$2305843009213693951, %rbx
	movq	%rbp, %rax
	movq	%rcx, %rdi
	movq	%rdx, %r12
	movq	%r8, %r15
	subq	%r13, %rax
	sarq	$2, %rax
	cmpq	%rbx, %rax
	je	.L490
	testq	%rax, %rax
	movl	$1, %edx
	movq	%r12, %r14
	cmovne	%rax, %rdx
	addq	%rdx, %rax
	setc	%dl
	subq	%r13, %r14
	movzbl	%dl, %edx
	testq	%rdx, %rdx
	jne	.L484
	testq	%rax, %rax
	jne	.L476
	xorl	%ebx, %ebx
	xorl	%esi, %esi
.L482:
	movl	(%r15), %eax
	subq	%r12, %rbp
	leaq	4(%rsi,%r14), %r15
	vmovq	16(%rdi), %xmm7
	movl	%eax, (%rsi,%r14)
	leaq	(%r15,%rbp), %rax
	vmovq	%rax, %xmm6
	testq	%r14, %r14
	jg	.L491
	testq	%rbp, %rbp
	jg	.L480
	testq	%r13, %r13
	jne	.L492
.L481:
	vmovq	%rsi, %xmm1
	vmovaps	48(%rsp), %xmm7
	movq	%rbx, 16(%rdi)
	vpunpcklqdq	%xmm6, %xmm1, %xmm0
	vmovaps	32(%rsp), %xmm6
	vmovdqu	%xmm0, (%rdi)
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4
	.p2align 3
.L476:
	cmpq	%rbx, %rax
	cmovbe	%rax, %rbx
	salq	$2, %rbx
.L475:
	movq	%rbx, %rcx
	call	_Znwy
	movq	%rax, %rsi
	addq	%rax, %rbx
	jmp	.L482
	.p2align 4
	.p2align 3
.L480:
	movq	%rbp, %r8
	movq	%r12, %rdx
	movq	%r15, %rcx
	call	memcpy
	testq	%r13, %r13
	je	.L481
.L492:
	vmovq	%xmm7, %rdx
	subq	%r13, %rdx
	jmp	.L483
	.p2align 4
	.p2align 3
.L491:
	movq	%r13, %rdx
	movq	%r14, %r8
	movq	%rsi, %rcx
	call	memmove
	vmovq	%xmm7, %rdx
	subq	%r13, %rdx
	testq	%rbp, %rbp
	jg	.L480
.L483:
	movq	%r13, %rcx
	call	_ZdlPvy
	jmp	.L481
	.p2align 4
	.p2align 3
.L484:
	movabsq	$9223372036854775804, %rbx
	jmp	.L475
.L490:
	leaq	.LC5(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	nop
	.seh_endproc
	.section	.text$_ZNSt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EE11_M_gen_randEv,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EE11_M_gen_randEv
	.def	_ZNSt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EE11_M_gen_randEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EE11_M_gen_randEv
_ZNSt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EE11_M_gen_randEv:
.LFB11653:
	.seh_endprologue
	vmovdqa32	.LC9(%rip), %zmm5
	vmovdqa32	.LC8(%rip), %zmm16
	vpandd	4(%rcx), %zmm5, %zmm1
	vpandd	(%rcx), %zmm16, %zmm0
	vmovdqa32	.LC10(%rip), %zmm4
	vmovdqa32	.LC11(%rip), %zmm3
	vpord	%zmm1, %zmm0, %zmm0
	vpsrld	$1, %zmm0, %zmm2
	vpxord	1588(%rcx), %zmm2, %zmm2
	vpandd	%zmm4, %zmm0, %zmm1
	vpxor	%xmm0, %xmm0, %xmm0
	vpcmpd	$0, %zmm0, %zmm1, %k1
	vpxord	%zmm3, %zmm2, %zmm17
	vmovdqa32	%zmm17, %zmm1
	vmovdqa32	%zmm2, %zmm1{%k1}
	vpandd	68(%rcx), %zmm5, %zmm2
	vmovdqu32	%zmm1, (%rcx)
	vpandd	64(%rcx), %zmm16, %zmm1
	vpord	%zmm2, %zmm1, %zmm1
	vpsrld	$1, %zmm1, %zmm2
	vpxord	1652(%rcx), %zmm2, %zmm2
	vpandd	%zmm4, %zmm1, %zmm1
	vpcmpd	$0, %zmm0, %zmm1, %k1
	vpxord	%zmm3, %zmm2, %zmm17
	vmovdqa32	%zmm17, %zmm1
	vmovdqa32	%zmm2, %zmm1{%k1}
	vpandd	132(%rcx), %zmm5, %zmm2
	vmovdqu32	%zmm1, 64(%rcx)
	vpandd	128(%rcx), %zmm16, %zmm1
	vpord	%zmm2, %zmm1, %zmm1
	vpsrld	$1, %zmm1, %zmm2
	vpxord	1716(%rcx), %zmm2, %zmm2
	vpandd	%zmm4, %zmm1, %zmm1
	vpcmpd	$0, %zmm0, %zmm1, %k1
	vpxord	%zmm3, %zmm2, %zmm17
	vmovdqa32	%zmm17, %zmm1
	vmovdqa32	%zmm2, %zmm1{%k1}
	vpandd	196(%rcx), %zmm5, %zmm2
	vmovdqu32	%zmm1, 128(%rcx)
	vpandd	192(%rcx), %zmm16, %zmm1
	vpord	%zmm2, %zmm1, %zmm1
	vpsrld	$1, %zmm1, %zmm2
	vpxord	1780(%rcx), %zmm2, %zmm2
	vpandd	%zmm4, %zmm1, %zmm1
	vpcmpd	$0, %zmm0, %zmm1, %k1
	vpxord	%zmm3, %zmm2, %zmm17
	vmovdqa32	%zmm17, %zmm1
	vmovdqa32	%zmm2, %zmm1{%k1}
	vpandd	260(%rcx), %zmm5, %zmm2
	vmovdqu32	%zmm1, 192(%rcx)
	vpandd	256(%rcx), %zmm16, %zmm1
	vpord	%zmm2, %zmm1, %zmm1
	vpsrld	$1, %zmm1, %zmm2
	vpxord	1844(%rcx), %zmm2, %zmm2
	vpandd	%zmm4, %zmm1, %zmm1
	vpcmpd	$0, %zmm0, %zmm1, %k1
	vpxord	%zmm3, %zmm2, %zmm17
	vmovdqa32	%zmm17, %zmm1
	vmovdqa32	%zmm2, %zmm1{%k1}
	vpandd	324(%rcx), %zmm5, %zmm2
	vmovdqu32	%zmm1, 256(%rcx)
	vpandd	320(%rcx), %zmm16, %zmm1
	vpord	%zmm2, %zmm1, %zmm1
	vpsrld	$1, %zmm1, %zmm2
	vpxord	1908(%rcx), %zmm2, %zmm2
	vpandd	%zmm4, %zmm1, %zmm1
	vpcmpd	$0, %zmm0, %zmm1, %k1
	vpxord	%zmm3, %zmm2, %zmm17
	vmovdqa32	%zmm17, %zmm1
	vmovdqa32	%zmm2, %zmm1{%k1}
	vpandd	388(%rcx), %zmm5, %zmm2
	vmovdqu32	%zmm1, 320(%rcx)
	vpandd	384(%rcx), %zmm16, %zmm1
	vpord	%zmm2, %zmm1, %zmm1
	vpsrld	$1, %zmm1, %zmm2
	vpxord	1972(%rcx), %zmm2, %zmm2
	vpandd	%zmm4, %zmm1, %zmm1
	vpcmpd	$0, %zmm0, %zmm1, %k1
	vpxord	%zmm3, %zmm2, %zmm17
	vmovdqa32	%zmm17, %zmm1
	vmovdqa32	%zmm2, %zmm1{%k1}
	vmovdqu32	%zmm1, 384(%rcx)
	vpandd	448(%rcx), %zmm16, %zmm1
	vpandd	452(%rcx), %zmm5, %zmm2
	movl	900(%rcx), %r9d
	movl	896(%rcx), %edx
	movl	%r9d, %eax
	andl	$2147483647, %eax
	andl	$-2147483648, %edx
	orl	%eax, %edx
	vpord	%zmm2, %zmm1, %zmm1
	movl	%edx, %eax
	vpsrld	$1, %zmm1, %zmm2
	vpxord	2036(%rcx), %zmm2, %zmm2
	vpandd	%zmm4, %zmm1, %zmm1
	shrl	%eax
	vpcmpd	$0, %zmm0, %zmm1, %k1
	xorl	2484(%rcx), %eax
	movl	%eax, %r8d
	xorl	$-1727483681, %r8d
	andl	$1, %edx
	vpxord	%zmm3, %zmm2, %zmm17
	cmovne	%r8d, %eax
	andl	$-2147483648, %r9d
	vmovdqa32	%zmm17, %zmm1
	vmovdqa32	%zmm2, %zmm1{%k1}
	vpandd	516(%rcx), %zmm5, %zmm2
	vmovdqu32	%zmm1, 448(%rcx)
	vpandd	512(%rcx), %zmm16, %zmm1
	vpord	%zmm2, %zmm1, %zmm1
	vpsrld	$1, %zmm1, %zmm2
	vpxord	2100(%rcx), %zmm2, %zmm2
	vpandd	%zmm4, %zmm1, %zmm1
	vpcmpd	$0, %zmm0, %zmm1, %k1
	vpxord	%zmm3, %zmm2, %zmm17
	vmovdqa32	%zmm17, %zmm1
	vmovdqa32	%zmm2, %zmm1{%k1}
	vpandd	580(%rcx), %zmm5, %zmm2
	vmovdqu32	%zmm1, 512(%rcx)
	vpandd	576(%rcx), %zmm16, %zmm1
	vpord	%zmm2, %zmm1, %zmm1
	vpsrld	$1, %zmm1, %zmm2
	vpxord	2164(%rcx), %zmm2, %zmm2
	vpandd	%zmm4, %zmm1, %zmm1
	vpcmpd	$0, %zmm0, %zmm1, %k1
	vpxord	%zmm3, %zmm2, %zmm17
	vmovdqa32	%zmm17, %zmm1
	vmovdqa32	%zmm2, %zmm1{%k1}
	vpandd	644(%rcx), %zmm5, %zmm2
	vmovdqu32	%zmm1, 576(%rcx)
	vpandd	640(%rcx), %zmm16, %zmm1
	vpord	%zmm2, %zmm1, %zmm1
	vpsrld	$1, %zmm1, %zmm2
	vpxord	2228(%rcx), %zmm2, %zmm2
	vpandd	%zmm4, %zmm1, %zmm1
	vpcmpd	$0, %zmm0, %zmm1, %k1
	vpxord	%zmm3, %zmm2, %zmm17
	vmovdqa32	%zmm17, %zmm1
	vmovdqa32	%zmm2, %zmm1{%k1}
	vpandd	708(%rcx), %zmm5, %zmm2
	vmovdqu32	%zmm1, 640(%rcx)
	vpandd	704(%rcx), %zmm16, %zmm1
	vpord	%zmm2, %zmm1, %zmm1
	vpsrld	$1, %zmm1, %zmm2
	vpxord	2292(%rcx), %zmm2, %zmm2
	vpandd	%zmm4, %zmm1, %zmm1
	vpcmpd	$0, %zmm0, %zmm1, %k1
	vpxord	%zmm3, %zmm2, %zmm17
	vmovdqa32	%zmm17, %zmm1
	vmovdqa32	%zmm2, %zmm1{%k1}
	vpandd	772(%rcx), %zmm5, %zmm2
	vmovdqu32	%zmm1, 704(%rcx)
	vpandd	768(%rcx), %zmm16, %zmm1
	vpord	%zmm2, %zmm1, %zmm1
	vpsrld	$1, %zmm1, %zmm2
	vpxord	2356(%rcx), %zmm2, %zmm2
	vpandd	%zmm4, %zmm1, %zmm1
	vpcmpd	$0, %zmm0, %zmm1, %k1
	vpxord	%zmm3, %zmm2, %zmm17
	vmovdqa32	%zmm17, %zmm1
	vmovdqa32	%zmm2, %zmm1{%k1}
	vpandd	836(%rcx), %zmm5, %zmm2
	movl	%eax, 896(%rcx)
	vmovdqu32	%zmm1, 768(%rcx)
	vpandd	832(%rcx), %zmm16, %zmm1
	vpord	%zmm2, %zmm1, %zmm1
	vpsrld	$1, %zmm1, %zmm2
	vpxord	2420(%rcx), %zmm2, %zmm2
	vpandd	%zmm4, %zmm1, %zmm1
	vpcmpd	$0, %zmm0, %zmm1, %k1
	vpxord	%zmm3, %zmm2, %zmm17
	vmovdqa32	%zmm17, %zmm0
	vpxord	%xmm17, %xmm17, %xmm17
	vmovdqa32	%zmm2, %zmm0{%k1}
	vmovdqu32	%zmm0, 832(%rcx)
	movl	904(%rcx), %r8d
	movl	%r8d, %edx
	andl	$2147483647, %edx
	orl	%r9d, %edx
	movl	%edx, %eax
	shrl	%eax
	xorl	2488(%rcx), %eax
	movl	%eax, %r9d
	xorl	$-1727483681, %r9d
	andl	$1, %edx
	movl	908(%rcx), %edx
	cmovne	%r9d, %eax
	andl	$-2147483648, %r8d
	movl	%eax, 900(%rcx)
	andl	$2147483647, %edx
	orl	%r8d, %edx
	movl	%edx, %eax
	shrl	%eax
	xorl	2492(%rcx), %eax
	movl	%eax, %r8d
	xorl	$-1727483681, %r8d
	andl	$1, %edx
	leaq	2444(%rcx), %rdx
	cmovne	%r8d, %eax
	movl	%eax, 904(%rcx)
	leaq	908(%rcx), %rax
	.p2align 4
	.p2align 3
.L497:
	vpandd	4(%rax), %zmm5, %zmm1
	addq	$64, %rax
	vpandd	-64(%rax), %zmm16, %zmm0
	vpord	%zmm1, %zmm0, %zmm0
	vpsrld	$1, %zmm0, %zmm1
	vpxord	-972(%rax), %zmm1, %zmm1
	vpandd	%zmm4, %zmm0, %zmm0
	vpcmpd	$0, %zmm17, %zmm0, %k1
	vpxord	%zmm3, %zmm1, %zmm2
	vmovdqa32	%zmm2, %zmm0
	vmovdqa32	%zmm1, %zmm0{%k1}
	vmovdqu32	%zmm0, -64(%rax)
	cmpq	%rax, %rdx
	jne	.L497
	movl	2480(%rcx), %eax
	vpxor	%xmm3, %xmm3, %xmm3
	movq	$0, 2496(%rcx)
	movl	2476(%rcx), %r8d
	vmovdqa	.LC13(%rip), %ymm1
	vmovdqa	.LC12(%rip), %ymm0
	vpand	2448(%rcx), %ymm1, %ymm1
	vpand	2444(%rcx), %ymm0, %ymm0
	movl	%eax, %edx
	andl	$2147483647, %edx
	andl	$-2147483648, %r8d
	orl	%edx, %r8d
	movl	%r8d, %edx
	shrl	%edx
	xorl	1568(%rcx), %edx
	vpor	%ymm1, %ymm0, %ymm0
	vpsrld	$1, %ymm0, %ymm1
	vpand	.LC14(%rip), %ymm0, %ymm0
	vpxor	1536(%rcx), %ymm1, %ymm1
	movl	%edx, %r9d
	vpxor	.LC15(%rip), %ymm1, %ymm2
	xorl	$-1727483681, %r9d
	andl	$1, %r8d
	cmovne	%r9d, %edx
	movl	2484(%rcx), %r9d
	andl	$-2147483648, %eax
	movl	%edx, 2476(%rcx)
	movl	%r9d, %edx
	andl	$2147483647, %edx
	vpcmpd	$0, %ymm3, %ymm0, %k1
	orl	%edx, %eax
	vmovdqa32	%ymm1, %ymm2{%k1}
	movl	%eax, %edx
	vmovdqu	%ymm2, 2444(%rcx)
	shrl	%edx
	xorl	1572(%rcx), %edx
	movl	%edx, %r8d
	xorl	$-1727483681, %r8d
	testb	$1, %al
	movl	2488(%rcx), %eax
	cmovne	%r8d, %edx
	andl	$-2147483648, %r9d
	movl	%edx, 2480(%rcx)
	movl	%eax, %r8d
	andl	$2147483647, %r8d
	orl	%r9d, %r8d
	movl	%r8d, %edx
	shrl	%edx
	xorl	1576(%rcx), %edx
	movl	%edx, %r9d
	xorl	$-1727483681, %r9d
	andl	$1, %r8d
	cmovne	%r9d, %edx
	movl	2492(%rcx), %r9d
	andl	$-2147483648, %eax
	movl	%edx, 2484(%rcx)
	movl	%r9d, %edx
	andl	$2147483647, %edx
	orl	%edx, %eax
	movl	%eax, %r8d
	shrl	%r8d
	xorl	1580(%rcx), %r8d
	movl	%r8d, %edx
	xorl	$-1727483681, %edx
	testb	$1, %al
	cmovne	%edx, %r8d
	movl	(%rcx), %edx
	andl	$-2147483648, %r9d
	movl	%r8d, 2488(%rcx)
	andl	$2147483647, %edx
	orl	%r9d, %edx
	movl	%edx, %eax
	shrl	%eax
	xorl	1584(%rcx), %eax
	movl	%eax, %r8d
	xorl	$-1727483681, %r8d
	andl	$1, %edx
	cmovne	%r8d, %eax
	movl	%eax, 2492(%rcx)
	vzeroupper
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC19:
	.ascii "results.csv\0"
.LC20:
	.ascii "--sizes\0"
.LC21:
	.ascii "--reps\0"
.LC22:
	.ascii "stoi\0"
.LC23:
	.ascii "--csv\0"
.LC24:
	.ascii "--seed\0"
.LC25:
	.ascii "Usage: \0"
.LC26:
	.ascii "stoul\0"
	.align 8
.LC27:
	.ascii " [--sizes 128,256,512] [--reps 3] [--csv results.csv] [--seed 20260505]\12\0"
	.align 8
.LC28:
	.ascii "n,version,time_ms,speedup,max_abs_diff\12\0"
.LC29:
	.ascii "SIMD support: \0"
.LC30:
	.ascii "AVX2 \0"
.LC31:
	.ascii "FMA \0"
.LC32:
	.ascii "SSE2 \0"
.LC33:
	.ascii "\12\0"
.LC34:
	.ascii "\12CSV saved to \0"
.LC41:
	.ascii "\12N = \0"
.LC42:
	.ascii "version\0"
.LC43:
	.ascii "time(ms)\0"
.LC44:
	.ascii "speedup\0"
.LC45:
	.ascii "max_abs_diff\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB10610:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$3480, %rsp
	.seh_stackalloc	3480
	vmovaps	%xmm6, 3312(%rsp)
	.seh_savexmm	%xmm6, 3312
	vmovaps	%xmm7, 3328(%rsp)
	.seh_savexmm	%xmm7, 3328
	vmovaps	%xmm8, 3344(%rsp)
	.seh_savexmm	%xmm8, 3344
	vmovaps	%xmm9, 3360(%rsp)
	.seh_savexmm	%xmm9, 3360
	vmovaps	%xmm10, 3376(%rsp)
	.seh_savexmm	%xmm10, 3376
	vmovaps	%xmm11, 3392(%rsp)
	.seh_savexmm	%xmm11, 3392
	vmovaps	%xmm12, 3408(%rsp)
	.seh_savexmm	%xmm12, 3408
	vmovaps	%xmm13, 3424(%rsp)
	.seh_savexmm	%xmm13, 3424
	vmovaps	%xmm14, 3440(%rsp)
	.seh_savexmm	%xmm14, 3440
	vmovaps	%xmm15, 3456(%rsp)
	.seh_savexmm	%xmm15, 3456
	.seh_endprologue
	vmovq	%rdx, %xmm7
	movl	%ecx, 3552(%rsp)
	call	__main
	movl	$16, %ecx
.LEHB10:
	call	_Znwy
.LEHE10:
	movabsq	$4398046511616, %rdx
	leaq	16(%rax), %rdi
	movq	%rax, 88(%rsp)
	movq	%rdi, 96(%rsp)
	movq	%rax, %rdi
	movabsq	$1099511627904, %rax
	movq	%rax, (%rdi)
	leaq	240(%rsp), %rax
	movq	%rdx, 8(%rdi)
	leaq	.LC19(%rip), %rdx
	movq	%rax, %rcx
	vmovq	%rax, %xmm9
.LEHB11:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.constprop.5
.LEHE11:
	cmpl	$1, 3552(%rsp)
	jle	.L698
	vmovq	%xmm7, %rax
	movq	__imp__errno(%rip), %rbp
	movl	$2, %esi
	leaq	272(%rsp), %r15
	leaq	8(%rax), %r13
	movl	3552(%rsp), %eax
	leaq	288(%rsp), %rdi
	subl	$2, %eax
	andl	$-2, %eax
	addl	$4, %eax
	movl	%eax, 52(%rsp)
	movq	96(%rsp), %rax
	movq	%rax, 104(%rsp)
	movl	$20260505, %eax
	vmovd	%eax, %xmm15
	movl	$3, %eax
	vmovd	%eax, %xmm14
	movq	.refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rax
	addq	$64, %rax
	vmovq	%rax, %xmm13
	movq	.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	addq	$16, %rax
	movq	%rax, 152(%rsp)
	vpinsrq	$1, %rax, %xmm13, %xmm12
	.p2align 4
	.p2align 3
.L613:
	movq	0(%r13), %r14
	movq	%rdi, 272(%rsp)
	testq	%r14, %r14
	je	.L522
	movq	%r14, %rcx
	call	strlen
	movq	%rax, %rbx
	movq	%rax, 800(%rsp)
	cmpq	$15, %rax
	ja	.L819
	cmpq	$1, %rax
	jne	.L526
	movzbl	(%r14), %edx
	movb	%dl, 288(%rsp)
	movq	%rdi, %rdx
.L527:
	movq	%rax, 280(%rsp)
	movq	%r15, %rcx
	movb	$0, (%rdx,%rax)
	leaq	.LC20(%rip), %rdx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	testl	%eax, %eax
	jne	.L528
	cmpl	3552(%rsp), %esi
	jl	.L820
.L528:
	leaq	.LC21(%rip), %rdx
	movq	%r15, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	testl	%eax, %eax
	jne	.L821
	cmpl	3552(%rsp), %esi
	jl	.L822
	leaq	.LC23(%rip), %rdx
	movq	%r15, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	testl	%eax, %eax
	jne	.L581
.L590:
	leaq	.LC24(%rip), %rdx
	movq	%r15, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
.L592:
	movq	.refptr._ZSt4cerr(%rip), %rcx
	movl	$7, %r8d
	leaq	.LC25(%rip), %rdx
.LEHB12:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vmovq	%xmm7, %rax
	movq	.refptr._ZSt4cerr(%rip), %rcx
	movq	(%rax), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC27(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE12:
	movq	272(%rsp), %rcx
	cmpq	%rdi, %rcx
	je	.L609
	movq	288(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L609:
	movl	$1, %r12d
.L610:
	movq	240(%rsp), %rcx
	leaq	256(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L667
	movq	256(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L667:
	movq	88(%rsp), %rax
	testq	%rax, %rax
	je	.L517
	movq	104(%rsp), %rdx
	movq	%rax, %rcx
	subq	%rax, %rdx
	call	_ZdlPvy
	nop
.L517:
	vmovaps	3312(%rsp), %xmm6
	vmovaps	3328(%rsp), %xmm7
	movl	%r12d, %eax
	vmovaps	3344(%rsp), %xmm8
	vmovaps	3360(%rsp), %xmm9
	vmovaps	3376(%rsp), %xmm10
	vmovaps	3392(%rsp), %xmm11
	vmovaps	3408(%rsp), %xmm12
	vmovaps	3424(%rsp), %xmm13
	vmovaps	3440(%rsp), %xmm14
	vmovaps	3456(%rsp), %xmm15
	addq	$3480, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L526:
	testq	%rax, %rax
	jne	.L823
	movq	%rdi, %rdx
	jmp	.L527
.L819:
	leaq	800(%rsp), %r12
	xorl	%r8d, %r8d
	movq	%r15, %rcx
	movq	%r12, %rdx
.LEHB13:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE13:
	movq	%rax, %rcx
	movq	%rax, 272(%rsp)
	movq	800(%rsp), %rax
	movq	%rax, 288(%rsp)
.L525:
	movq	%r14, %rdx
	movq	%rbx, %r8
	call	memcpy
	movq	800(%rsp), %rax
	movq	272(%rsp), %rdx
	jmp	.L527
.L821:
	leaq	.LC23(%rip), %rdx
	movq	%r15, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	testl	%eax, %eax
	jne	.L581
	cmpl	3552(%rsp), %esi
	jge	.L590
	movslq	%esi, %rax
	vmovq	%xmm7, %rbx
	movq	(%rbx,%rax,8), %r9
	movq	%r9, %rcx
	movq	%r9, 56(%rsp)
	call	strlen
	xorl	%edx, %edx
	movq	56(%rsp), %r9
	movq	248(%rsp), %r8
	movq	%rax, 32(%rsp)
	vmovq	%xmm9, %rcx
.LEHB14:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy
.LEHE14:
	.p2align 4
	.p2align 3
.L577:
	movq	272(%rsp), %rcx
	cmpq	%rdi, %rcx
	je	.L611
	movq	288(%rsp), %rax
	addq	$16, %r13
	addl	$2, %esi
	leaq	1(%rax), %rdx
	call	_ZdlPvy
	cmpl	%esi, 52(%rsp)
	jne	.L613
.L521:
	leaq	336(%rsp), %rax
	movl	$16, %r8d
	vmovq	%xmm9, %rdx
	movq	%rax, %rcx
	movq	%rax, %rdi
	movq	%rax, 64(%rsp)
.LEHB15:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode
.LEHE15:
	leaq	.LC28(%rip), %rdx
	movq	%rdi, %rcx
.LEHB16:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	.refptr._ZSt4cout(%rip), %rdx
	movl	$14, %r8d
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	(%rax), %rax
	addq	-24(%rax), %rdx
	movl	24(%rdx), %eax
	movq	$6, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	leaq	.LC29(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	96(%rsp), %rdi
	cmpq	%rdi, 88(%rsp)
	je	.L665
	vmovq	.LC3(%rip), %xmm7
	movq	88(%rsp), %rax
	vxorps	%xmm6, %xmm6, %xmm6
	leaq	800(%rsp), %r12
	movq	%rax, 80(%rsp)
.L666:
	movq	80(%rsp), %rax
	movl	$1, %ecx
	movl	(%rax), %r13d
	vmovd	%xmm15, %eax
	addl	%r13d, %eax
	movl	%eax, 800(%rsp)
	movl	%eax, %edx
	.p2align 4
	.p2align 3
.L616:
	movl	%edx, %eax
	shrl	$30, %eax
	xorl	%edx, %eax
	imull	$1812433253, %eax, %eax
	leal	(%rax,%rcx), %edx
	movl	%edx, (%r12,%rcx,4)
	incq	%rcx
	cmpq	$624, %rcx
	jne	.L616
	movl	%r13d, %edx
	leal	6(%r13), %eax
	movq	$624, 3296(%rsp)
	movl	%r13d, 208(%rsp)
	addl	$3, %edx
	movq	$0, 216(%rsp)
	cmovns	%edx, %eax
	movslq	%r13d, %rdx
	andl	$-4, %eax
	movq	%rdx, %rcx
	movl	$32, %edx
	movl	%eax, 212(%rsp)
	cltq
	imulq	%rax, %rcx
	salq	$3, %rcx
	call	*__imp__aligned_malloc(%rip)
.LEHE16:
	movq	%rax, %rcx
	movq	%rax, 216(%rsp)
	testq	%rax, %rax
	je	.L824
	movslq	208(%rsp), %r8
	movslq	212(%rsp), %rax
	imulq	%rax, %r8
	salq	$3, %r8
	je	.L621
	xorl	%edx, %edx
	call	memset
.L621:
	testl	%r13d, %r13d
	jle	.L651
	vmovsd	.LC35(%rip), %xmm11
	vmovsd	.LC36(%rip), %xmm12
	leal	-1(%r13), %r10d
	xorl	%edi, %edi
	vmovsd	.LC1(%rip), %xmm9
	vmovsd	.LC38(%rip), %xmm13
	movq	%r10, %r11
	vxorpd	%xmm10, %xmm10, %xmm10
	vmovsd	.LC17(%rip), %xmm18
	vmovsd	.LC37(%rip), %xmm8
	movq	3296(%rsp), %r8
	.p2align 4
	.p2align 3
.L634:
	movl	%edi, %ebx
	movq	%rdi, %rsi
	jmp	.L632
	.p2align 4
	.p2align 3
.L625:
	movl	800(%rsp,%r8,4), %edx
	leaq	1(%r8), %r9
	movq	%r9, 3296(%rsp)
	movl	%edx, %ecx
	shrl	$11, %ecx
	xorl	%edx, %ecx
	movl	%ecx, %eax
	sall	$7, %eax
	andl	$-1658038656, %eax
	xorl	%eax, %ecx
	movl	%ecx, %eax
	sall	$15, %eax
	andl	$-272236544, %eax
	xorl	%ecx, %eax
	movl	%eax, %edx
	shrl	$18, %edx
	xorl	%edx, %eax
	vcvtusi2sdl	%eax, %xmm6, %xmm0
	vaddsd	%xmm10, %xmm0, %xmm19
	cmpq	$623, %r9
	ja	.L825
.L626:
	movl	800(%rsp,%r9,4), %edx
	leaq	1(%r9), %r8
	movq	%r8, 3296(%rsp)
	movl	%edx, %eax
	shrl	$11, %eax
	xorl	%eax, %edx
	movl	%edx, %eax
	sall	$7, %eax
	andl	$-1658038656, %eax
	xorl	%eax, %edx
	movl	%edx, %eax
	sall	$15, %eax
	andl	$-272236544, %eax
	xorl	%edx, %eax
	movl	%eax, %edx
	shrl	$18, %edx
	xorl	%edx, %eax
	vcvtusi2sdl	%eax, %xmm6, %xmm0
	vfmadd132sd	%xmm11, %xmm19, %xmm0
	vmulsd	%xmm12, %xmm0, %xmm0
	vcomisd	%xmm9, %xmm0
	jnb	.L701
	vsubsd	%xmm8, %xmm0, %xmm0
.L631:
	movslq	212(%rsp), %rax
	movq	216(%rsp), %rdx
	incl	%ebx
	imulq	%rdi, %rax
	addq	%rsi, %rax
	incq	%rsi
	vmovsd	%xmm0, (%rdx,%rax,8)
	cmpl	%ebx, %r13d
	jle	.L826
.L632:
	cmpl	%edi, %ebx
	je	.L624
	cmpq	$623, %r8
	jbe	.L625
	movq	%r12, %rcx
	call	_ZNSt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EE11_M_gen_randEv
	movq	3296(%rsp), %r8
	jmp	.L625
.L611:
	addq	$16, %r13
	addl	$2, %esi
	cmpl	%esi, 52(%rsp)
	jne	.L613
	jmp	.L521
	.p2align 4
	.p2align 3
.L581:
	leaq	.LC24(%rip), %rdx
	movq	%r15, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	testl	%eax, %eax
	jne	.L592
	cmpl	3552(%rsp), %esi
	jge	.L592
	vmovq	%xmm7, %rbx
	movslq	%esi, %rax
	leaq	800(%rsp), %r12
	movq	(%rbx,%rax,8), %r14
	leaq	816(%rsp), %rbx
	movq	%rbx, 800(%rsp)
	testq	%r14, %r14
	je	.L595
	movq	%r14, %rcx
	call	strlen
	vmovq	%rax, %xmm8
	movq	%rax, 336(%rsp)
	cmpq	$15, %rax
	ja	.L827
	cmpq	$1, %rax
	jne	.L599
	movzbl	(%r14), %edx
	movb	%dl, 816(%rsp)
	movq	%rbx, %rdx
.L600:
	movq	%rax, 808(%rsp)
	movb	$0, (%rdx,%rax)
	movq	800(%rsp), %r12
.LEHB17:
	call	*%rbp
	movl	(%rax), %r14d
	call	*%rbp
.LEHE17:
	movl	$0, (%rax)
	leaq	336(%rsp), %rax
	movl	$10, %r8d
	movq	%rax, %rdx
	movq	%r12, %rcx
	call	strtoul
	vmovd	%eax, %xmm15
	cmpq	336(%rsp), %r12
	je	.L828
.LEHB18:
	call	*%rbp
.LEHE18:
	cmpl	$34, (%rax)
	je	.L829
	call	*%rbp
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L830
.L603:
	movq	800(%rsp), %rcx
	cmpq	%rbx, %rcx
	je	.L577
.L604:
	movq	816(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
	jmp	.L577
.L599:
	testq	%rax, %rax
	jne	.L831
	movq	%rbx, %rdx
	jmp	.L600
.L827:
	leaq	336(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%r12, %rcx
.LEHB19:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE19:
	movq	%rax, %rcx
	movq	%rax, 800(%rsp)
	movq	336(%rsp), %rax
	movq	%rax, 816(%rsp)
.L598:
	movq	%r14, %rdx
	vmovq	%xmm8, %r8
	call	memcpy
	movq	336(%rsp), %rax
	movq	800(%rsp), %rdx
	jmp	.L600
.L830:
	call	*%rbp
	movl	%r14d, (%rax)
	jmp	.L603
.L820:
	movslq	%esi, %rax
	vmovq	%xmm7, %rbx
	leaq	304(%rsp), %r9
	movq	(%rbx,%rax,8), %r14
	leaq	320(%rsp), %rax
	movq	%r9, 56(%rsp)
	movq	%rax, 80(%rsp)
	movq	%rax, 304(%rsp)
	testq	%r14, %r14
	je	.L529
	movq	%r14, %rcx
	call	strlen
	movq	56(%rsp), %r9
	cmpq	$15, %rax
	movq	%rax, %rbx
	movq	%rax, 800(%rsp)
	ja	.L832
	cmpq	$1, %rax
	jne	.L533
	movzbl	(%r14), %eax
	leaq	800(%rsp), %r12
	movb	%al, 320(%rsp)
.L534:
	movq	800(%rsp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	movq	304(%rsp), %rdx
	movq	%rax, 312(%rsp)
	movb	$0, (%rdx,%rax)
	leaq	928(%rsp), %rax
	vmovdqa	%xmm0, 208(%rsp)
	movq	$0, 224(%rsp)
	movq	%rax, %rcx
	movq	%rax, 112(%rsp)
	call	_ZNSt8ios_baseC2Ev
	vpxor	%xmm0, %xmm0, %xmm0
	movw	$0, 1152(%rsp)
	movq	$0, 1144(%rsp)
	vmovdqu	%ymm0, 1160(%rsp)
	xorl	%edx, %edx
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	.refptr._ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(%rip), %r14
	addq	$16, %rax
	movq	16(%r14), %rbx
	movq	%rax, 928(%rsp)
	movq	24(%r14), %rax
	movq	%rax, %rcx
	movq	%rax, 72(%rsp)
	movq	-24(%rbx), %rax
	movq	%rbx, 800(%rsp)
	movq	%rcx, 800(%rsp,%rax)
	movq	$0, 808(%rsp)
	movq	-24(%rbx), %rcx
	addq	%r12, %rcx
	vzeroupper
.LEHB20:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE20:
	movq	32(%r14), %rax
	xorl	%edx, %edx
	movq	%rax, 816(%rsp)
	movq	%rax, 120(%rsp)
	movq	-24(%rax), %rax
	leaq	816(%rsp,%rax), %rcx
	movq	40(%r14), %rax
	movq	%rax, (%rcx)
	movq	%rax, 128(%rsp)
.LEHB21:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE21:
	movq	8(%r14), %rax
	movq	48(%r14), %rcx
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rax, 136(%rsp)
	movq	-24(%rax), %rax
	movq	%rcx, 144(%rsp)
	movq	%rcx, 800(%rsp,%rax)
	movq	.refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rax
	vmovdqa	%xmm12, 816(%rsp)
	vmovdqa	%xmm0, 832(%rsp)
	vmovdqa	%xmm0, 848(%rsp)
	vmovdqa	%xmm0, 864(%rsp)
	addq	$24, %rax
	movq	%rax, 800(%rsp)
	movq	.refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rax
	addq	$104, %rax
	movq	%rax, 928(%rsp)
	leaq	880(%rsp), %rax
	movq	%rax, %rcx
	movq	%rax, 96(%rsp)
	call	_ZNSt6localeC1Ev
	leaq	912(%rsp), %rcx
	movl	$0, 888(%rsp)
	vmovq	304(%rsp), %xmm8
	movq	%rcx, 56(%rsp)
	movq	%rcx, 896(%rsp)
	movq	.refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE(%rip), %rax
	addq	$16, %rax
	movq	%rax, 824(%rsp)
	movq	312(%rsp), %rax
	vmovq	%xmm8, %rcx
	addq	%rax, %rcx
	movq	%rax, %r14
	je	.L540
	vmovq	%xmm8, %rax
	testq	%rax, %rax
	je	.L833
.L540:
	movq	%r14, 336(%rsp)
	cmpq	$15, %r14
	ja	.L834
	cmpq	$1, %r14
	jne	.L545
	vmovq	%xmm8, %rax
	movzbl	(%rax), %eax
	movb	%al, 912(%rsp)
.L546:
	movq	336(%rsp), %rax
	leaq	824(%rsp), %r14
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	896(%rsp), %rdx
	movq	%r14, %rcx
	movq	%rax, 904(%rsp)
	movb	$0, (%rdx,%rax)
	movq	896(%rsp), %rdx
	movl	$24, 888(%rsp)
.LEHB22:
	call	_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcyy
.LEHE22:
	movq	112(%rsp), %rcx
	movq	%r14, %rdx
.LEHB23:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE23:
	leaq	352(%rsp), %rax
	movq	$0, 344(%rsp)
	movb	$0, 352(%rsp)
	movq	%rax, %r14
	movq	%rax, 336(%rsp)
	leaq	336(%rsp), %rax
	movq	%rax, 64(%rsp)
	leaq	200(%rsp), %rax
	vmovq	%rax, %xmm10
	leaq	208(%rsp), %rax
	vmovq	%rax, %xmm6
	jmp	.L557
	.p2align 4
	.p2align 3
.L836:
	cmpq	$0, 344(%rsp)
	jne	.L835
.L557:
	movq	64(%rsp), %rdx
	movl	$44, %r8d
	movq	%r12, %rcx
.LEHB24:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_
	movq	%rax, %rdx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	testb	$5, 32(%rdx,%rax)
	je	.L836
	movq	336(%rsp), %rcx
	cmpq	%r14, %rcx
	je	.L567
	movq	352(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L567:
	movq	.refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rax
	movq	896(%rsp), %rcx
	addq	$24, %rax
	movq	%rax, 800(%rsp)
	movq	.refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rax
	addq	$104, %rax
	movq	%rax, 928(%rsp)
	movq	.refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE(%rip), %rax
	addq	$16, %rax
	vpinsrq	$1, %rax, %xmm13, %xmm0
	vmovdqa	%xmm0, 816(%rsp)
	cmpq	56(%rsp), %rcx
	je	.L568
	movq	912(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L568:
	movq	152(%rsp), %rax
	movq	96(%rsp), %rcx
	movq	%rax, 824(%rsp)
	call	_ZNSt6localeD1Ev
	movq	136(%rsp), %rax
	movq	144(%rsp), %rcx
	movq	-24(%rax), %rax
	movq	%rcx, 800(%rsp,%rax)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rcx
	movq	%rax, 816(%rsp)
	movq	-24(%rax), %rax
	movq	%rcx, 816(%rsp,%rax)
	movq	-24(%rbx), %rax
	movq	%rbx, 800(%rsp)
	movq	72(%rsp), %rbx
	movq	112(%rsp), %rcx
	movq	%rbx, 800(%rsp,%rax)
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	$0, 808(%rsp)
	addq	$16, %rax
	movq	%rax, 928(%rsp)
	call	_ZNSt8ios_baseD2Ev
	cmpq	$0, 88(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	movq	216(%rsp), %rax
	movq	208(%rsp), %r12
	movq	224(%rsp), %rbx
	vmovdqa	%xmm0, 208(%rsp)
	movq	$0, 224(%rsp)
	movq	%rax, 96(%rsp)
	je	.L570
	movq	104(%rsp), %rdx
	subq	88(%rsp), %rdx
	movq	88(%rsp), %rcx
	call	_ZdlPvy
	movq	208(%rsp), %rcx
	movq	224(%rsp), %rdx
	subq	%rcx, %rdx
	testq	%rcx, %rcx
	je	.L570
	call	_ZdlPvy
.L570:
	movq	304(%rsp), %rcx
	cmpq	80(%rsp), %rcx
	je	.L576
	movq	320(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L576:
	movq	%rbx, 104(%rsp)
	movq	%r12, 88(%rsp)
	jmp	.L577
.L835:
	vmovq	336(%rsp), %xmm11
	call	*__imp__errno(%rip)
	movl	(%rax), %eax
	movl	%eax, 196(%rsp)
	call	*__imp__errno(%rip)
.LEHE24:
	movl	$0, (%rax)
	movl	$10, %r8d
	vmovq	%xmm10, %rdx
	vmovq	%xmm11, %rcx
	call	strtol
	vmovd	%eax, %xmm8
	vmovq	%xmm11, %rax
	cmpq	200(%rsp), %rax
	je	.L837
.LEHB25:
	call	*__imp__errno(%rip)
.LEHE25:
	cmpl	$34, (%rax)
	je	.L838
	call	*__imp__errno(%rip)
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	je	.L839
.L560:
	movq	216(%rsp), %rdx
	vmovd	%xmm8, 200(%rsp)
	cmpq	224(%rsp), %rdx
	je	.L840
	vmovd	%xmm8, (%rdx)
	addq	$4, %rdx
	movq	%rdx, 216(%rsp)
	jmp	.L557
.L822:
	movslq	%esi, %rax
	vmovq	%xmm7, %rbx
	leaq	800(%rsp), %r12
	movq	(%rbx,%rax,8), %rdx
	movq	%r12, %rcx
.LEHB26:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_.constprop.5
.LEHE26:
	movq	800(%rsp), %r12
	movq	__imp__errno(%rip), %rbx
.LEHB27:
	call	*%rbx
	movl	(%rax), %eax
	movl	%eax, 304(%rsp)
	call	*%rbx
.LEHE27:
	movl	$0, (%rax)
	leaq	336(%rsp), %rax
	movl	$10, %r8d
	movq	%rax, %rdx
	movq	%r12, %rcx
	call	strtol
	vmovd	%eax, %xmm14
	cmpq	336(%rsp), %r12
	je	.L841
.LEHB28:
	call	*%rbx
.LEHE28:
	cmpl	$34, (%rax)
	je	.L842
	call	*%rbx
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L843
.L584:
	movq	800(%rsp), %rcx
	leaq	816(%rsp), %rax
	cmpq	%rax, %rcx
	jne	.L604
	jmp	.L577
.L533:
	leaq	800(%rsp), %r12
	testq	%rax, %rax
	je	.L534
	movq	80(%rsp), %rcx
	jmp	.L532
.L545:
	testq	%r14, %r14
	je	.L546
	movq	56(%rsp), %rcx
	jmp	.L544
.L834:
	leaq	336(%rsp), %rax
	leaq	896(%rsp), %rcx
	xorl	%r8d, %r8d
	movq	%rax, %rdx
.LEHB29:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE29:
	movq	%rax, %rcx
	movq	%rax, 896(%rsp)
	movq	336(%rsp), %rax
	movq	%rax, 912(%rsp)
.L544:
	movq	%r14, %r8
	vmovq	%xmm8, %rdx
	call	memcpy
	jmp	.L546
.L832:
	leaq	800(%rsp), %r12
	xorl	%r8d, %r8d
	movq	%r9, %rcx
	movq	%r12, %rdx
.LEHB30:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE30:
	movq	%rax, %rcx
	movq	%rax, 304(%rsp)
	movq	800(%rsp), %rax
	movq	%rax, 320(%rsp)
.L532:
	movq	%rbx, %r8
	movq	%r14, %rdx
	call	memcpy
	jmp	.L534
.L839:
	vmovd	196(%rsp), %xmm11
	call	*__imp__errno(%rip)
	vmovd	%xmm11, (%rax)
	jmp	.L560
	.p2align 4
	.p2align 3
.L825:
	movq	%r12, %rcx
	call	_ZNSt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EE11_M_gen_randEv
	movq	3296(%rsp), %r9
	jmp	.L626
	.p2align 4
	.p2align 3
.L624:
	cmpq	$623, 3296(%rsp)
	ja	.L844
.L628:
	movl	800(%rsp,%r8,4), %edx
	leaq	1(%r8), %r9
	movq	%r9, 3296(%rsp)
	movl	%edx, %ecx
	shrl	$11, %ecx
	xorl	%edx, %ecx
	movl	%ecx, %eax
	sall	$7, %eax
	andl	$-1658038656, %eax
	xorl	%eax, %ecx
	movl	%ecx, %eax
	sall	$15, %eax
	andl	$-272236544, %eax
	xorl	%ecx, %eax
	movl	%eax, %edx
	shrl	$18, %edx
	xorl	%edx, %eax
	vcvtusi2sdl	%eax, %xmm6, %xmm0
	vaddsd	%xmm10, %xmm0, %xmm19
	cmpq	$623, %r9
	ja	.L845
.L629:
	movl	800(%rsp,%r9,4), %ecx
	leaq	1(%r9), %r8
	movq	%r8, 3296(%rsp)
	movl	%ecx, %edx
	shrl	$11, %edx
	xorl	%edx, %ecx
	movl	%ecx, %eax
	sall	$7, %eax
	andl	$-1658038656, %eax
	xorl	%eax, %ecx
	movl	%ecx, %eax
	sall	$15, %eax
	andl	$-272236544, %eax
	xorl	%ecx, %eax
	movl	%eax, %edx
	shrl	$18, %edx
	xorl	%edx, %eax
	vcvtusi2sdl	%eax, %xmm6, %xmm0
	vfmadd132sd	%xmm11, %xmm19, %xmm0
	vmulsd	%xmm12, %xmm0, %xmm0
	vcomisd	%xmm9, %xmm0
	jnb	.L702
	vfmadd132sd	%xmm13, %xmm9, %xmm0
	jmp	.L631
	.p2align 4
	.p2align 3
.L826:
	leaq	1(%rdi), %rax
	cmpq	%rdi, %r10
	je	.L633
	movq	%rax, %rdi
	jmp	.L634
	.p2align 4
	.p2align 3
.L701:
	vmovsd	%xmm18, %xmm18, %xmm0
	jmp	.L631
	.p2align 4
	.p2align 3
.L845:
	movq	%r12, %rcx
	call	_ZNSt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EE11_M_gen_randEv
	movq	3296(%rsp), %r9
	jmp	.L629
	.p2align 4
	.p2align 3
.L844:
	movq	%r12, %rcx
	call	_ZNSt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EE11_M_gen_randEv
	movq	3296(%rsp), %r8
	jmp	.L628
.L702:
	movq	.LC16(%rip), %rax
	vmovq	%rax, %xmm0
	jmp	.L631
	.p2align 4
	.p2align 3
.L847:
	incq	%rbp
	cmpq	72(%rsp), %rbp
	jne	.L652
	vzeroupper
.L651:
	leaq	272(%rsp), %r15
	leaq	208(%rsp), %rbp
	vmovd	%xmm14, %r8d
	leaq	_ZL12gauss_serialR6Matrix(%rip), %rdx
	movq	%r15, %r9
	movq	%rbp, %rcx
	movq	$0, 272(%rsp)
	movq	$0, 280(%rsp)
.LEHB31:
	call	_ZL11time_kernelRK6MatrixPFvRS_EiPS_.constprop.0
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$5, %r8d
	leaq	.LC41(%rip), %rdx
	vmovsd	%xmm0, %xmm0, %xmm8
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	%r13d, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	movl	$1, %r8d
	leaq	.LC33(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	.refptr._ZSt4cout(%rip), %rdx
	movl	$7, %r8d
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	(%rax), %rax
	addq	-24(%rax), %rdx
	movl	24(%rdx), %eax
	movq	$20, 16(%rdx)
	andb	$79, %al
	orl	$32, %eax
	movl	%eax, 24(%rdx)
	leaq	.LC42(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	.refptr._ZSt4cout(%rip), %rdx
	movl	$8, %r8d
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	(%rax), %rax
	addq	-24(%rax), %rdx
	movl	24(%rdx), %eax
	movq	$14, 16(%rdx)
	andb	$79, %al
	orb	$-128, %al
	movl	%eax, 24(%rdx)
	leaq	.LC43(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	.refptr._ZSt4cout(%rip), %rdi
	movl	$7, %r8d
	leaq	.LC44(%rip), %rdx
	movq	(%rax), %rax
	movq	%rdi, %rcx
	movq	-24(%rax), %rax
	movq	$14, 16(%rdi,%rax)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	.refptr._ZSt4cout(%rip), %rdi
	movl	$12, %r8d
	leaq	.LC45(%rip), %rdx
	movq	(%rax), %rax
	movq	%rdi, %rcx
	movq	-24(%rax), %rax
	movq	$18, 16(%rdi,%rax)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$1, %r8d
	leaq	.LC33(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE31:
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	.refptr._ZSt4cout(%rip), %rdx
	movl	$1769104755, 816(%rsp)
	movw	$27745, 820(%rsp)
	movq	$6, 808(%rsp)
	movb	$0, 822(%rsp)
	leaq	816(%rsp), %rbx
	movl	$6, %r8d
	vdivsd	%xmm8, %xmm8, %xmm9
	movq	%rbx, 800(%rsp)
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	(%rax), %rax
	addq	-24(%rax), %rdx
	movl	24(%rdx), %eax
	movq	$20, 16(%rdx)
	andb	$79, %al
	orl	$32, %eax
	movl	%eax, 24(%rdx)
	movq	%rbx, %rdx
.LEHB32:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rcx
	movq	(%rax), %rax
	vmovsd	%xmm8, %xmm8, %xmm1
	movq	-24(%rax), %rdx
	addq	%rcx, %rdx
	movl	24(%rdx), %eax
	movq	$14, 16(%rdx)
	andb	$79, %al
	orb	$-128, %al
	movl	%eax, 24(%rdx)
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	movq	(%rax), %rax
	vmovsd	%xmm9, %xmm9, %xmm1
	movq	-24(%rax), %rax
	movq	$14, 16(%rcx,%rax)
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	movq	(%rax), %rax
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	-24(%rax), %rax
	movq	$18, 16(%rcx,%rax)
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	movl	$1, %r8d
	leaq	.LC33(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	64(%rsp), %rcx
	movl	%r13d, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	leaq	174(%rsp), %rdx
	movl	$1, %r8d
	movb	$44, 174(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	808(%rsp), %r8
	movq	%rax, %rcx
	movq	800(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rcx
	leaq	175(%rsp), %rdx
	movl	$1, %r8d
	movb	$44, 175(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rcx
	vmovsd	%xmm8, %xmm8, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	leaq	176(%rsp), %rdx
	movl	$1, %r8d
	movb	$44, 176(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rcx
	vmovsd	%xmm9, %xmm9, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	leaq	177(%rsp), %rdx
	movl	$1, %r8d
	movb	$44, 177(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rcx
	vxorpd	%xmm1, %xmm1, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	304(%rsp), %rdi
	movq	%rax, %rcx
	movl	$1, %r8d
	movq	%rdi, %rdx
	movb	$10, 304(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE32:
	movq	800(%rsp), %rcx
	cmpq	%rbx, %rcx
	je	.L653
	movq	816(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L653:
	movq	%rdi, %r9
	vmovd	%xmm14, %r8d
	leaq	_ZL19gauss_sse_unalignedR6Matrix(%rip), %rdx
	movq	%rbp, %rcx
	movq	$0, 304(%rsp)
	movq	$0, 312(%rsp)
.LEHB33:
	call	_ZL11time_kernelRK6MatrixPFvRS_EiPS_.constprop.0
	movq	%rdi, %rdx
	movq	%r15, %rcx
	vmovsd	%xmm0, %xmm0, %xmm9
	call	_ZL12max_abs_diffRK6MatrixS1_
.LEHE33:
	movabsq	$7809644679227863923, %rax
	movq	%rbx, 800(%rsp)
	movq	.refptr._ZSt4cout(%rip), %rdx
	movl	$1701734249, 8(%rbx)
	movq	%rax, (%rbx)
	movb	$100, 12(%rbx)
	movq	$13, 808(%rsp)
	movl	$13, %r8d
	movb	$0, 829(%rsp)
	vdivsd	%xmm9, %xmm8, %xmm11
	vmovsd	%xmm0, %xmm0, %xmm10
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	(%rax), %rax
	addq	-24(%rax), %rdx
	movl	24(%rdx), %eax
	movq	$20, 16(%rdx)
	andb	$79, %al
	orl	$32, %eax
	movl	%eax, 24(%rdx)
	movq	%rbx, %rdx
.LEHB34:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rcx
	movq	(%rax), %rax
	vmovsd	%xmm9, %xmm9, %xmm1
	movq	-24(%rax), %rdx
	addq	%rcx, %rdx
	movl	24(%rdx), %eax
	movq	$14, 16(%rdx)
	andb	$79, %al
	orb	$-128, %al
	movl	%eax, 24(%rdx)
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	movq	(%rax), %rax
	vmovsd	%xmm11, %xmm11, %xmm1
	movq	-24(%rax), %rax
	movq	$14, 16(%rcx,%rax)
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	movq	(%rax), %rax
	vmovsd	%xmm10, %xmm10, %xmm1
	movq	-24(%rax), %rax
	movq	$18, 16(%rcx,%rax)
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	movl	$1, %r8d
	leaq	.LC33(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	64(%rsp), %rcx
	movl	%r13d, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	leaq	178(%rsp), %rdx
	movl	$1, %r8d
	movb	$44, 178(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	808(%rsp), %r8
	movq	%rax, %rcx
	movq	800(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rcx
	leaq	179(%rsp), %rdx
	movl	$1, %r8d
	movb	$44, 179(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rcx
	vmovsd	%xmm9, %xmm9, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	leaq	180(%rsp), %rdx
	movl	$1, %r8d
	movb	$44, 180(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rcx
	vmovsd	%xmm11, %xmm11, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	leaq	181(%rsp), %rdx
	movl	$1, %r8d
	movb	$44, 181(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rcx
	vmovsd	%xmm10, %xmm10, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	leaq	182(%rsp), %rdx
	movl	$1, %r8d
	movb	$10, 182(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE34:
	movq	800(%rsp), %rcx
	cmpq	%rbx, %rcx
	je	.L654
	movq	816(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L654:
	movq	312(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L655
	call	*__imp__aligned_free(%rip)
.L655:
	movq	%rdi, %r9
	vmovd	%xmm14, %r8d
	leaq	_ZL19gauss_avx_unalignedR6Matrix(%rip), %rdx
	movq	%rbp, %rcx
	movq	$0, 304(%rsp)
	movq	$0, 312(%rsp)
.LEHB35:
	call	_ZL11time_kernelRK6MatrixPFvRS_EiPS_.constprop.0
	movq	%rdi, %rdx
	movq	%r15, %rcx
	vmovsd	%xmm0, %xmm0, %xmm9
	call	_ZL12max_abs_diffRK6MatrixS1_
.LEHE35:
	movabsq	$7809644679229109857, %rax
	movq	%rbx, 800(%rsp)
	movq	.refptr._ZSt4cout(%rip), %rdx
	movl	$1701734249, 8(%rbx)
	movq	%rax, (%rbx)
	movb	$100, 12(%rbx)
	movq	$13, 808(%rsp)
	movl	$13, %r8d
	movb	$0, 829(%rsp)
	vdivsd	%xmm9, %xmm8, %xmm11
	vmovsd	%xmm0, %xmm0, %xmm10
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	(%rax), %rax
	addq	-24(%rax), %rdx
	movl	24(%rdx), %eax
	movq	$20, 16(%rdx)
	andb	$79, %al
	orl	$32, %eax
	movl	%eax, 24(%rdx)
	movq	%rbx, %rdx
.LEHB36:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rcx
	movq	(%rax), %rax
	vmovsd	%xmm9, %xmm9, %xmm1
	movq	-24(%rax), %rdx
	addq	%rcx, %rdx
	movl	24(%rdx), %eax
	movq	$14, 16(%rdx)
	andb	$79, %al
	orb	$-128, %al
	movl	%eax, 24(%rdx)
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	movq	(%rax), %rax
	vmovsd	%xmm11, %xmm11, %xmm1
	movq	-24(%rax), %rax
	movq	$14, 16(%rcx,%rax)
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	movq	(%rax), %rax
	vmovsd	%xmm10, %xmm10, %xmm1
	movq	-24(%rax), %rax
	movq	$18, 16(%rcx,%rax)
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	movl	$1, %r8d
	leaq	.LC33(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	64(%rsp), %rcx
	movl	%r13d, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	leaq	183(%rsp), %rdx
	movl	$1, %r8d
	movb	$44, 183(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	808(%rsp), %r8
	movq	%rax, %rcx
	movq	800(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rcx
	leaq	184(%rsp), %rdx
	movl	$1, %r8d
	movb	$44, 184(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rcx
	vmovsd	%xmm9, %xmm9, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	leaq	185(%rsp), %rdx
	movl	$1, %r8d
	movb	$44, 185(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rcx
	vmovsd	%xmm11, %xmm11, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	leaq	186(%rsp), %rdx
	movl	$1, %r8d
	movb	$44, 186(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rcx
	vmovsd	%xmm10, %xmm10, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	leaq	187(%rsp), %rdx
	movl	$1, %r8d
	movb	$10, 187(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE36:
	movq	800(%rsp), %rcx
	cmpq	%rbx, %rcx
	je	.L656
	movq	816(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L656:
	movq	312(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L657
	call	*__imp__aligned_free(%rip)
.L657:
	movq	%rdi, %r9
	vmovd	%xmm14, %r8d
	leaq	_ZL17gauss_avx_alignedR6Matrix(%rip), %rdx
	movq	%rbp, %rcx
	movq	$0, 304(%rsp)
	movq	$0, 312(%rsp)
.LEHB37:
	call	_ZL11time_kernelRK6MatrixPFvRS_EiPS_.constprop.0
	movq	%rdi, %rdx
	movq	%r15, %rcx
	vmovsd	%xmm0, %xmm0, %xmm9
	call	_ZL12max_abs_diffRK6MatrixS1_
.LEHE37:
	movabsq	$7451606223930553953, %rax
	movq	%rbx, 800(%rsp)
	movq	.refptr._ZSt4cout(%rip), %rdx
	movw	$25966, 8(%rbx)
	movq	%rax, (%rbx)
	movb	$100, 10(%rbx)
	movq	$11, 808(%rsp)
	movl	$11, %r8d
	movb	$0, 827(%rsp)
	vdivsd	%xmm9, %xmm8, %xmm11
	vmovsd	%xmm0, %xmm0, %xmm10
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	(%rax), %rax
	addq	-24(%rax), %rdx
	movl	24(%rdx), %eax
	movq	$20, 16(%rdx)
	andb	$79, %al
	orl	$32, %eax
	movl	%eax, 24(%rdx)
	movq	%rbx, %rdx
.LEHB38:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rcx
	movq	(%rax), %rax
	vmovsd	%xmm9, %xmm9, %xmm1
	movq	-24(%rax), %rdx
	addq	%rcx, %rdx
	movl	24(%rdx), %eax
	movq	$14, 16(%rdx)
	andb	$79, %al
	orb	$-128, %al
	movl	%eax, 24(%rdx)
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	movq	(%rax), %rax
	vmovsd	%xmm11, %xmm11, %xmm1
	movq	-24(%rax), %rax
	movq	$14, 16(%rcx,%rax)
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	movq	(%rax), %rax
	vmovsd	%xmm10, %xmm10, %xmm1
	movq	-24(%rax), %rax
	movq	$18, 16(%rcx,%rax)
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	movl	$1, %r8d
	leaq	.LC33(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	64(%rsp), %rcx
	movl	%r13d, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	leaq	188(%rsp), %rdx
	movl	$1, %r8d
	movb	$44, 188(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	808(%rsp), %r8
	movq	%rax, %rcx
	movq	800(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rcx
	leaq	189(%rsp), %rdx
	movl	$1, %r8d
	movb	$44, 189(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rcx
	vmovsd	%xmm9, %xmm9, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	leaq	190(%rsp), %rdx
	movl	$1, %r8d
	movb	$44, 190(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rcx
	vmovsd	%xmm11, %xmm11, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	leaq	191(%rsp), %rdx
	movl	$1, %r8d
	movb	$44, 191(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rcx
	vmovsd	%xmm10, %xmm10, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	leaq	192(%rsp), %rdx
	movl	$1, %r8d
	movb	$10, 192(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE38:
	movq	800(%rsp), %rcx
	cmpq	%rbx, %rcx
	je	.L658
	movq	816(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L658:
	movq	312(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L659
	call	*__imp__aligned_free(%rip)
.L659:
	movq	%rdi, %r9
	vmovd	%xmm14, %r8d
	leaq	_ZL17gauss_avx_unroll4R6Matrix(%rip), %rdx
	movq	%rbp, %rcx
	movq	$0, 304(%rsp)
	movq	$0, 312(%rsp)
.LEHB39:
	call	_ZL11time_kernelRK6MatrixPFvRS_EiPS_.constprop.0
	movq	%rdi, %rdx
	movq	%r15, %rcx
	vmovsd	%xmm0, %xmm0, %xmm9
	call	_ZL12max_abs_diffRK6MatrixS1_
.LEHE39:
	movabsq	$8030602535946974817, %rax
	movq	%rbx, 800(%rsp)
	movq	.refptr._ZSt4cout(%rip), %rdx
	movw	$27756, 8(%rbx)
	movq	%rax, (%rbx)
	movb	$52, 10(%rbx)
	movq	$11, 808(%rsp)
	movl	$11, %r8d
	movb	$0, 827(%rsp)
	vdivsd	%xmm9, %xmm8, %xmm8
	vmovsd	%xmm0, %xmm0, %xmm10
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	(%rax), %rax
	addq	-24(%rax), %rdx
	movl	24(%rdx), %eax
	movq	$20, 16(%rdx)
	andb	$79, %al
	orl	$32, %eax
	movl	%eax, 24(%rdx)
	movq	%rbx, %rdx
.LEHB40:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rcx
	movq	(%rax), %rax
	vmovsd	%xmm9, %xmm9, %xmm1
	movq	-24(%rax), %rdx
	addq	%rcx, %rdx
	movl	24(%rdx), %eax
	movq	$14, 16(%rdx)
	andb	$79, %al
	orb	$-128, %al
	movl	%eax, 24(%rdx)
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	movq	(%rax), %rax
	vmovsd	%xmm8, %xmm8, %xmm1
	movq	-24(%rax), %rax
	movq	$14, 16(%rcx,%rax)
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	movq	(%rax), %rax
	vmovsd	%xmm10, %xmm10, %xmm1
	movq	-24(%rax), %rax
	movq	$18, 16(%rcx,%rax)
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	movl	$1, %r8d
	leaq	.LC33(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	64(%rsp), %rcx
	movl	%r13d, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	leaq	193(%rsp), %rdx
	movl	$1, %r8d
	movb	$44, 193(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	808(%rsp), %r8
	movq	%rax, %rcx
	movq	800(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rcx
	leaq	194(%rsp), %rdx
	movl	$1, %r8d
	movb	$44, 194(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rcx
	vmovsd	%xmm9, %xmm9, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	leaq	195(%rsp), %rdx
	movl	$1, %r8d
	movb	$44, 195(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rcx
	vmovsd	%xmm8, %xmm8, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	leaq	196(%rsp), %rdx
	movl	$1, %r8d
	movb	$44, 196(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rcx
	vmovsd	%xmm10, %xmm10, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	leaq	200(%rsp), %rdx
	movl	$1, %r8d
	movb	$10, 200(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE40:
	movq	800(%rsp), %rcx
	cmpq	%rbx, %rcx
	je	.L660
	movq	816(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L660:
	movq	312(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L661
	call	*__imp__aligned_free(%rip)
.L661:
	movq	280(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L662
	call	*__imp__aligned_free(%rip)
.L662:
	movq	216(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L663
	call	*__imp__aligned_free(%rip)
	addq	$4, 80(%rsp)
	movq	80(%rsp), %rax
	cmpq	%rax, 96(%rsp)
	jne	.L666
.L665:
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$14, %r8d
	leaq	.LC34(%rip), %rdx
.LEHB41:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	248(%rsp), %r8
	movq	240(%rsp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rcx
	leaq	.LC33(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE41:
	movq	64(%rsp), %rcx
	xorl	%r12d, %r12d
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	jmp	.L610
.L633:
	cmpl	$1, %r13d
	jle	.L651
	vmovsd	.LC18(%rip), %xmm13
	movq	3296(%rsp), %r8
	leal	-2(%r13), %ebp
	movl	%r13d, %edi
	leaq	2(%rbp), %rax
	shrl	$3, %edi
	movl	%r13d, %r10d
	movl	$1, %ebp
	movq	%rax, 72(%rsp)
	salq	$6, %rdi
	andl	$-8, %r10d
	.p2align 4
	.p2align 3
.L652:
	movl	%r13d, %eax
	xorl	%r15d, %r15d
	subl	%r10d, %eax
	movl	%eax, 52(%rsp)
	decl	%eax
	movl	%eax, 56(%rsp)
	jmp	.L640
	.p2align 4
	.p2align 3
.L635:
	movl	800(%rsp,%r8,4), %eax
	leaq	1(%r8), %rcx
	movq	%rcx, 3296(%rsp)
	movl	%eax, %edx
	shrl	$11, %edx
	xorl	%eax, %edx
	movl	%edx, %eax
	sall	$7, %eax
	andl	$-1658038656, %eax
	xorl	%eax, %edx
	movl	%edx, %eax
	sall	$15, %eax
	andl	$-272236544, %eax
	xorl	%edx, %eax
	movl	%eax, %edx
	shrl	$18, %edx
	xorl	%edx, %eax
	vcvtusi2sdl	%eax, %xmm6, %xmm0
	vaddsd	%xmm10, %xmm0, %xmm8
	cmpq	$623, %rcx
	ja	.L846
.L636:
	leaq	1(%rcx), %r8
	movl	800(%rsp,%rcx,4), %ecx
	movq	%r8, 3296(%rsp)
	movl	%ecx, %edx
	shrl	$11, %edx
	xorl	%edx, %ecx
	movl	%ecx, %eax
	sall	$7, %eax
	andl	$-1658038656, %eax
	xorl	%ecx, %eax
	movl	%eax, %edx
	sall	$15, %eax
	andl	$-272236544, %eax
	xorl	%edx, %eax
	movl	%eax, %edx
	shrl	$18, %edx
	xorl	%edx, %eax
	vcvtusi2sdl	%eax, %xmm6, %xmm0
	vfmadd132sd	%xmm11, %xmm8, %xmm0
	vmulsd	%xmm12, %xmm0, %xmm0
	vcomisd	%xmm9, %xmm0
	jnb	.L703
	vmovsd	.LC39(%rip), %xmm2
	vmovsd	.LC40(%rip), %xmm3
	vfmadd132sd	.LC37(%rip), %xmm2, %xmm0
	vandpd	%xmm7, %xmm0, %xmm1
	vcomisd	%xmm1, %xmm3
	jbe	.L637
.L645:
	incq	%r15
	cmpq	%rbp, %r15
	je	.L847
.L640:
	cmpq	$623, %r8
	jbe	.L635
	movq	%r12, %rcx
	vzeroupper
	call	_ZNSt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EE11_M_gen_randEv
	movq	3296(%rsp), %r8
	jmp	.L635
	.p2align 4
	.p2align 3
.L703:
	vmovsd	%xmm13, %xmm13, %xmm0
.L637:
	movslq	212(%rsp), %r9
	movq	216(%rsp), %rsi
	movq	%r9, %rbx
	imulq	%rbp, %r9
	imulq	%r15, %rbx
	leaq	0(,%r9,8), %rdx
	leaq	8(,%rbx,8), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	cmpq	$48, %rcx
	jbe	.L641
	cmpl	$2, %r11d
	jbe	.L641
	cmpl	$6, %r11d
	jbe	.L704
	leaq	-8(%rsi,%rax), %r14
	vbroadcastsd	%xmm0, %zmm4
	addq	%rsi, %rdx
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
.L644:
	vmovupd	(%r14,%rax), %zmm3
	vfmadd213pd	(%rdx,%rax), %zmm4, %zmm3
	vmovupd	%zmm3, (%rdx,%rax)
	addq	$64, %rax
	cmpq	%rax, %rdi
	jne	.L644
	cmpl	%r10d, %r13d
	je	.L645
	cmpl	$2, 56(%rsp)
	movl	52(%rsp), %ecx
	movl	%r10d, %eax
	movl	%r10d, %edx
	jbe	.L647
.L642:
	leaq	(%r9,%rdx), %r14
	addq	%rbx, %rdx
	vbroadcastsd	%xmm0, %ymm3
	leaq	(%rsi,%r14,8), %r14
	vmovupd	(%r14), %ymm5
	vfmadd132pd	(%rsi,%rdx,8), %ymm5, %ymm3
	movl	%ecx, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	vmovupd	%ymm3, (%r14)
	cmpl	%ecx, %edx
	je	.L645
.L647:
	movslq	%eax, %rdx
	leaq	(%rdx,%r9), %rcx
	addq	%rbx, %rdx
	vmovsd	(%rsi,%rdx,8), %xmm3
	leaq	(%rsi,%rcx,8), %rcx
	leal	1(%rax), %edx
	vfmadd213sd	(%rcx), %xmm0, %xmm3
	vmovsd	%xmm3, (%rcx)
	cmpl	%edx, %r13d
	jle	.L645
	movslq	%edx, %rdx
	leaq	(%r9,%rdx), %rcx
	addq	%rbx, %rdx
	vmovsd	(%rsi,%rdx,8), %xmm3
	leaq	(%rsi,%rcx,8), %rcx
	leal	2(%rax), %edx
	vfmadd213sd	(%rcx), %xmm0, %xmm3
	vmovsd	%xmm3, (%rcx)
	cmpl	%edx, %r13d
	jle	.L645
	movslq	%edx, %rax
	addq	%rax, %r9
	addq	%rbx, %rax
	leaq	(%rsi,%r9,8), %rdx
	vmovsd	(%rdx), %xmm5
	vfmadd132sd	(%rsi,%rax,8), %xmm5, %xmm0
	vmovsd	%xmm0, (%rdx)
	jmp	.L645
	.p2align 4
	.p2align 3
.L846:
	movq	%r12, %rcx
	vzeroupper
	call	_ZNSt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EE11_M_gen_randEv
	movq	3296(%rsp), %rcx
	jmp	.L636
	.p2align 4
	.p2align 3
.L641:
	leaq	(%rsi,%rdx), %rax
	movl	%r11d, %edx
	subq	%r9, %rbx
	addq	%r9, %rdx
	movq	%rbx, %rcx
	leaq	8(%rsi,%rdx,8), %rdx
	.p2align 4
	.p2align 3
.L650:
	vmovsd	(%rax,%rcx,8), %xmm1
	addq	$8, %rax
	vfmadd213sd	-8(%rax), %xmm0, %xmm1
	vmovsd	%xmm1, -8(%rax)
	cmpq	%rdx, %rax
	jne	.L650
	jmp	.L645
.L704:
	movl	%r13d, %ecx
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.L642
.L663:
	addq	$4, 80(%rsp)
	movq	80(%rsp), %rax
	cmpq	%rax, 96(%rsp)
	jne	.L666
	jmp	.L665
.L843:
	movl	304(%rsp), %r12d
	call	*%rbx
	movl	%r12d, (%rax)
	jmp	.L584
.L840:
	vmovq	%xmm10, %r8
	vmovq	%xmm6, %rcx
.LEHB42:
	call	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
.LEHE42:
	jmp	.L557
.L838:
	leaq	.LC22(%rip), %rcx
.LEHB43:
	call	_ZSt20__throw_out_of_rangePKc
.LEHE43:
.L829:
	leaq	.LC26(%rip), %rcx
.LEHB44:
	call	_ZSt20__throw_out_of_rangePKc
.L828:
	leaq	.LC26(%rip), %rcx
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE44:
.L833:
	leaq	.LC4(%rip), %rcx
.LEHB45:
	call	_ZSt19__throw_logic_errorPKc
.LEHE45:
.L529:
	leaq	.LC4(%rip), %rcx
.LEHB46:
	call	_ZSt19__throw_logic_errorPKc
.LEHE46:
.L831:
	movq	%rbx, %rcx
	jmp	.L598
.L823:
	movq	%rdi, %rcx
	jmp	.L525
.L837:
	leaq	.LC22(%rip), %rcx
.LEHB47:
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE47:
.L842:
	leaq	.LC22(%rip), %rcx
.LEHB48:
	call	_ZSt20__throw_out_of_rangePKc
.L841:
	leaq	.LC22(%rip), %rcx
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE48:
.L595:
	leaq	.LC4(%rip), %rcx
.LEHB49:
	call	_ZSt19__throw_logic_errorPKc
.LEHE49:
.L522:
	leaq	.LC4(%rip), %rcx
.LEHB50:
	call	_ZSt19__throw_logic_errorPKc
.LEHE50:
.L698:
	movq	96(%rsp), %rax
	movq	%rax, 104(%rsp)
	movl	$20260505, %eax
	vmovd	%eax, %xmm15
	movl	$3, %eax
	vmovd	%eax, %xmm14
	jmp	.L521
.L706:
	movq	%rax, %rbx
	vzeroupper
.L669:
	movq	272(%rsp), %rcx
	cmpq	%rdi, %rcx
	je	.L673
	movq	288(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L673:
	movq	240(%rsp), %rcx
	leaq	256(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L696
	movq	256(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L696:
	movq	104(%rsp), %rdx
	subq	88(%rsp), %rdx
	cmpq	$0, 88(%rsp)
	je	.L697
.L520:
	movq	88(%rsp), %rcx
	call	_ZdlPvy
.L697:
	movq	%rbx, %rcx
.LEHB51:
	call	_Unwind_Resume
.LEHE51:
.L730:
	movq	%rax, %rbx
	movl	$16, %edx
	vzeroupper
	jmp	.L520
.L707:
	movq	%rax, %rbx
	vzeroupper
.L588:
	movq	800(%rsp), %rcx
	leaq	816(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L669
	movq	816(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
	jmp	.L669
.L725:
	movq	%rax, %rsi
	vzeroupper
.L554:
	movq	.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	movq	96(%rsp), %rcx
	addq	$16, %rax
	movq	%rax, 824(%rsp)
	call	_ZNSt6localeD1Ev
	movq	136(%rsp), %rax
	movq	-24(%rax), %rdx
	movq	144(%rsp), %rax
	movq	%rax, 800(%rsp,%rdx)
	movq	120(%rsp), %rax
	movq	-24(%rax), %rdx
	movq	%rax, 816(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 816(%rsp,%rdx)
	movq	-24(%rbx), %rdx
	movq	72(%rsp), %rax
	movq	%rbx, 800(%rsp)
	movq	%rsi, %rbx
	movq	%rax, 800(%rsp,%rdx)
	movq	$0, 808(%rsp)
.L542:
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	112(%rsp), %rcx
	addq	$16, %rax
	movq	%rax, 928(%rsp)
	call	_ZNSt8ios_baseD2Ev
.L555:
	movq	208(%rsp), %rcx
	movq	224(%rsp), %rdx
	subq	%rcx, %rdx
	testq	%rcx, %rcx
	je	.L572
	call	_ZdlPvy
.L572:
	movq	304(%rsp), %rcx
	cmpq	80(%rsp), %rcx
	je	.L669
	movq	320(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
	jmp	.L669
.L727:
	movq	%rax, %rbx
	leaq	196(%rsp), %rcx
	vzeroupper
	call	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev
.L564:
	movq	336(%rsp), %rcx
	cmpq	%r14, %rcx
	je	.L571
	movq	352(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L571:
	movq	%r12, %rcx
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L555
.L728:
	movq	%rax, %rbx
	leaq	304(%rsp), %rcx
	vzeroupper
	call	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev
	jmp	.L588
.L729:
	movq	%rax, %rsi
	vzeroupper
	call	*%rbp
	cmpl	$0, (%rax)
	jne	.L608
	call	*%rbp
	movl	%r14d, (%rax)
.L608:
	movq	800(%rsp), %rcx
	cmpq	%rbx, %rcx
	je	.L671
	movq	816(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L671:
	movq	%rsi, %rbx
	jmp	.L669
.L708:
	movq	%rax, %rsi
	vzeroupper
	jmp	.L608
.L721:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L564
.L723:
	movq	%rax, %rsi
	movq	.refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE(%rip), %rax
	movq	896(%rsp), %rcx
	addq	$16, %rax
	movq	%rax, 824(%rsp)
	cmpq	56(%rsp), %rcx
	je	.L812
.L818:
	movq	912(%rsp), %rax
	leaq	1(%rax), %rdx
	vzeroupper
	call	_ZdlPvy
	jmp	.L554
.L724:
	movq	-24(%rbx), %rdx
	movq	72(%rsp), %rsi
	movq	%rbx, 800(%rsp)
	movq	%rax, %rbx
	movq	%rsi, 800(%rsp,%rdx)
	movq	$0, 808(%rsp)
	vzeroupper
	jmp	.L542
.L722:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L542
.L713:
	movq	%rax, %rbx
	vzeroupper
.L679:
	movq	312(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L676
	call	*__imp__aligned_free(%rip)
.L676:
	movq	280(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L693
	call	*__imp__aligned_free(%rip)
.L693:
	movq	216(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L695
	call	*__imp__aligned_free(%rip)
.L695:
	movq	64(%rsp), %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	jmp	.L673
.L714:
	movq	800(%rsp), %rcx
	movq	%rax, %rsi
	cmpq	%rbx, %rcx
	je	.L814
	movq	816(%rsp), %rax
	leaq	1(%rax), %rdx
	vzeroupper
	call	_ZdlPvy
.L678:
	movq	%rsi, %rbx
	jmp	.L679
.L814:
	vzeroupper
	jmp	.L678
.L710:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L695
.L824:
.LEHB52:
	call	_ZN6MatrixC1Ei.part.0
.LEHE52:
.L711:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L676
.L712:
	movq	800(%rsp), %rcx
	movq	%rax, %rsi
	cmpq	%rbx, %rcx
	je	.L813
	movq	816(%rsp), %rax
	leaq	1(%rax), %rdx
	vzeroupper
	call	_ZdlPvy
.L675:
	movq	%rsi, %rbx
	jmp	.L676
.L726:
	movq	896(%rsp), %rcx
	movq	%rax, %rsi
	cmpq	56(%rsp), %rcx
	jne	.L818
.L812:
	vzeroupper
	jmp	.L554
.L709:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L673
.L813:
	vzeroupper
	jmp	.L675
.L717:
	movq	%rax, %rbx
	vzeroupper
.L687:
	movq	312(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L676
	call	*__imp__aligned_free(%rip)
	jmp	.L676
.L718:
	movq	800(%rsp), %rcx
	movq	%rax, %rsi
	cmpq	%rbx, %rcx
	je	.L816
	movq	816(%rsp), %rax
	leaq	1(%rax), %rdx
	vzeroupper
	call	_ZdlPvy
.L686:
	movq	%rsi, %rbx
	jmp	.L687
.L816:
	vzeroupper
	jmp	.L686
.L715:
	movq	%rax, %rbx
	vzeroupper
.L683:
	movq	312(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L676
	call	*__imp__aligned_free(%rip)
	jmp	.L676
.L719:
	movq	%rax, %rbx
	vzeroupper
.L691:
	movq	312(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L676
	call	*__imp__aligned_free(%rip)
	jmp	.L676
.L716:
	movq	800(%rsp), %rcx
	movq	%rax, %rsi
	cmpq	%rbx, %rcx
	je	.L815
	movq	816(%rsp), %rax
	leaq	1(%rax), %rdx
	vzeroupper
	call	_ZdlPvy
.L682:
	movq	%rsi, %rbx
	jmp	.L683
.L815:
	vzeroupper
	jmp	.L682
.L720:
	movq	800(%rsp), %rcx
	movq	%rax, %rsi
	cmpq	%rbx, %rcx
	je	.L817
	movq	816(%rsp), %rax
	leaq	1(%rax), %rdx
	vzeroupper
	call	_ZdlPvy
.L690:
	movq	%rsi, %rbx
	jmp	.L691
.L817:
	vzeroupper
	jmp	.L690
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA10610:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10610-.LLSDACSB10610
.LLSDACSB10610:
	.uleb128 .LEHB10-.LFB10610
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB10610
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L730-.LFB10610
	.uleb128 0
	.uleb128 .LEHB12-.LFB10610
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L706-.LFB10610
	.uleb128 0
	.uleb128 .LEHB13-.LFB10610
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L709-.LFB10610
	.uleb128 0
	.uleb128 .LEHB14-.LFB10610
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L706-.LFB10610
	.uleb128 0
	.uleb128 .LEHB15-.LFB10610
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L709-.LFB10610
	.uleb128 0
	.uleb128 .LEHB16-.LFB10610
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L710-.LFB10610
	.uleb128 0
	.uleb128 .LEHB17-.LFB10610
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L708-.LFB10610
	.uleb128 0
	.uleb128 .LEHB18-.LFB10610
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L729-.LFB10610
	.uleb128 0
	.uleb128 .LEHB19-.LFB10610
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L706-.LFB10610
	.uleb128 0
	.uleb128 .LEHB20-.LFB10610
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L722-.LFB10610
	.uleb128 0
	.uleb128 .LEHB21-.LFB10610
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L724-.LFB10610
	.uleb128 0
	.uleb128 .LEHB22-.LFB10610
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L726-.LFB10610
	.uleb128 0
	.uleb128 .LEHB23-.LFB10610
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L723-.LFB10610
	.uleb128 0
	.uleb128 .LEHB24-.LFB10610
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L721-.LFB10610
	.uleb128 0
	.uleb128 .LEHB25-.LFB10610
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L727-.LFB10610
	.uleb128 0
	.uleb128 .LEHB26-.LFB10610
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L706-.LFB10610
	.uleb128 0
	.uleb128 .LEHB27-.LFB10610
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L707-.LFB10610
	.uleb128 0
	.uleb128 .LEHB28-.LFB10610
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L728-.LFB10610
	.uleb128 0
	.uleb128 .LEHB29-.LFB10610
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L725-.LFB10610
	.uleb128 0
	.uleb128 .LEHB30-.LFB10610
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L706-.LFB10610
	.uleb128 0
	.uleb128 .LEHB31-.LFB10610
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L711-.LFB10610
	.uleb128 0
	.uleb128 .LEHB32-.LFB10610
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L712-.LFB10610
	.uleb128 0
	.uleb128 .LEHB33-.LFB10610
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L713-.LFB10610
	.uleb128 0
	.uleb128 .LEHB34-.LFB10610
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L714-.LFB10610
	.uleb128 0
	.uleb128 .LEHB35-.LFB10610
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L715-.LFB10610
	.uleb128 0
	.uleb128 .LEHB36-.LFB10610
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L716-.LFB10610
	.uleb128 0
	.uleb128 .LEHB37-.LFB10610
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L717-.LFB10610
	.uleb128 0
	.uleb128 .LEHB38-.LFB10610
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L718-.LFB10610
	.uleb128 0
	.uleb128 .LEHB39-.LFB10610
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L719-.LFB10610
	.uleb128 0
	.uleb128 .LEHB40-.LFB10610
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L720-.LFB10610
	.uleb128 0
	.uleb128 .LEHB41-.LFB10610
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L710-.LFB10610
	.uleb128 0
	.uleb128 .LEHB42-.LFB10610
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L721-.LFB10610
	.uleb128 0
	.uleb128 .LEHB43-.LFB10610
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L727-.LFB10610
	.uleb128 0
	.uleb128 .LEHB44-.LFB10610
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L729-.LFB10610
	.uleb128 0
	.uleb128 .LEHB45-.LFB10610
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L725-.LFB10610
	.uleb128 0
	.uleb128 .LEHB46-.LFB10610
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L706-.LFB10610
	.uleb128 0
	.uleb128 .LEHB47-.LFB10610
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L727-.LFB10610
	.uleb128 0
	.uleb128 .LEHB48-.LFB10610
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L728-.LFB10610
	.uleb128 0
	.uleb128 .LEHB49-.LFB10610
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L706-.LFB10610
	.uleb128 0
	.uleb128 .LEHB50-.LFB10610
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L709-.LFB10610
	.uleb128 0
	.uleb128 .LEHB51-.LFB10610
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB52-.LFB10610
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L710-.LFB10610
	.uleb128 0
.LLSDACSE10610:
	.section	.text.startup,"x"
	.seh_endproc
	.p2align 4
	.def	_GLOBAL__sub_I_main;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_main
_GLOBAL__sub_I_main:
.LFB11707:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rcx
	addq	$40, %rsp
	jmp	atexit
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.globl	_ZTSSt9exception
	.section	.rdata$_ZTSSt9exception,"dr"
	.linkonce same_size
	.align 8
_ZTSSt9exception:
	.ascii "St9exception\0"
	.globl	_ZTISt9exception
	.section	.rdata$_ZTISt9exception,"dr"
	.linkonce same_size
	.align 8
_ZTISt9exception:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSSt9exception
	.globl	_ZTSSt9bad_alloc
	.section	.rdata$_ZTSSt9bad_alloc,"dr"
	.linkonce same_size
	.align 8
_ZTSSt9bad_alloc:
	.ascii "St9bad_alloc\0"
	.globl	_ZTISt9bad_alloc
	.section	.rdata$_ZTISt9bad_alloc,"dr"
	.linkonce same_size
	.align 8
_ZTISt9bad_alloc:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt9bad_alloc
	.quad	_ZTISt9exception
	.globl	_ZTSSt13runtime_error
	.section	.rdata$_ZTSSt13runtime_error,"dr"
	.linkonce same_size
	.align 16
_ZTSSt13runtime_error:
	.ascii "St13runtime_error\0"
	.globl	_ZTISt13runtime_error
	.section	.rdata$_ZTISt13runtime_error,"dr"
	.linkonce same_size
	.align 8
_ZTISt13runtime_error:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt13runtime_error
	.quad	_ZTISt9exception
.lcomm _ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 16
.LC3:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC7:
	.long	0
	.long	1093567616
	.align 64
.LC8:
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.align 64
.LC9:
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.align 64
.LC10:
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.align 64
.LC11:
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.align 32
.LC12:
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.align 32
.LC13:
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.align 32
.LC14:
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.align 32
.LC15:
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.align 8
.LC16:
	.long	0
	.long	1074266112
	.align 8
.LC17:
	.long	-2
	.long	1071644671
	.align 8
.LC18:
	.long	-2
	.long	1070596095
	.align 8
.LC35:
	.long	0
	.long	1106247680
	.align 8
.LC36:
	.long	0
	.long	1005584384
	.align 8
.LC37:
	.long	0
	.long	1071644672
	.align 8
.LC38:
	.long	0
	.long	1073741824
	.align 8
.LC39:
	.long	0
	.long	-1076887552
	.align 8
.LC40:
	.long	-2127697391
	.long	1030854553
	.ident	"GCC: (tdm64-1) 10.3.0"
	.def	__cxa_allocate_exception;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13runtime_errorC1EPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13runtime_errorD1Ev;	.scl	2;	.type	32;	.endef
	.def	__cxa_throw;	.scl	2;	.type	32;	.endef
	.def	__cxa_free_exception;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt9bad_allocD1Ev;	.scl	2;	.type	32;	.endef
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_ZSt19__throw_logic_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode;	.scl	2;	.type	32;	.endef
	.def	strtoul;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_baseC2Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6localeC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcyy;	.scl	2;	.type	32;	.endef
	.def	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6localeD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_baseD2Ev;	.scl	2;	.type	32;	.endef
	.def	strtol;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_out_of_rangePKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt24__throw_invalid_argumentPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
	.section	.rdata$.refptr._ZSt4cerr, "dr"
	.globl	.refptr._ZSt4cerr
	.linkonce	discard
.refptr._ZSt4cerr:
	.quad	_ZSt4cerr
	.section	.rdata$.refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, "dr"
	.globl	.refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE
	.linkonce	discard
.refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE:
	.quad	_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE
	.section	.rdata$.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE, "dr"
	.globl	.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE
	.linkonce	discard
.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE:
	.quad	_ZTVSt15basic_streambufIcSt11char_traitsIcEE
	.section	.rdata$.refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, "dr"
	.globl	.refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE
	.linkonce	discard
.refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE:
	.quad	_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE
	.section	.rdata$.refptr._ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, "dr"
	.globl	.refptr._ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE
	.linkonce	discard
.refptr._ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE:
	.quad	_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE
	.section	.rdata$.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE, "dr"
	.globl	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE
	.linkonce	discard
.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE:
	.quad	_ZTVSt9basic_iosIcSt11char_traitsIcEE
	.section	.rdata$.refptr._ZNSt9bad_allocD1Ev, "dr"
	.globl	.refptr._ZNSt9bad_allocD1Ev
	.linkonce	discard
.refptr._ZNSt9bad_allocD1Ev:
	.quad	_ZNSt9bad_allocD1Ev
	.section	.rdata$.refptr._ZTVSt9bad_alloc, "dr"
	.globl	.refptr._ZTVSt9bad_alloc
	.linkonce	discard
.refptr._ZTVSt9bad_alloc:
	.quad	_ZTVSt9bad_alloc
	.section	.rdata$.refptr._ZNSt13runtime_errorD1Ev, "dr"
	.globl	.refptr._ZNSt13runtime_errorD1Ev
	.linkonce	discard
.refptr._ZNSt13runtime_errorD1Ev:
	.quad	_ZNSt13runtime_errorD1Ev
