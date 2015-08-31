	.file	1 "leaf_example.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.text
	.align	2
	.globl	leaf_example
	.set	nomips16
	.ent	leaf_example
	.type	leaf_example, @function
leaf_example:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	sw	$5,20($fp)
	sw	$6,24($fp)
	sw	$7,28($fp)
	lw	$3,16($fp)
	lw	$2,20($fp)
	nop
	subu	$3,$3,$2
	lw	$4,24($fp)
	lw	$2,28($fp)
	nop
	subu	$2,$4,$2
	addu	$2,$3,$2
	sw	$2,0($fp)
	lw	$2,0($fp)
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	leaf_example
	.size	leaf_example, .-leaf_example
	.ident	"GCC: (GNU) 4.8.2"
