.text
.globl main

main:
  addi $s1, $s1, 4    # g recebe 4
  addi $s0, $s0, 20   # f recebe 20
  addi $t0, $t0, 4    # esse valor vai para pilha $gp+4
  add $s6, $s6, $gp   # array A recebe endereco
  sb $t0, 4($s6)      # guarda no byte menos signif de $gp+4
  lb $a0, 4($s6)      # carrega em a0 para enviar para flip
  jal flip            # pula no flip
  addi $t1, $v0, 0    # (na volta) guarda o retorno da subrotina flip temporariamente
  sub $s0, $s0, $s1   # faz f = - g - A[4] porem na seguinte forma => f = A[4] - g
  j exit

flip:
  xori $v0, $a0, -1   # inverte sinal soma -1
  addi $v0, $v0, 1    # soma 1 para voltar ao valor original
  jr $ra              # volta ao caller (e faz pc+4)

exit:
