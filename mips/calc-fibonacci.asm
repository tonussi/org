.data
.globl argumento
argumento: .word 0
anterior: .word 0
resultado: .word 0

.text
.globl main
main: 	la $s1,argumento  # - Coloca o endereo de "argumento" em $s1
	sw $zero,0($s1)   # - Zera as variveis no incio do programa.
	sw $zero,4($s1)
	move $t2,$zero
	lui $s0,0xffff    # - Seta $s0 com o endereo base dos registradores de MMIO
	# Completar: Habilite as interrupes para entradas de teclado ------------------


	# -------------------------------------------------------------------------------
	addi $a0,$zero,0x49 # / Estas 4 instrues so utilizadas para escrever um "I"
	jal putc            # | na sada (display) indicando o incio da execuo do
	addi $a0,$zero,0x0A # | programa.
	jal putc            # \
mloop:
  nop
	nop	               # - Vrios nops foram utilizados para crescer o lao principal.
	nop                #   Nessa parte, o programa poderia fazer algum outro trabalho til,
	nop                #   se isso fosse importante ou necessrio.
	nop
	lw $t0,0($s1)      # - L argumento atual
	lw $t1,4($s1)      # - L argumento anterior
	beq $t1,$t0,mloop  # - Se o atual for diferente do anterior (argumento mudou
	sw $t0,4($s1)      #   em funo de I/O), calcula o nmero da srie de Fibonacci
	addi $t1,$zero,0
	addi $t2,$zero,1
loop:	beq $t0,$zero,cont # - Neste loop, o nmero da srie de Fibonacci  calculado
	add $t3,$t2,$t1
	move $t1,$t2
	move $t2,$t3
	addi $t0,$t0,-1
	j loop
cont:	sw $t1,8($s1)    # - Grava o resultado na posio resultado de memria
                       # As proximas instrucoes so destinadas aa impressao do valor calculado no display.
	move $s6,$t1
	ori $a0,$zero,0x30 # / - 4 instrues utilizadas para imprimir "0x" no display
	jal putc           # | indicando que o valor que ser impresso esta em hexadecimal
	ori $a0,$zero,0x78 # |
	jal putc	         # \
	addi $s7,$zero,28    # / - Instrues utilizadas para imprimir, no display, o
loop2:	srlv $a0,$s6,$s7     # | resultado obtido a partir do clculo do nmero da srie
	andi $a0,$a0,0x000F  # | de Fibonacci. A impressao e feita em hexadecimal e, por isso,
	slti $t0,$a0,10      # | o valor gravado no registrador eh separado em grupos de 4 bits,
	bne $t0,$zero,pula   # | realizando a impresso do simbolo correspondente ao valor de
	addi $a0,$a0,7       # | cada grupo.
pula:	addi $a0,$a0,0x30    # |
	jal putc             # |
	addi $s7,$s7,-4      # |
	slt $t0,$s7,$zero    # |
	beq $t0,$zero,loop2  # |
	addi $a0,$zero,0x0A  # |
	jal putc             # \
	j mloop

putc:	lui $a1,0xffff	   # / O procedimento putc simplesmente imprime um caracter ASCII
	sw $a0,0x0C($a1)   # | no dispositivo de saida (display) usando a MMIO. O procedimento,
wait:	lw $a0,8($a1)      # | alm de realizar a impresso gravando o cdigo ASCCII na posio
	beq $a0,$zero,wait # | de memria apropriada, tambm testa o bit que indica que o caractere
	jr $ra             # \ foi efetivamente impresso no display.


