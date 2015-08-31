fib:
  # Memory Layout
  # [ 00 ] [ 01 ][ 02 ][ 03 ] -> espaço usado por fib: nesse exemplo
  # [ 04 ] [ 05 ][ 06 ][ 07 ] -> espaço usado por fib: nesse exemplo
  # [ 08 ] [ 09 ][ 10 ][ 11 ] -> espaço usado por fib: nesse exemplo
  # [ 12 ] [ 13 ][ 14 ][ 15 ] -> espaço usado por fib: nesse exemplo
  # [ 16 ] [ 17 ][ 18 ][ 19 ] -> espaço usado por fib: nesse exemplo
  # [ 20 ] [ 21 ][ 22 ][ 23 ] -> espaço usado por fib: nesse exemplo
  # [ 24 ] [ 25 ][ 26 ][ 27 ] -> espaço usado por fib: nesse exemplo
  # [ 28 ] [ 29 ][ 30 ][ 31 ] -> espaço usado por fib: nesse exemplo
  # [ 32 ] [ 33 ][ 34 ][ 35 ]
  addiu   $sp, $sp, -32 # abre espaço para salvar
  sw      $31, 28($sp)  # salva $ra para o retorno
  sw      $fp, 24($sp)  # salva $fp, poderia trabalhar apenas com $sp
  sw      $16, 20($sp)  # salva também $s0 == $16 (preservado através da chamada)
  move    $fp, $sp      # $fp recebe $sp (você poderia trabalhar apenas com $sp)
  sw      $4, 32($fp)   # salva $a0 em 32($fp)

  lw      $2, 32($fp)   # $v0 recebe $a0
  nop
  bne     $2, $0, L2    # se $a0 (em $v0) != $zero vai para L2 (onde tem outro teste)
  nop

  move    $2, $0        # carrega 0x0 para o primeiro retorno
  j       L3            # vai para L3 para restaurar contexto e retornar ao chamador
  nop

L2:

  lw      $3, 32($fp)   # carrega em $v0 o valor de $a0
  li      $2, 1         # carrega 1 em $v0
  bne     $3, $2, L4    # testa se $a0 (em $v0) se $v0 != 0x1 vai para L4
  nop

  li      $2, 1         # carrega 0x1 para o segundo retorno
  j       L3            # vai para L3 para restaurar contexto e retornar ao chamador
  nop

L4:
                           # aqui dentro temos a realização da chamada recursiva
  lw      $2, 32($fp)   # carrega $a0 em $v0
  nop
  addiu   $2, $2, -1    # faz n - 1 para a chamar fib(n-1)
  move    $4, $2        # move $v0 para $a0 (para enviar na chamada, convensão)
  jal     fib           # chamada recursivamente fib
  nop
                           # aqui temos o uso extra de $s0
												   # (que precisa ser restaurado ao final)
  move    $16, $2       # move $v0 para $s0
  lw      $2, 32($fp)   # carrega o valor de $a0 salvo no local 32($fp) em $v0
	                         # a cada chamada recursiva a pilha vai abrindo novas 8 posições
												   # para novos dados, mas aqui pegamos sempre o n da vez para fazer
													 # corretamente fib(n-1) + fib(n-2);
  nop
  addiu   $2, $2, -2    # faz n - 2 para a chamar fib(n-2)
  move    $4, $2        # move $v0 para $a0 (para enviar na chamada, convensão)
  jal     fib           # chamada recursivamente fib
  nop

  addu    $2, $16, $2   # soma ambos fib(n-1) + fib(n-2)
	                         # $v0 recebe $s0 + $v0 (v0 agora contém o resultado de fib(n-2)
L3:
  move    $sp, $fp
  lw      $31, 28($sp)  # restaura $ra
  lw      $fp, 24($sp)  # restaura $fp
  lw      $16, 20($sp)  # restaura $s0
  addiu   $sp, $sp, 32  # ajusta a pilha finalmente
  jr      $31           # retorna ao chamador
  nop
