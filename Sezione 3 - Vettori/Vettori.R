# VETTORI

# numeri e stringhe in R sono sempre vettori (di lunghezza 1)
# i vettori contengono un solo tipo di oggetti (numeri oppure stringhe)

# Creare un vettore (numerico)
Vettore <- c(3, 45, 56, 732)

Vettore
# [1]   3  45  56 73
# quando stampi il vettore ti dice la posizione nel vettore del primo elemento
# stampato alla riga della console

# is è l'oggetto per la comparazione dei tipo
is.numeric(Vettore)
is.integer(Vettore)
is.double(Vettore)
# R immagazzina tutti i numeri direttamente come double per semplicità

VettoreInt <- c(3L, 45L, 56L, 732L)
is.integer(VettoreInt)
# questo vettore ha tutti integer e risulta integer

VettoreChr <- c("a", 'B3332', 'Ciao', 7)
VettoreChr
is.character(VettoreChr)
is.numeric(VettoreChr)

# is.numeric vede se integer o double!
# l'ultimo numero viene sempre convertito in testo

# SEQUENCE
# crea un vettore di numeri (come l'operatore ":")
# gli estremi sono entrambi INCLUSI
seq(1,15)
1:15

# con sequence si può indicare lo step

seq(1,30,2)

# gli step ritornati sono sempre interni agli estremi

# REPLICATE
# replica un vettore un numero di volte indicato

rep(3,40)
rep("a", 20)
rep(Vettore, 3)

# pu� replicare character, vettori e altro