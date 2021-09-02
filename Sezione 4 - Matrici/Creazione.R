# Creare le Matrici

# La funzione rm elimina dalla memoria una variabile
?rm()

# la funzione base per creare una matrice è 
?matrix()
# accetta un vettore mono dimensionale che divide in righe e colonne

# la funzione rbind usa vettori come righe della matrice
?rbind()

# la funzione cbind usa vettori come colonne della matrice
?cbind()

# colnames associa un vettore di characters ad una matrice per i nomi delle colonne
# si associa come una variabile
# colnames(Matrice) <- nomiColonne

# rownames funziona uguale ma per le righe
# rownamnes(Matrice) <- nomiRighe

dati <- 1:20

A <- matrix(dati, 4,5) 
A
# la matrice è popolata per colonna
# se il vettore è troppo corto lo ripete, altrimenti lo taglia

A[2,3]
A[2,]
A[,3]

A <- matrix(dati, 4,5, byrow=TRUE) 
A
A[2,5]

r1 <- c("questa", "è", "una", "riga")
r2 <- 1:4
r2
r3 <- rep("A",4)
r3

B <- rbind(r1, r2, r3)
B

C <- cbind(r1, r2, r3)
C[4,'r1'] <- "colonna"
C

# I nomi delle colonne e delle righe negli indici
# devono essere usati con gli apici (altrimenti collidono con le variabili)

# names è una funzione per assegnare e vedere i nomi di un vettore
vettore <- 1:5
vettore
names(vettore)
names(vettore) <- c('a', 'b', 'c', 'd', 'e')
names(vettore)
vettore[3]

# i nomi vengono incollati agli elementi del vettore (come se fosse un 2d)
vettore
vettore['a']
names(vettore) <- NULL
names(vettore)

vettore_temp <- c('a', 'B', 'zZ')
matrice_temp <- matrix(vettore_temp, 3, 3, TRUE)
matrice_temp

rownames(matrice_temp) <- c('r1', 'r2', 'r3')
colnames(matrice_temp) <- c('x', 'y', 'z')

matrice_temp
matrice_temp[2,2] <- 0
matrice_temp['r2','y'] <-1
