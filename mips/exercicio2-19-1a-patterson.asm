# Exercise 2.19
#   For the following problems, the table holds C code functions.
#   Assume that the first function listed in the table is called
#   first. You will be asked to translate these C code routines
#   into MIPS assembly.

# int fib(int n) {
#   if (n==0)
#     return 0;
#   else if (n == 1)
#     return 1;
#   else
#     fib(n-1) + fib(n–2);

# 2.19.1 [15] <2.8> Implement the C code in the table
# in MIPS assembly. What is the total number of MIPS
# instructions needed to execute the function?

.text
.globl main

main:

  addi $a0, $zero, 5
  jal fib

  # c..

  j exit

fib:

	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $a0, 0($sp)

	beq $0, $a0, exit

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

	addi $v0, $0, 0
