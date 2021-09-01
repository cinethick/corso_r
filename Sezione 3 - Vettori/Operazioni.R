#Operazioni vettorializzate

x <- rnorm(5)
x

for (n in x) {
  print(n)
}

# -----

N <- 100
a <- rnorm(N)
b <- rnorm(N)

c <- a + b
c_prod <- a * b

# allocare memoria
d <- rep(NA, N)
