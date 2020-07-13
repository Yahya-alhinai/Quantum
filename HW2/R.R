#install.packages("QuantumOps")
library("QuantumOps")

f <- function( x ){
  if(x == 3) 1
  else 0
}

g <- Uf(fun=f,n=2,m=1)


print(g)

P <- (2*(ket(1,0)%*%t(ket(1,0))) - I())

qu <- H() %*% (2*(ket(1,0)%*%t(ket(1,0)))) %*% H()

print(qu)

