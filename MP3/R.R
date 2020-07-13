#install.packages("QuantumOps")
#library("QuantumOps")


f <- function( x ){
  if(x == 2) 1
  else 0
}

g <- Uf(fun=f,n=4,m=1)

qu <-tensor(H(ket(1,0)), H(ket(1,0)), H(ket(1,0)), H(ket(1,0)), H(ket(0, 1)))


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





plotprobs(qu)




print((qu))  
print(dirac(qu))  
print(probs(qu))  
