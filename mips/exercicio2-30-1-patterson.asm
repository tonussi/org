.text

.globl main

main:

  #clear $t0
  addi $t0, $t0, 0xffffffff
  addi $t0, $0, 0

  addi $t2, $t2, 0x12345678
  beq $t1, $t2, LOOP

  addi $t5, $t0, 0x10010020
  addi $t0, $0, 0xffffffff
  sw $t0, 0($t5)
  addi $t5, $t0, 0x10010024
  sw $t0, 0($t5)
  bltu $s0, $t1, LOOP
  ulw  $s0, 0x10010020

LOOP:
v1:
v2:
v3:
v:
