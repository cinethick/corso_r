# Filtrare un dataframe

filtro <- statistiche$Internet.users < 2

# per filtrare basta inserire un vettore booleano
statistiche[filtro,]
statistiche[statistiche$Birth.rate > 40,] # si può inserire direttamente un'espressione
statistiche[statistiche$Birth.rate > 40 & statistiche$Internet.users < 2,]
statistiche[statistiche$Income.Group == "High income",]

statistiche[statistiche$Country.Name == "Italy",]
