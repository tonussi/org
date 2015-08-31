positive:
  addiu  $sp, $sp, -24    # abre espaço na pilha
  sw  $31, 20($sp)        # salva ra
  sw  $fp, 16($sp)        # salva fp
  move  $fp, $sp          # fp recebe sp
  sw  $4, 24($fp)         # salva a0
  sw  $5, 28($fp)         # salva a1

  lw  $4, 24($fp)         # carrega a0
  lw  $5, 28($fp)         # carrega a1
	addu $2, $4, $5         # addit reduzido à uma instrução.
  nop                     # antes eram 14 instruções

  blez  $2, L2            # se o resultado em v0 (retornado por addit(a, b)
  nop                     # for menor ou igual zero então vai para L2

  li  $2, 1               # carrega 0x1 em $v0 por causa do return 1;
  j  $L3                  # pula para saida (ou melhor L3)
  nop

L2:
  move  $2, $0
L3:
  move  $sp, $fp          # sp recebe fp (dinovo, poderia ser usado apenas sp)
  lw  $31, 20($sp)        # restaura $ra
  lw  $fp, 16($sp)        # restura $fp
  addiu  $sp, $sp, 24     # restaura o ponteiro da pilha ("pop itens")
  jr  $31                 # volta para rotina chamadora
  nop
