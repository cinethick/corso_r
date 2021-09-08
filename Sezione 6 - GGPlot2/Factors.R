# Factors

library(ggplot2)
setwd('C:\\Users\\MICROTECH\\Documents\\eBook Corsi e Altro\\Corso 2021 R Kirill Eremenko\\datasets\\originali')
getwd()

movies <- read.csv('P2-Movie-Ratings.csv')
head(movies)
str(movies)
summary(movies)

colnames(movies) <- c("Film", "Genere", "RatingCritica", "RatingSpettatori", "BudgetMilioni", "Anno")
head(movies)
str(movies)
movies$Genere <- factor(movies$Genere)
movies$Anno <- factor(movies$Anno)
summary(movies)
