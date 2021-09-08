# Esercizio sezione 5

# Produrre scatterplot Life Expectancy vs Fertility Rate (y-x) categorizzato su
# le regioni

# Fare gli scatterplot per gli anni 1960 e 2013
# Comparare i due periodi

library(ggplot2)
setwd('C:\\Users\\MICROTECH\\Documents\\eBook Corsi e Altro\\Corso 2021 R Kirill Eremenko\\datasets\\originali')
getwd()

dataframeCSV <- read.csv('P2-Section5-Homework-Data.csv')
head(dataframeCSV)
tail(dataframeCSV)
str(dataframeCSV)
summary(dataframeCSV)

# caricare i vettori da Section5-Homework-Vectors.R

dati1960 <- dataframeCSV[dataframeCSV$Year == 1960,]
dati2013 <- dataframeCSV[dataframeCSV$Year == 2013,]

life1960 <- data.frame(Country.Code=Country_Code, Life.Expectancy=Life_Expectancy_At_Birth_1960)
life2013 <- data.frame(Country.Code=Country_Code, Life.Expectancy=Life_Expectancy_At_Birth_2013)

dati1960 <- merge(x = dati1960, y = life1960, by.x = "Country.Code", by.y = "Country.Code")
dati2013 <- merge(x = dati2013, y = life2013, by.x = "Country.Code", by.y = "Country.Code")
head(dati1960)

qplot(data=dati1960, x=Fertility.Rate, y=Life.Expectancy,
      size=I(10), color=Region, shape=I(19), alpha=I(0.5),
      main="Aspettativa di Vita su Fertilità (1960)")

qplot(data=dati2013, x=Fertility.Rate, y=Life.Expectancy,
      size=I(10), color=Region, shape=I(19), alpha=I(0.5),
      main="Aspettativa di Vita su Fertilità (2013)")

datiDifferenza <- dati1960
datiDifferenza$Year <- NULL
datiDifferenza$Fertility.Rate <- dati2013$Fertility.Rate - dati1960$Fertility.Rate
datiDifferenza$Life.Expectancy <- dati2013$Life.Expectancy - dati1960$Life.Expectancy
head(datiDifferenza)

qplot(data=datiDifferenza, x=Fertility.Rate, y=Life.Expectancy,
      size=I(10), color=Region, shape=I(19), alpha=I(0.5),
      main="Aspettativa di Vita su Fertilità (2013 - 1960)")
