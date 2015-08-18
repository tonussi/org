# Exception Handler
# Interrupt: Excode = 0
# Overflow: ExCode = 12
# Status  $12
# Cause   $13
# EPC     $14

.kdata 0x90000000
# Espaço para salvamento de contexto:
save: .word 0,0,0,0

# Espaço para salvamento do valor que está sendo digitado:
_temp: .word 0


.ktext 0x80000180	# Reloca o tratador para residir no endereço emitido pelo HW
# Etapa 1: Salvamento de contexto em memória (pilha não pode ser usada)
lui $k0,0x9000
sw $ra,0($k0)
sw $at,4($k0)
sw $t0,8($k0)
sw $t1,12($k0)

# Etapa 2: Decodificação do registrador Cause
# Completar: Isole o ExcCode do registrador Cause para identificar a exceção (armazenar em $k0) ---

mfc0 $k1, $13
srl $t0, $k1, 0x2
andi $t0, $t0, 0xf

# -------------------------------------------------------------------------------------------------

# Etapa 3: Leitura de caracteres em caso de interrupção
# Completar: Se o código for o de uma interrupção, chame o precedimento "lechar" e pule ----
#            para "done". Senão, pule para "_continua". ------------------------------------

bne $t0, $zero, _continua
jal lechar
j done

# ------------------------------------------------------------------------------------------

# Etapa 4: Tratamento de overflow, se for o caso
# Completar: Se o código for de overflow, o tratador deve, ao final de sua execução, -------
#            reiniciar o programa. Faço o teste apropriado e mude o registrador necessário -
#            para que o programa seja reiniciado apenas ao final do tratamento da exceção.--
_continua:

add $t1, $zero, 12
bne $t0, $t1, done

la $t1, main
mtc0 $t1, $14

# ------------------------------------------------------------------------------------------

# Etapa 5: Preparacao do sistema para novas excecoes
# Completar: Limpe o registrador Cause e habilite novas exceções no registrador Status -----
done:

mfc0 $k0, $14
addiu $k0, $k0, 4
mtc0 $k0, $14
mtc0 $0, $13
mfc0 $k0, $12
ori $k0, $k0, 0x1
mtc0 $k0, $12

# ------------------------------------------------------------------------------------------

# Etapa 6: Restauracao de contexto
lui $k0,0x9000
lw $ra,0($k0)
lw $at,4($k0)
lw $t0,8($k0)
lw $t1,12($k0)

# Etapa 7: Retorno ao fluxo normal de execucao
eret              # retorna para o endereço indicado em EPC


# Função para leitura do caractere
lechar:	lui $k0,0xffff
	lw $k0,4($k0)	 # - Lê o valor digitado no teclado da memória
	li $k1,0x0A
	bne $k0,$k1,cont1
	la $t0,_temp     # - Se o valor for ENTER (ASCII 0xA), grava o valor previamente
	lw $k1,0($t0)    #   digitado na posição "argumento" de memória.
	sw $zero,0($t0)
	la $t0,argumento
	sw $k1,0($t0)
	j fim1
cont1:	addi $k0,$k0,-0x30  # Subtrai 0x30, convertendo ASCII para inteiro
	# Marca 1
	sltiu $k1,$k0,10
	beq $k1,$zero,erro1
	la $k1,_temp    # - Se o valor for numérico (de 0 a 9), lê o valor armazenado em
	lw $t0,0($k1)   #   "_temp", multiplica por 10, e soma ao valor digitado.
	li $t1,10       #   Isso é feito para "construir" o número a partir dos valores digitados.
	mul $t0,$t0,$t1
	add $t0,$t0,$k0
	sw $t0,0($k1)
	# Marca 2
	addi $k0,$k0,0x30
	j fim1
erro1:  la $k1,_temp     # - Em caso de erro (digitação de letras por exemplo) prepara "e"
	sw $zero,0($k1)  #   para ser impresso no display.
	li $k0,0x65
fim1:	lui $k1,0xffff
	sw $k0,12($k1)   # - Imprime algo no display e retorna
	jr $ra
