alpha:
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$fp,16($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	lw	$2,24($fp) # $2 == $v0
	nop
	bne	$2,$0,$L2 # $2 == $v0
	nop

	lw	$3,32($fp)
	lw	$2,28($fp) # $2 == $v0
	nop
	subu	$2,$3,$2 # $2 == $v0
	move	$4,$2 # $2 == $v0
	jal	beta
	nop

	move	$3,$2 # $2 == $v0
	lw	$2,24($fp) # $2 == $v0
	nop
	addu	$2,$3,$2 # $2 == $v0
	j	$L1
	nop
