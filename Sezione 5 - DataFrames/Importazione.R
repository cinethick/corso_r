# Sezione 5 - Dataframes
# Importazione dati

?read.csv()

# file.choose() è un prompt per selezionare un file manualmente

# Metodo con prompt di selezione del file
statistiche <- read.csv(file.choose())
statistiche

# Metodo con configurazione della working directory
setwd('C:\\Users\\MICROTECH\\Documents\\eBook Corsi e Altro\\Corso 2021 R Kirill Eremenko\\datasets\\originali')
getwd()

rm(statistiche)
statistiche <- read.csv('P2-Demographic-Data.csv')
statistiche

#vedere il numero di righe e colonne
nrow(statistiche)
ncol(statistiche)

# testa e coda del dataset
head(statistiche, n=10)
tail(statistiche)

# struttura del dataframe
?str()
str(statistiche)
summary(statistiche)

# Simbolo del dollaro
statistiche$Internet.users
statistiche$Internet.users[2]
# si può usare per estrarre le colonne in maniera più semplice rispetto le parentesi
# i DataFrame hanno nomi per le colonne ma non per le righe

# vedere le variabili categoriche
?levels()
?factor()
levels(factor(statistiche$Income.Group))

# Subsetting
statistiche[100,] # estrarre una riga ritorna un dataframe (la numerazione delle righe rimane)
statistiche[,1] # anche nel caso delle colonne

#aggiungere una colonna
statistiche$Nuova.Colonna <- statistiche$Birth.rate * statistiche$Internet.users
str(statistiche)
# i vettori nel caso vengono reciclati

# rimuovere una colonna
statistiche$Nuova.Colonna <- NULL
str(statistiche)
