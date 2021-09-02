# Matplot
# serve per fare grafici delle colonne delle matrici

?matplot

# TRASPOSIZIONE
t(FieldGoals)

# matplot plotta le colonne!!! nel nostro caso dobbiamo trasporre la matrice
matplot(t(FieldGoals), type='b', pch=15:18, col=c(1:4,6))
legend('bottomleft', inset=0.01, legend=Players, pch=15:18, col=c(1:4,6), horiz = F)

Subset <- MinutesPlayed[1,,drop=F] # si deve eseguire un subset con dimensioni nel caso si selezioni solo una riga
matplot(t(Subset), type='b', pch=15:18, col=c(1:4,6))
legend('bottomleft', inset=0.01, legend=Players[1], pch=15:18, col=c(1:4,6), horiz = F)
