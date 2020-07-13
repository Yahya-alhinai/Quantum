#install.packages("QuantumOps")
library("QuantumOps")


q1 = ket()
print(dirac(q1))

q2 = intket(x=c(0,1,2,3),n=2,amplitudes=c(0,1,-1,0))
print(dirac(q2))

qu = tensor(q1,q2)
print(dirac(qu))

qu <- tensor(CX(),I()) %*% qu
print(dirac(qu))  
print(probs(qu))  

qu <- tensor(H(),I(),I()) %*% qu
print(dirac(qu))

L <- measure(qu, 0, 1, l2r=TRUE)
qu <- L[[1]]
print(dirac(qu))

qu <- controlled( gate=X(), n=3, cQubits=1, tQubit=2) %*% qu
qu <- controlled( gate=Z(), n=3, cQubits=0, tQubit=2) %*% qu
print(dirac(qu))
