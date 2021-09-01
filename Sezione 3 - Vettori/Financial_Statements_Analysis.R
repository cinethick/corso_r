#Esercizio Financial Statements
# Input: entrate ed uscite mensili 
# Output: profitto per ogni mese
#         profitto per mese tassato (al 30%)
#         margine mensile = profitto tassato diviso entrate
#         mesi positivi = mesi in cui il profitto è maggiore della media
#         mesi negativi = mesi in cui il profitto è minore della media
#         miglior mese (massimo annuale)
#         peggior mese (minimo annuale)

#Data - Da file
entrate <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
uscite <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

# Nuove funzioni: round, mean, max, min
profitto <- entrate - uscite
round(profitto, 0)

tasse <- profitto * 0.3
profitto_tassato <- profitto - tasse
round(profitto_tassato)

margine <- (profitto_tassato / entrate) * 100
round(margine)

profitto_medio <- mean(profitto_tassato)

mesi_positivi <- profitto_tassato >= profitto_medio
mesi_positivi

mesi_negativi <- profitto_tassato < profitto_medio
mesi_negativi

miglior_mese <- profitto_tassato == max(profitto_tassato)
miglior_mese

peggior_mese <- profitto_tassato == min(profitto_tassato)
peggior_mese
