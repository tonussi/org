.text
.globl main

main:

addi $t3, $zero, 0xFFFF003C
addi $t2, $zero, 0x00FFA5A5

not $s0, $t3
nor $s1, $t3, $zero

nor $t3, $t3, $zero
or $t1, $t2, $t3

#orn $t1, $t2, $t3
