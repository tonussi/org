.data
  my_global: .word 100
.text
.globl main
main:
  la   $t0, my_global
  lw   $t1, 0($t0)
  addi $t1, $t1, 1 #100+1=101
  sw   $t1, 0($t0) #0($t0)=101
  addi $a0, $t1, 0 #a0=t1
  jal  leaf_funct
  addi $s3, $v0, 0
  j    exit
leaf_funct:
  #addi $sp, $sp, -4
  #sw   $ra, 0($sp)
  addi $v0, $a0, 1
  #lw   $ra, 0($sp)
  #addi $sp, $sp, 4
  jr   $ra
exit:
