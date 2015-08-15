	.file	1 "fib.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.text
	.align	2
	.globl	fib
	.set	nomips16
	.ent	fib
	.type	fib, @function
fib:
	.frame	$fp,32,$31		# vars= 0, regs= 3/0, args= 16, gp= 0
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	sw	$16,20($sp)
	move	$fp,$sp
	sw	$4,32($fp)
	lw	$2,32($fp)
	nop
	bne	$2,$0,$L2
	nop

	move	$2,$0
	j	$L3
	nop

$L2:
	lw	$3,32($fp)
	li	$2,1			# 0x1
	bne	$3,$2,$L4
	nop

	li	$2,1			# 0x1
	j	$L3
	nop

$L4:
	lw	$2,32($fp)
	nop
	addiu	$2,$2,-1
	move	$4,$2
	jal	fib
	nop

	move	$16,$2
	lw	$2,32($fp)
	nop
	addiu	$2,$2,-2
	move	$4,$2
	jal	fib
	nop

	addu	$2,$16,$2
$L3:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	lw	$16,20($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	fib
	.size	fib, .-fib
	.ident	"GCC: (GNU) 4.8.2"
