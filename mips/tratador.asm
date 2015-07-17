.text

.globl main

main:

.ktext 0x80000180
  move $k1, $at      # permitir pseudo-instr
  sw $a0, save0      # salva o contexto
  sw $a1, save1      #
  mfc0 $k0, $13      # read cause
  srl $a0, $k0, 2    # extract excode
  andi $a0, $a0, 0xf #
  beqz $a0, done     # branch se interromper
  move $a0, $k0      # cause como parametro
  mfc0 $a1, $14      # epc como parametro
  jal print_exp      # print error msg

print_exp:

done:
  mfc0 $k0, $14      # read epc
  addiu $k0, $k0, 4  # point to next
  mtc0 $k0, $14      # update epc
  mtc0 $0, $13       # clear cause
  mtc0 $k0, $12      # read status
  ori $k0, $k0, 0x1  # set ie bit
  mtc0 $k0, $12      # update status
  lw $a0, save0      # restaura contexto
  lw $a1, save1      #
  move $at, $k1      #
  eret               # clear exl & return

.kdata
  save0: .word 0     # space for saving
  save1: .word 0     # user registers