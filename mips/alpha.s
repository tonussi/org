alpha:
  addiu $sp, $sp, -24  # abre espaço na pilha
  sw    $31, 20($sp)   # salva $ra
  sw    $fp, 16($sp)   # salva $fp
  move  $fp, $sp       # usa $fp como se fosse $sp
  sw    $4, 24($fp)    # salva a0     x     o compilador joga a[0-3] na pila
  sw    $5, 28($fp)    # salva a1     y     para poder usar eles dentro do programa
  sw    $6, 32($fp)    # salva a2     z     e não para preservar eles durante a chamada
  lw    $2, 24($fp)    # v0 recebe a0 (x) para testar no primeiro if
  nop
  bne   $2, $0, L2     # if $v0 != $zero pula para L2
  nop                  # lembrar que $v0 recebeu $a0
                          # eu sei que dá para eliminar esses
                          # passos intermediários, mas o compilador
                          # gera código automatizado
                          # caso-contrario pega $a2 (y)
                          # e também $a3 (z)
  lw    $3, 32($fp)    # v1 recebe a2 (z)
  lw    $2, 28($fp)    # v0 recebe a1 (y)
  nop
  subu  $2, $3, $2     # $v0 = $v0 - $v1, isto é calcular (z - y) para beta()
  move  $4, $2         # $a0 recebe $v0, para enviar à beta (convenção)
  jal   beta           # beta calcula usando $a0 que contém z - y e volta
  nop                  # a0 não vai ser preservado! atravéz
                          # esse é um bom motivo para salvar $a0 no inicio
                          # da chamada, por isso se beta sujar a0
                          # então você perdeu a0 ...
  move  $3, $2         # $v1 recebe $v0
  lw    $2, 24($fp)    # $v0 recebe $a0 (que é x)
  nop
  addu  $2, $3, $2     # finalmente calcula x + beta(z - y)
  j     L1             # pula para L1 (que é a saída)
  nop

L2:
  lw    $3, 24($fp)    # pega o valor de $a0 salvado na pilha
  li    $2, 1          # carrega 0x1 em $2
  bne   $3, $2, L4     # caso x != 1 pula para L4

  lw    $3, 32($fp)    # carrega o valor de $a0 (z)
  lw    $2, 24($fp)    # carrega o valor de $a3 (x)
  nop
  subu  $2, $3, $2     # novamente mas agora é z - x
  move  $4, $2         # $a0 recebe $v0 com o resultado de z - x
  jal   beta           # pula para beta com a0 novo int beta(int);
  nop

  lw    $3, 24($fp)    # $v1 recebe $a0 (x salvo anteriormente,
  nop                  # pois beta não garante a0, a1, a2, ou a3)
  subu  $2, $3, $2     # finalmente faz x - beta(z - x)
  j     L1             # pula para L1 (que é a saída)
  nop

L4:
                          # L4 por sua vez não faz nada
                          # naturalmente ele caíra em L1
                          # L1 por sua vez é a saída do
                          # programa função int alpha(int x,int z,int y);
L1:
  move  $sp, $fp       # no livro do patterson ele simplifica o uso de $fp, $sp
  lw    $31, 20($sp)   # jogando toda a responsabilidade para $sp, mas o compilador
                          # restaura também o $ra para poder voltar ao chamador
                          # e também porque ele é garantidamente preservado
  lw    $fp, 16($sp)   # trabalha com $fp
  addiu $sp, $sp, 24   # veja que ele não preserva os $a0, $a1, $a2, $a3
  jr    $31            # volta para o chamador
  nop
