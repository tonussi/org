.text
.globl main

main:

addi $t2, $zero, 0x00FFA5A5

xori $t0, $t2, 0xffffffff  # porem se atrabalha com nros em c2
addi $t0, $t0, 0x00000001  # inversao de bits (1 instrucao)

nor $t3, $t2, $zero        # mesma coisa (1 instrucao)

not $t1, $t2               # pseudo instrucao que utiliza nor provavelmente
