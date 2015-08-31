fact:
  addiu  $sp,$sp,-24 # aqui o mips-gcc salva mais
  sw  $31,20($sp)    # do que o normal na página 117
  sw  $fp,16($sp)    # mas o mínimo que deve ser salvo
  move  $fp,$sp      # é $ra = $31 e também $4 = $a0
  sw  $4,24($fp)     # e também $a0 pois precisamos de
  lw  $2,24($fp)     # do rastro de n-1 n-2 n-3 que o
  nop                # fact deixa para trás (função recurssiva)

  bgtz  $2,$L2       # beq $2, $zero, L2
  nop                # se for mais que 0 vai para L2

  li  $2,1           # caso-contrario carrega o valor
  j  $L3             # 0x00000001 em $v0 para retornar
  nop                # e pula para L3

$L2:
  lw  $2,24($fp)     # $v0 <- $a0 (n>1 {2,3,4,5,....})
  nop                #
  addiu  $2,$2,-1    # $v0 -= 1 para colocar em fact()
  move  $4,$2        # pela convenção você envia por $a0
  jal  fact          # chama fact antes de multiplicar por * n
  nop                #

  move  $3,$2        # $v1 recebe $v0 (n antigo)
  lw  $2,24($fp)     # carrega $v0 (n novo) da chamada fact(n-1)
  nop                #
  mult  $3,$2        # multiplica n * fact (n - 1)
  mflo  $2           #
$L3:
  move  $sp,$fp      # caso n <= 1 por causa do if
  lw  $31,20($sp)    # dessa função recurssiva cairá
  lw  $fp,16($sp)    # aqui restaurara o necessário
  addiu  $sp,$sp,24  # e garantira que o $sp e $fp
  jr  $31            # estarão preservados através
  nop                # de todas as chamadas de fact(n)
