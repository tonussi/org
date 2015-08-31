f:
  addiu  $sp, $sp, -0x14 # abre espaço na pilha
  sw     $31, 0x14 ($sp) # preserva o conteúdo de: ra
  sw     $4,  0x10 ($fp) # preserva o conteúdo de: a
  sw     $5,  0xC  ($fp) # preserva o conteúdo de: b
  sw     $6,  0x8  ($fp) # preserva o conteúdo de: c
  sw     $7,  0x4  ($fp) # preserva o conteúdo de: d

  lw  $4, 0x10 ($sp)     # carrega a0 com $a0
  lw  $5, 0xC  ($sp)     # carrega a1 com $a1
  jal func               # func mais interno func(a, b)
  nop

  move  $3, $2           # v1 recebe v0 (retorno do 1ro func(a,b))
  lw    $4, 0x8 ($fp)    # a0 recebe $a2 (int c, preservado na pilha)
  lw    $2, 0x4 ($fp)    # v0 recebe $a3 (int d, preservado na pilha)
  nop
  addu  $2, $4, $2       # v0 recebe c + d
  move  $4, $3           # mover $v1 para $a0 (primeiro parâmetro de func)
  move  $5, $2           # mover $v0 para $a1 (segundo parâmetro de func)
  jal   func             # salta para func novamente
  nop

  lw     $31, 0x14 ($sp) # restaura ra
  addiu  $sp, $sp, 0x14  # ajusta altura pilha
  jr     $31             # retorna a rotina chamadora
  nop
