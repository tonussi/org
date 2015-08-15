	.file	1 "lor.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.text
	.align	2
	.globl	logical_or
	.set	nomips16
	.ent	logical_or
	.type	logical_or, @function
logical_or:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$3,$4
	move	$2,$5
	sh	$3,8($fp)
	sh	$2,12($fp)
	lh	$2,8($fp)
	nop
	bne	$2,$0,$L2
	nop

	lh	$2,12($fp)
	nop
	beq	$2,$0,$L3
	nop

$L2:
	li	$2,1			# 0x1
	j	$L4
	nop

$L3:
	move	$2,$0
$L4:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	logical_or
	.size	logical_or, .-logical_or
	.align	2
	.globl	bitwise_or
	.set	nomips16
	.ent	bitwise_or
	.type	bitwise_or, @function
bitwise_or:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$3,$4
	move	$2,$5
	sb	$3,8($fp)
	sb	$2,12($fp)
	lbu	$3,8($fp)
	lbu	$2,12($fp)
	nop
	or	$2,$3,$2
	sll	$2,$2,24
	sra	$2,$2,24
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	bitwise_or
	.size	bitwise_or, .-bitwise_or
	.ident	"GCC: (GNU) 4.8.2"
