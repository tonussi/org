# Exception Handler
# Interrupt: Excode = 0
# Overflow: ExCode = 12
# Status  $12
# Cause   $13
# EPC     $14

.kdata 0x90000000
# Espaco para salvamento de contexto:
save: .word 0,0,0,0

# Espaco para salvamento do valor que est sendo digitado:
_temp: .word 0

.ktext 0x80000180	# Reloca o tratador para residir no endereo emitido pelo HW
# Etapa 1: Salvamento de contexto em memria (pilha no pode ser usada)
lui $k0,0x9000
sw $ra,0($k0)
sw $at,4($k0)
sw $t0,8($k0)
sw $t1,12($k0)

# Etapa 2: Decodificao do registrador Cause
# Completar: Isole o ExcCode do registrador Cause para identificar a exceo (armazenar em $k0) ---

mfc0 $k0, $13 #Read Cause
srl $a0, $k0, 2 #Extract ExCode
andi $a0, $a0, 0xf

# -------------------------------------------------------------------------------------------------

# Etapa 3: Leitura de caracteres em caso de interrupcao
# Completar: Se o codigo for o de uma interrupcao, chame o precedimento "lechar" e pule ----
#            para "done". Senao, pule para "_continua". ------------------------------------

beqz $a0, done #Branch if interrupt
move $a0, $k0 #Cause as parameter
mfc0 $a1, $14 #EPC as parameter
jal fim1 #print error message

# ------------------------------------------------------------------------------------------

# Etapa 4: Tratamento de overflow, se for o caso
# Completar: Se o cdigo for de overflow, o tratador deve, ao final de sua execucao, -------
#            reiniciar o programa. Fao o teste apropriado e mude o registrador necessario -
#            para que o programa seja reiniciado apenas ao final do tratamento da excecao.--
_continua:


# ------------------------------------------------------------------------------------------

# Etapa 5: Preparacao do sistema para novas excecoes
# Completar: Limpe o registrador Cause e habilite novas excees no registrador Status -----
done:

mfc0 $k0, $14 #Read EPC
addiu $k0, $k0, 4 #Point to next
mtc0 $k0, $14 #Update EPC
mtc0 $0, $13 #Clear Cause
mfc0 $k0, $12 #Read Status
ori $k0, $k0, 0x1 #Set IE bit
mtc0 $k0, $12 #Update Status

# ------------------------------------------------------------------------------------------

# Etapa 6: Restauracao de contexto
lui $k0,0x9000
lw $ra,0($k0)
lw $at,4($k0)
lw $t0,8($k0)
lw $t1,12($k0)

# Etapa 7: Retorno ao fluxo normal de execucao
eret              # retorna para o endereo indicado em EPC


# Funo para leitura do caractere
lechar:	lui $k0,0xffff
	lw $k0,4($k0)	 # - L o valor digitado no teclado da memria
	li $k1,0x0A
	bne $k0,$k1,cont1
	la $t0,_temp     # - Se o valor for ENTER (ASCII 0xA), grava o valor previamente
	lw $k1,0($t0)    #   digitado na posio "argumento" de memria.
	sw $zero,0($t0)
	la $t0,argumento
	sw $k1,0($t0)
	j fim1
cont1:	addi $k0,$k0,-0x30  # Subtrai 0x30, convertendo ASCII para inteiro
	# Marca 1
	sltiu $k1,$k0,10
	beq $k1,$zero,erro1
	la $k1,_temp    # - Se o valor for numrico (de 0 a 9), l o valor armazenado em
	lw $t0,0($k1)   #   "_temp", multiplica por 10, e soma ao valor digitado.
	li $t1,10       #   Isso  feito para "construir" o nmero a partir dos valores digitados.
	mul $t0,$t0,$t1
	add $t0,$t0,$k0
	sw $t0,0($k1)
	# Marca 2
	addi $k0,$k0,0x30
	j fim1
erro1:  la $k1,_temp     # - Em caso de erro (digitao de letras por exemplo) prepara "e"
	sw $zero,0($k1)  #   para ser impresso no display.
	li $k0,0x65
fim1:	lui $k1,0xffff
	sw $k0,12($k1)   # - Imprime algo no display e retorna
	jr $ra
