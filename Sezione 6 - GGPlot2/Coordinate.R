# Coordinate

library(ggplot2)
setwd('C:\\Users\\MICROTECH\\Documents\\eBook Corsi e Altro\\Corso 2021 R Kirill Eremenko\\datasets\\originali')
getwd()

movies <- read.csv('P2-Movie-Ratings.csv')
colnames(movies) <- c("Film", "Genere", "RatingCritica", "RatingSpettatori",
                      "BudgetMilioni", "Anno")
movies$Genere <- factor(movies$Genere)
movies$Anno <- factor(movies$Anno)

grafico <- ggplot(data = movies, aes(x = RatingCritica, y = RatingSpettatori,
                                      color = Genere))
grafico + geom_point(aes(size = BudgetMilioni)) +
  geom_smooth() + facet_grid(Genere ~ Anno) +
  xlim(0, 100) + ylim(0,100)

# X/Ylim elimina i dati dal dataset, per cui può alterare il risultato del grafico

istogramma <- ggplot(data = movies, aes(x = BudgetMilioni))
istogramma +
  geom_histogram(binwidth = 10, aes(fill = Genere), color = "Black") + 
  coord_cartesian(ylim = c(0,50))

# usando il layer coord_cartesian, si danno come argomenti xlim e ylim con dei
# vettori per i limiti, in questo modo si fa un vero e proprio zoom

grafico + geom_point(aes(size = BudgetMilioni)) +
  geom_smooth() + facet_grid(Genere ~ Anno) +
  coord_cartesian(ylim = c(0, 100))
