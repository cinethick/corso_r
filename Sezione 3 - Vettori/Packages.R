# Packages
# https://cran.r-project.org

#per l'installazione si inserisce il nome come testo
install.packages('ggplot2')

#i pacchetti installati si richiamano con la funzione library come oggetti
library(ggplot2)

# diamonds è un dataset incluso nella libreria di ggplot2
diamonds
# esempio di visualizzazione
qplot(data = diamonds, carat, price, colour=clarity, facets = .~clarity)
