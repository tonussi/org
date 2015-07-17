.data
  my_global: .word 100
.text
.globl main
main:
  addi $s0, $0, 10
  addi $s1, $0, 20
  addi $a0, $s0, 0
  addi $a1, $s1, 0
  jal  my_funct
  addi $s3, $v0, 0
  j    exit
my_funct:
  #addi $sp, $sp, -4
  #sw   $ra, 0($sp)
  sub  $v0, $a0, $a1
  la   $t0, my_global
  lw   $t1, 0($t0)
  add  $v0, $v0, $t1
  #lw   $ra, 0($sp)
  #addi $sp, $sp, 4
  jr   $ra
exit:
