# IF statement

#rm rimuove una variabile
rm(risposta)

#funzione rnorm crea una distribuzione normale
# il primo parametro è il numero di numeri che deve generare
x <- rnorm(1)

if (x > 1) {
  risposta <- "Maggiore di uno"
} else if(x >= -1) {
  risposta <- "Compreso tra uno e meno uno"
} else {
  risposta <- "Minore di meno uno"
}
