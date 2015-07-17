.text
.globl main

main:

  addi $t1, $0, 0x10000000
  addi $s4, $0, 0x10000002
  sw $s4, 0($t1)
  lb $s5, 4($t1)
