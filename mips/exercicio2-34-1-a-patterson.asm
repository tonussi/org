.text

.globl main

main:

  addi $s1, $0, 0xffffffff
  addi $s2, $0, 0xffffffff

  # 2.34.1.a)
  # ADD r0, r1, r2
  add  $s0, $s1, $s2
  # ADC r0, r1, r2
  add  $s3, $s1, $s2

  jal  tratamento

  bne  $v0, $0, adc

tratamento:

  addi $sp, $sp, -4
  sw   $ra, 0($sp)

  slt  $t0, $s1, $0  # a < 0
  slt  $t1, $s2, $0  # b < 0
  and  $t1, $t0, $t1 # a < 0 && b < 0
  slt  $t0, $0, $s3  # 0 < c (=> c >= 0)
  and  $t2, $t0, $t1 # a < 0 && b < 0 && 0 < c

  slti $t0, $s1, 1   # a < 1 ou seja a <= 0 (=> a > 0)
  slti $t1, $s2, 1   # b < 1 ou seja b <= 0 (=> b > 0)
  and  $t1, $t0, $t1 # a < 1 && b < 1 (=> a > 0 && a > 0)
  slt  $t0, $s3, $0  # c < 0 (=> 0 >= c)
  and  $t1, $t0, $t1 # a < 1 && b < 1 && c < 0

  or   $v0, $t1, $t2 # a < 0 && b < 0 && 0 < c || (a < 1 && b < 1 && c < 0)

  lw   $ra, 0($sp)
  addi $sp, $sp, 4

  jr   $ra


adc:

  addi $sp, $sp, -8
  sw   $ra, 0($sp)
  sw   $s4, 4($sp)

  add  $s4, $s3, $v0

  add  $v0, $0, $s4

  lw   $s4, 4($sp)
  lw   $ra, 0($sp)
  addi $sp, $sp, 8

  j    print

print:

  addi $a0, $v0, 0


  # 2.34.1.b)
  # CMP r0, #4
  # ADDNE r1, r1, r0
