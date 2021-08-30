# la funzione c sta per "combine" e combina in un vettore

w <- c("a", "b", "c", "d", "e")

#per accedere si usano le parentesi quadre come in altri linguaggi
# la differenza è che i vettori sono indicizzati a partire da 1

w[1]
w[5]

#usando indici negativi torna il vettore meno gli elementi agli indici
w[-1] # ritorna tutti tranne a
v <- w [-3] # ritorna tutti tranne c

w[1:3] # si può passare una sequenza o un altro vettore
w[c(1, 3, 5)]
w[c(-2, -4)]

# se si richiama lo zero il vettore ritorna nessun elemento ma ritorna il tipo di vettore
w[0]
w[7] # se si richiama un elemento al di fuori del raggio ritorna un NA (nullo)
v[0]
w[-7] # se si richiama un elemento al di fuori al negativo ritorna l'intero vettore
w[-0]
