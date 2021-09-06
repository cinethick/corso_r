# Esercizio Free Trows

# Creare tre grafici:
# numero di tentativi
# accuratezza dei free trows
# stile di gioco esclusi i free trows

# Numero tentativi
matplot(t(FreeThrowsAttempts / Games), type='b', pch=15:18, col=c(1:4, 6))
legend('bottomleft', inset=0.01, legend=Players, pch=15:18, col=c(1:4, 6))

# Accuratezza Free Trows
matplot(t(FreeThrows / FreeThrowsAttempts), type='b', pch=15:18, col=c(1:4, 6))
legend('bottomleft', inset=0.01, legend=Players, pch=15:18, col=c(1:4, 6))

# Stile di gioco
PlayStyle <- (Points - FreeThrows) / FieldGoals
matplot(t(PlayStyle), type='b', pch=15:18, col=c(1:4, 6))
legend('bottomleft', inset=0.01, legend=Players, pch=15:18, col=c(1:4, 6))

