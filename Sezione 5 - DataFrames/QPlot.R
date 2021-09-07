# Visualizzazione con QPlot

library(ggplot2)

?qplot

qplot(data=statistiche, x=Internet.users) # istogramma
qplot(data=statistiche, x=Income.Group, y=Birth.rate) # scatter plot
qplot(data=statistiche, x=Income.Group, y=Birth.rate, size=10) #Inserendo parametri direttamente viene eseguito il mapping dei valori
qplot(data=statistiche, x=Income.Group, y=Birth.rate, size=I(10)) # Per modificare la dimensione si usa la I()
qplot(data=statistiche, x=Income.Group, y=Birth.rate, size=I(3), color=I("blue")) # colore
qplot(data=statistiche, x=Income.Group, y=Birth.rate, geom="boxplot") # tipologia

?I
# Sta per INIBIRE (la conversione o interpretazione degli oggetti)

qplot(data=statistiche, x=Internet.users, y=Birth.rate,
      size=I(4), color=Income.Group)

# importare i vettori da "CountryRegionVectors.R"

# Creare il DataFrame

datiPerRegione <- data.frame(Countries_2012_Dataset, Codes_2012_Dataset, Regions_2012_Dataset)
# esplorazione
head(datiPerRegione)
levels(factor(datiPerRegione$Regions_2012_Dataset))

#pulizia
colnames(datiPerRegione) <- c("Nazione", "Codice", "Regione")
head(datiPerRegione)

# al posto che riordinare il DF si predispone dall'inizio:
rm(datiPerRegione)
datiPerRegione <- data.frame(Nazione=Countries_2012_Dataset, Codice=Codes_2012_Dataset,
                             Regione=Regions_2012_Dataset)
head(datiPerRegione)
tail(datiPerRegione)

summary(datiPerRegione)

# Merging / Unione dei Dataframe
datiUniti <- merge(statistiche, datiPerRegione, by.x = "Country.Code", by.y = "Codice")
head(datiUniti)

datiUniti$Nazione <- NULL
str(datiUniti)

qplot(data=datiUniti, x=Internet.users, y=Birth.rate,
      size=I(10), color=Regione, shape=I(17), alpha=I(0.5),
      main="Nascite su Utenti Internet")

