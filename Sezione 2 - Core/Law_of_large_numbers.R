#Legge dei grandi numeri
#Xn -> E(x) when n -> inf
# Xn media di una caratteristica della popolazione
# E(X) è il valore atteso
# con il crescere delle misure ci si avvicina al valore atteso

e_x <- 0.682

larghezza_popolazione <- 1000000L

popolazione <- rnorm(larghezza_popolazione)

totale <- 0

for (x in popolazione) {
  if (x <= 1 & x >= -1){
    totale <- totale + 1
  }
}

xn <- totale / larghezza_popolazione