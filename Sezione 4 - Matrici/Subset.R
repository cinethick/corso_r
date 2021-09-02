# Subsets

x <- c('a', 'b', 'c', 'd', 'e')
x
x[c(1,5)] # si inserisce un vettore con gli indici degli elementi richiesti
x[1]

Games
Games[1:3, 6:10] # per una matrice si possono inserire due vettori
Games[4, 7:10]
Games[4, 7:10, drop=FALSE] # drop = FALSE evita che scarti i nomi delle dimensioni

Games[c(1,10),]
Games[,c('2008', '2009')] # si possono usare i nomi di righe e colonne

is.matrix(Games[1,]) # FALSE
is.vector(Games[1,]) # TRUE
is.matrix(Games[1,, drop=F]) # TRUE in questo caso mantiene le dimensioni e rimane una matrice
