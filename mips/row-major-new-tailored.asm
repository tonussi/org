.data
	vetor: .word 2:9999		# Cria a matriz na memória com todos os seus elementos iguais a "2"

.text

	ori $s6,$zero,9999	# $s6 = número total de linhas
	ori $s7,$zero,9999	# $s7 = número total de colunas
	la $s0,vetor		# $s0 = endereço base do vetor
	move $t0,$zero		# $t0 = contador de linhas (variável "row" do código de alto nível)
	move $t1,$zero		# $t1 = contador de colunas (variável "col" do código de alto nível)
	move $s1,$zero		# $s1 = resultado da soma

loop:
	mul $t2, $t0, $s7	# $t2 = row * (número de colunas)
	add $t2, $t2, $t1	# $t2 = row * (número de colunas) + col
	sll $t2, $t2, 2		# $t2 é multiplicado por 4
	add $t2, $t2, $s0	# soma o endereço base do vetor a $t2
	lw $t3, 0($t2)		# lê um elemento da matriz a partir da memória
	add $s1, $s1, $t3	# soma valor da matriz ao acumulador de soma
	addi $t1,$t1,1		# col++
	bne $t1,$s7,loop	# se não chegou à última coluna, pula para o loop
	move $t1,$zero		# col = 0
	addi $t0,$t0,1		# row++
	bne $t0,$s6,loop	# se não chegou à última linha, pula para o loop
	# intruções para finalizar o programa:
	li $v0, 10
	syscall
