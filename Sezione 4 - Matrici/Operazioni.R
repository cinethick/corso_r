# Operazioni tra matrici
#caricare i dati del Basket

Games

rownames(Games)
colnames(Games)

Games['LeBronJames', '2012']

FieldGoals

# Punti per partita
round(FieldGoals / Games, 1)

# Minuti per partita
round(MinutesPlayed / Games)

# Accuratezza
round((FieldGoals / FieldGoalAttempts) * 100, 1)

# Tiri al minuto
round(FieldGoalAttempts / MinutesPlayed, 1)

# Punti al minuto
round(Points / MinutesPlayed,2)
