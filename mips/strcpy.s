	.file	1 "strcpy.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.text
	.align	2
	.globl	strcp
	.set	nomips16
	.ent	strcp
	.type	strcp, @function
strcp:
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
	sw	$0,0($fp)
	j	$L2
	nop

$L3:
	lw	$2,0($fp)
	nop
	addiu	$2,$2,1
	sw	$2,0($fp)
$L2:
	lw	$2,0($fp)
	lw	$3,16($fp)
	nop
	addu	$2,$3,$2
	lw	$3,0($fp)
	lw	$4,20($fp)
	nop
	addu	$3,$4,$3
	lb	$3,0($3)
	nop
	sb	$3,0($2)
	lb	$2,0($2)
	nop
	bne	$2,$0,$L3
	nop

	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	strcp
	.size	strcp, .-strcp
	.ident	"GCC: (GNU) 4.8.2"
