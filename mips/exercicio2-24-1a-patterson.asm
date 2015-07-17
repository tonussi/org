.text
.globl main

main:
  addi $t1, $0, 0x10000000

  addi $s3, $0, 0x12
  addi $s2, $0, 0x34
  addi $s1, $0, 0x56
  addi $s0, $0, 0x78

  sb $s0, 0($t1)
  addi $t1, $t1, 1
  sb $s1, 0($t1)
  addi $t1, $t1, 1
  sb $s2, 0($t1)
  addi $t1, $t1, 1
  sb $s3, 0($t1)

  addi $t1, $0, 0x10000000
  addi $t2, $0, 0x10000010

  lb $t0, 0($t1)
  sw $t0, 0($t2)
