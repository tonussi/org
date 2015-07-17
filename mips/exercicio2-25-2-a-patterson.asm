.text
.globl main

main:

  jal LA
  j EXIT

LA:

  addi $ra, $0, 0x20014925
  sll $ra, $ra, 2
  #addi $sp, $sp, -4
  #sw $ra, 0($sp)

  #...

  #lw $ra, 0($sp)
  #addi $sp, $sp, 4

  jr $ra


EXIT:
