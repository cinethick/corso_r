# Tematizzazione

library(ggplot2)
setwd('C:\\Users\\MICROTECH\\Documents\\eBook Corsi e Altro\\Corso 2021 R Kirill Eremenko\\datasets\\originali')
getwd()

movies <- read.csv('P2-Movie-Ratings.csv')
colnames(movies) <- c("Film", "Genere", "RatingCritica", "RatingSpettatori",
                      "BudgetMilioni", "Anno")
movies$Genere <- factor(movies$Genere)
movies$Anno <- factor(movies$Anno)

grafico <- ggplot(data = movies, aes(x = BudgetMilioni))
istogramma <- grafico + geom_histogram(binwidth = 10, color = "Black", aes(fill = Genere))

istogramma # si può immagazzinare la visualizzazione in una variabile e richiamarlo

istogramma + 
  ggtitle("Distribuzione del Budget dei Film") + 
  xlab("Budget (Milioni $)") + 
  ylab("Numero di Film") + 
  theme(
    axis.title.x = element_text(color= "DarkGreen", size = 30),
    axis.title.y = element_text(color= "Red", size = 30),
    axis.text.x = element_text(size = 20),
    axis.text.y = element_text(size = 20),
    legend.title = element_text(size = 20),
    legend.text = element_text(size = 20),
    legend.position = c(1,1),
    legend.justification = c(1,1),
    plot.title = element_text(color = "DarkBlue", size = 40, family = "Verdana")
    )
