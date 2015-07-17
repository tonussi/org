.text
.globl main

main:
  addi $a0, $0, -0x5
  addi $a1, $0, 0x4

  jal  positive
  # c..

  j exit

positive:
  addi $sp, $sp, -4
  sw $ra, 0($sp)

  jal addit

  lw $ra, 0($sp)
  addi $sp, $sp, 4

  add $t0, $v0, $zero
  slt $t1, $0, $t0 # 0 < addit(a, b)
  beq $t1, $0, addit_retorna_negativo # t1==0 entao 0 > addit(a, b)
  addi $v0, $0, 1 # t1==1 entao 0 < addit(a, b)
  jr $ra

addit_retorna_negativo:
  addi $v0, $0, 0 # t1==1
  jr $ra

addit:
  add $v0, $a0, $a1
  jr $ra

exit:
