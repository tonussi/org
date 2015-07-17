.text

.globl main

main:

  #....code...

  jal leaf
  nop

  #...code...

  j exit

leaf:

  addi $sp, $sp, -4
  sw   $ra, 0($sp)

  #...code...

  lw   $ra, 0($sp)
  addi $sp, $sp, 4

  jr $ra

exit:
