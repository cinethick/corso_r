# Estetica

library(ggplot2)
setwd('C:\\Users\\MICROTECH\\Documents\\eBook Corsi e Altro\\Corso 2021 R Kirill Eremenko\\datasets\\originali')
getwd()

movies <- read.csv('P2-Movie-Ratings.csv')
colnames(movies) <- c("Film", "Genere", "RatingCritica", "RatingSpettatori",
                      "BudgetMilioni", "Anno")
movies$Genere <- factor(movies$Genere)
movies$Anno <- factor(movies$Anno)

# ggplot è la funzione principale per i grafici
# aes è il parametro per l'estetica (Aesthetics)
ggplot(data = movies, aes(x = RatingCritica, y = RatingSpettatori))
# aes usa una tecnica detta mapping dei parametri, si usa quando si vuole
# mappare una variabile su un parametro

# ggplot è funzionale, bisogna aggiungere i componenti:
grafico <- ggplot(
  data = movies,
  aes(
    x = RatingCritica,
    y = RatingSpettatori,
    color = Genere,
    size = BudgetMilioni
  )
) 
# si mette il più sommando ggplot ad una funzione che esprime la geometria
# ggplot funziona con layer che vengono sovrapposti tramite la funzione di somma
grafico + geom_point()

# l'estetica può essere sovrascritta
grafico + geom_point(aes(size = RatingCritica))

grafico + geom_point(aes(color = BudgetMilioni))

grafico + geom_point(aes(x = BudgetMilioni)) # il nome dell'asse x è sbagliato

# xlab è per la label/etichetta
grafico + geom_point(aes(x = BudgetMilioni)) + xlab("Budget in Milioni ($)")

# la sovrascrittura eseguita in questo modo non modifica l'oggetto grafico
grafico + geom_point()

# usare più geometrie, si può fare sommando le geometrie al grafico (sono layer diversi)
grafico + geom_line(size = 1, color = "Black") + geom_point()
# si può evitare di usare il mapping dell'estetica nel caso in cui si faccia corrispondere
# ad un parametro un valore fisso (come sopra)

# Teniamo i grafici in maniera più pulita
graficoPulito <- ggplot(data=movies, aes(x = RatingCritica, y = RatingSpettatori))

# size e mapping possono essere usati contemporaneamente per obiettivi diversi
graficoPulito + geom_point(color = "Black", aes(size=BudgetMilioni)) 
