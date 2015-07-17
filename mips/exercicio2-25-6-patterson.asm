.text

.globl main

main:

  lui $t0, 0x1234
  addi $t0, $t0, 0x5678

  lui $t1, 0x1234
  andi $t1, $t1, 0x5678
