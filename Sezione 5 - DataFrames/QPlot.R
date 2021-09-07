# Visualizzazione con QPlot

library(ggplot2)

?qplot

qplot(data=statistiche, x=Internet.users) # istogramma
qplot(data=statistiche, x=Income.Group, y=Birth.rate) # scatter plot
qplot(data=statistiche, x=Income.Group, y=Birth.rate, size=10) #Inserendo parametri direttamente viene eseguito il mapping dei valori
qplot(data=statistiche, x=Income.Group, y=Birth.rate, size=I(10)) # Per modificare la dimensione si usa la I()
qplot(data=statistiche, x=Income.Group, y=Birth.rate, size=I(3), color=I("blue")) # colore
qplot(data=statistiche, x=Income.Group, y=Birth.rate, geom="boxplot") # tipologia

qplot(data=statistiche, x=Internet.users, y=Birth.rate,
      size=I(4), color=Income.Group)
