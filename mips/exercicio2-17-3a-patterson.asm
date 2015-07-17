.text
.globl main
main:
loop:
  beq $t2, $0, done
  addi $t2, $t2, -1
  j loop
done:
