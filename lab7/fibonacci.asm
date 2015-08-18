.data
.globl argumento
argumento: .word 0
anterior: .word 0
resultado: .word 0

.text
.globl main
main: 	la $s1,argumento  # - Coloca o endereço de "argumento" em $s1
	sw $zero,0($s1)   # - Zera as variáveis no início do programa.
	sw $zero,4($s1)
	move $t2,$zero
	lui $s0,0xffff    # - Seta $s0 com o endereço base dos registradores de MMIO
	# Completar: Habilite as interrupções para entradas de teclado ------------------

lw $t2, 0($s0)
ori $t2, $t2, 0x2
sw $t2, 0($s0)

	# -------------------------------------------------------------------------------
	addi $a0,$zero,0x49 # / Estas 4 instruções são utilizadas para escrever um "I"
	jal putc            # | na saída (display) indicando o início da execução do
	addi $a0,$zero,0x0A # | programa.
	jal putc            # \
mloop:	nop
	nop	          # - Vários nops foram utilizados para crescer o laço principal.
	nop               #   Nessa parte, o programa poderia fazer algum outro trabalho útil,
	nop               #   se isso fosse importante ou necessário.
	nop
	lw $t0,0($s1)      # - Lê argumento atual
	lw $t1,4($s1)      # - Lê argumento anterior
	beq $t1,$t0,mloop  # - Se o atual for diferente do anterior (argumento mudou
	sw $t0,4($s1)      #   em função de I/O), calcula o número da série de Fibonacci
	addi $t1,$zero,0
	addi $t2,$zero,1
loop:	beq $t0,$zero,cont # - Neste loop, o número da série de Fibonacci é calculado
	add $t3,$t2,$t1
	move $t1,$t2
	move $t2,$t3
	addi $t0,$t0,-1
	j loop
cont:	sw $t1,8($s1)    # - Grava o resultado na posição resultado de memória
        # As próximas instruções são destinadas à impressão do valor calculado no display.
	move $s6,$t1
	ori $a0,$zero,0x30 # / - 4 instruções utilizadas para imprimir "0x" no display
	jal putc           # | indicando que o valor que será impresso está em hexadecimal
	ori $a0,$zero,0x78 # |
	jal putc	   # \
	addi $s7,$zero,28    # / - Instruções utilizadas para imprimir, no display, o
loop2:	srlv $a0,$s6,$s7     # | resultado obtido a partir do cálculo do número da série
	andi $a0,$a0,0x000F  # | de Fibonacci. A impressão é feita em hexadecimal e, por isso,
	slti $t0,$a0,10      # | o valor gravado no registrador é separado em grupos de 4 bits,
	bne $t0,$zero,pula   # | realizando a impressão do símbolo correspondente ao valor de
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
	sw $a0,0x0C($a1)   # | no dispositivo de saída (display) usando a MMIO. O procedimento,
wait:	lw $a0,8($a1)      # | além de realizar a impressão gravando o código ASCCII na posição
	beq $a0,$zero,wait # | de memória apropriada, também testa o bit que indica que o caractere
	jr $ra             # \ foi efetivamente impresso no display.
