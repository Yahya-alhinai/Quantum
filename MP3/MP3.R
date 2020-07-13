#install.packages("QuantumOps")
library("QuantumOps")


f <- function( x ){
  if(x == 2) 1
  else 0
}

print(f(2))
g <- Uf(fun=f,n=4,m=1)

qu <-tensor(ket(1,1), ket(1,1), ket(1,1), ket(1,1), ket(1,-1))


qu <- g %*% qu
qu <- tensor(GroverDiffusion(4), I())%*% qu

qu <- g %*% qu
qu <- tensor(GroverDiffusion(4), I())%*% qu

qu <- g %*% qu
qu <- tensor(GroverDiffusion(4), I())%*% qu

qu <- g %*% qu
qu <- tensor(GroverDiffusion(4), I())%*% qu

qu <- g %*% qu
qu <- tensor(GroverDiffusion(4), I())%*% qu


qu <- g %*% qu
qu <- tensor(GroverDiffusion(4), I())%*% qu



qu <- tensor(I(), I(), I(), I(), H()) %*% qu


plotprobs(qu)

print((qu))  
print(dirac(qu))  
print(probs(qu))  
