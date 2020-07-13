#install.packages("QuantumOps")
library("QuantumOps")




qu <- intket(x=c(0,16),n=5,amplitudes=c(1,1))
qu <- controlled( gate=X(), n=5, cQubits=0, tQubit=1) %*% qu
qu <- controlled( gate=X(), n=5, cQubits=0, tQubit=2) %*% qu


####################################


#qu <- tensor(X(), I(), I(), I(), I()) %*% qu
#qu <- tensor(I(), X(), I(), I(), I()) %*% qu
qu <- tensor(I(), I(), X(), I(), I()) %*% qu

####################################
print(dirac(qu))


qu <- controlled( gate=X(), n=5, cQubits=0, tQubit=3) %*% qu
qu <- controlled( gate=X(), n=5, cQubits=1, tQubit=3) %*% qu

qu <- controlled( gate=X(), n=5, cQubits=0, tQubit=4) %*% qu
qu <- controlled( gate=X(), n=5, cQubits=2, tQubit=4) %*% qu


qu <- measure(qu, 3, 4, l2r=TRUE)[[1]]
qu_4 <- measure_qu[[3]][1]
qu_5 <- measure_qu[[3]][2]

####################################

qu <- controlled( gate=X(), n=5, cQubits=3, tQubit=1) %*% qu
qu <- controlled( gate=X(), n=5, cQubits=4, tQubit=2) %*% qu

####################################

print(dirac(qu))
