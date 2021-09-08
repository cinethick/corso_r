# Geometria

library(ggplot2)
setwd('C:\\Users\\MICROTECH\\Documents\\eBook Corsi e Altro\\Corso 2021 R Kirill Eremenko\\datasets\\originali')
getwd()

movies <- read.csv('P2-Movie-Ratings.csv')
colnames(movies) <- c("Film", "Genere", "RatingCritica", "RatingSpettatori",
                      "BudgetMilioni", "Anno")
movies$Genere <- factor(movies$Genere)
movies$Anno <- factor(movies$Anno)

# si possono creare grafici con una sola dimensione (es: istogrammi)
grafico <- ggplot(data=movies, aes(x = BudgetMilioni))

# ISTOGRAMMA
grafico + geom_histogram(binwidth = 10) 
grafico + geom_histogram(binwidth = 20) 
#binwidth è l'unità di larghezza del singolo bin

grafico + geom_histogram(binwidth = 10, aes(fill = Genere), color = "Black") +
  ylab("Numero di Film")
# fill è riempimento, trasforma il grafico in stacked bars
# fill + color = bordo delle barre!

# CURVA di DENSITA'
grafico + geom_density(aes(fill=Genere), position = "stack") +
  ylab("Densità (0-1)")

graficiBase <- ggplot(data = movies)

graficiBase +
  geom_histogram(aes(x=RatingSpettatori),
                 binwidth = 10, fill = "White", color = "Blue") +
  ylab("Numero")

graficiBase +
  geom_histogram(aes(x=RatingCritica),
                 binwidth = 10, fill = "White", color = "Blue") +
  ylab("Numero")

# Media condizionale lisciata (tipo una media mobile)
?geom_smooth

graficiBase +
  geom_point(aes(x = RatingCritica, y = RatingSpettatori, color = Genere)) +
  geom_smooth(aes(x = RatingCritica, y = RatingSpettatori, color = Genere), fill = NA)

# BOXPLOTS

graficiBase +
  geom_boxplot(aes(x = Genere, y = RatingSpettatori, color = Genere), size = 1.2)


graficiBase +
  geom_jitter(aes(x = Genere, y = RatingSpettatori, color = Genere)) +
  geom_boxplot(aes(x = Genere, y = RatingSpettatori, color = Genere),
               size = 1.2, alpha = 0.5)
  