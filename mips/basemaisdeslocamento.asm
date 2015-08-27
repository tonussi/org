.text
.globl main

main:

addi $t0, $0, 0xAA
la $s0, 0x10010024
sb $t0, -0x21($s0)
sb $t0, -0x22($s0)
sb $t0, -0x23($s0)
sb $t0, -0x24($s0)
