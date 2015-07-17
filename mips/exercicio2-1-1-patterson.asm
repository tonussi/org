.text
.globl main

main:

addi $t2, $t2, 10
xori $t2, $t2, -1
addi $t2, $t2, 1

#test sec 1
addi $a0, $a0, 0x10
addi $a1, $a1, 0x23
jal test

#test sec 2
addi $a0, $a0, 0x14
addi $a1, $a1, 0x25
jal test
j exit

test:
sub $v0, $a0 , $a1
jr $ra

exit:
