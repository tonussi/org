.text
.globl main
main:
  beq $t0, $zero, cont
	add $t3, $t2, $t1
	move $t1, $t2
	move $t2, $t3
	addi $t0, $t0, -1
cont:
  sw $t1,8($s1)