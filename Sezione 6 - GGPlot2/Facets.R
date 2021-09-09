# Facets

library(ggplot2)
setwd('C:\\Users\\MICROTECH\\Documents\\eBook Corsi e Altro\\Corso 2021 R Kirill Eremenko\\datasets\\originali')
getwd()

movies <- read.csv('P2-Movie-Ratings.csv')
colnames(movies) <- c("Film", "Genere", "RatingCritica", "RatingSpettatori",
                      "BudgetMilioni", "Anno")
movies$Genere <- factor(movies$Genere)
movies$Anno <- factor(movies$Anno)

grafico <- ggplot(data = movies, aes(x = BudgetMilioni))
grafico +
  geom_histogram(binwidth = 10, aes(fill = Genere), color = "Black") +
  facet_grid(Genere ~ ., scales="free")

grafico2 <- ggplot(data = movies, aes(x = RatingCritica, y = RatingSpettatori,
                                      color = Genere))
grafico2 + geom_point(size = 2) + facet_grid(Genere ~ .)
grafico2 + geom_point(size = 2) + facet_grid(. ~ Anno)
grafico2 + geom_point(aes(size = BudgetMilioni)) +
  geom_smooth() + facet_grid(Genere ~ Anno)

# l'intervallo di confidenza dello smooth fa andare fuori contesto la scala dei grafici
