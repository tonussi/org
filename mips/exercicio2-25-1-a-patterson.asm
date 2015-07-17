.text
.globl main

main:

  # minimo de instruc para
  # carregar um registrador
  # com um nro maior que a
  # faixa de representacao
  lui $t1, 0x2001
  ori $t1, $t1, 0x4924

  # adicionando immed nros
  # maiores que a faixa
  # de representacao
  addiu $t1, $0, 0x20014924
