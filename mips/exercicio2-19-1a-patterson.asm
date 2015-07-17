.text
.globl main

main:

  #  int fib (int n)
  #    if (n == 0) return 0;
  #    elif (n == 1) return 1;
  #    else return fib(n - 1) + fib(n - 2);

  addi $a0, $zero, 8
  jal fib

  # c..

  j exit

fib:

	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $a0, 0($sp)

  slti $t0, $a0, 1
  beq $t0, $zero, L1

  addi $v0, $zero, 1
  addi $sp, $sp, 8
  jr $ra

L1:

  add $a0, $v0, $0

  add $a0, $a0, -1
  jal fib

  lw $a0, 0($sp)
  sw $v0, 0($sp)

  addi $a0, $a0, -2
  jal fib

  lw $t2, 0($sp)
  add $v0, $v0, $t2

  lw $a0, 0($sp)
  lw $ra, 4($sp)
  addi $sp, $sp, 8

  jr $ra

exit: