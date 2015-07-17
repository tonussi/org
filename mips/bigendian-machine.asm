.text
.globl main

main:
	addi $t1, $t0, 0x10000000
  addi $t2, $t0, 0x10000010
  addi $t4, $t0, 0x12345678
  sw $t4, 0($t1)

  lb $t0, 0($t1)
  sh $t0, 0($t2)
