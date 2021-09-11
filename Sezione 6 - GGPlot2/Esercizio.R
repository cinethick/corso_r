# Esercizio Sezione 6

library(ggplot2)
setwd('C:\\Users\\MICROTECH\\Documents\\eBook Corsi e Altro\\Corso 2021 R Kirill Eremenko\\datasets\\originali')
getwd()

movies <- read.csv('Section6-Homework-Data.csv')
head(movies)
str(movies)
summary(movies)
colnames(movies)[18]

# Filtri

listaGeneri <- c("action", "adventure", "animation", "comedy", "drama")
listaStudi <- c("Buena Vista Studios", "Fox", "Paramount Pictures", "Sony", "Universal", "WB")

filtroGeneri <- movies$Genre %in% listaGeneri # nuovo metodo per filtrare basato su vettore
filtroStudio <- movies$Studio %in% listaStudi

moviesFiltrati <- movies[filtroGeneri & filtroStudio,]

# Grafico

dati <- ggplot(data = moviesFiltrati, aes(x = Genre, y = Gross...US))
dati +
  geom_jitter(aes(size = Budget...mill., color = Studio)) +
  geom_boxplot(alpha = 0.5, outlier.colour = NA) + # rende invisibili gli outlier (c'è il jitter)
  ggtitle("Margine USA % per Genere") + 
  xlab("Genere") + 
  ylab("Margine USA %") + 
  theme(
    text = element_text(family = "Comic Sans MS"),
    axis.title.x = element_text(color= "DarkBlue", size = 30),
    axis.title.y = element_text(color= "DarkBlue", size = 30),
    axis.text.x = element_text(size = 20),
    axis.text.y = element_text(size = 20),
    legend.title = element_text(size = 20),
    legend.text = element_text(size = 20),
    plot.title = element_text(size = 40)
  )
dati$labels$size <- "Budget (Milioni $)"
dati$labels$size
# Altre analisi

# Giorno della settimana
ggplot(data = movies, aes(x = Day.of.Week)) + geom_bar()

# Studio Genere
ggplot(data = moviesFiltrati, aes(x = Studio)) +
  geom_bar(aes(fill = Genre), color = "Black")

