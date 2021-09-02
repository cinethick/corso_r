# Creazione Funzioni

# Le funzioni si assegnano a dei nomi mediante l'assegnazione ad una variabile
# come in ES6/7
Nome <- function ( argomento) {
  print(argomento)
}

Nome('Funziona!!!')

creaGrafico <- function(n) {
  Dati <- MinutesPlayed[n,,drop=F]
  matplot(t(Dati), type='b', pch=15:18, col=c(1:4, 6))
  legend('bottomleft', inset=0.01, legend=Players[n], pch=15:18, col=c(1:4, 6))
}

creaGrafico(2)
