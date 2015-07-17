.text

.globl main

main:

  # add  $s3, $0, $s4
  # ll   $s2, 0($s2)
  # addi $s2, $s2, 1
  # sc   $s3, 0($s1)
  # beq  $s3, $0, try
  # add  $s4, $0, $s2
  
  lui $s1, 0x1001

try:

  add  $s3, $0, $s4 # s3 recebe s4 (alguma logica xyz)
  ll   $s2, 0($s1)  # carrega M[$s1+0]
  addi $s2, $s2, 1  # incrementa s2
  sc   $s2, 0($s1)  # testa se 0($s1) contem alguem atomico
  beq  $s2, $0, try # s3 == 0 ? (try again) because 0 means (not atomic)
  add  $s4, $0, $s2 # s4 recebe 1 pois s2 atomico (alguma logica wpk)
