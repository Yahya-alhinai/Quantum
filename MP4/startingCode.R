
#Function to compute the fidelity of W relative to V (W and V are density matrices)
fidelity <- function(V,W){
	sum(diag( V %*% W ))
}

v <- ket(1,0)
V <- convert_ket2DM(v)


x_axis <- seq(0,1,length.out=101)

for (i in 1:length(x_axis)){
  W <- PauliNoise(p=V,e=x_axis[i])
  l[i] <- fidelity(w_fix,W)
}


plot(x_axis,l,col="Blue",ylab="Fidelity rate",xlab="Pauli Noise rate",main="Fidelity vs Pauli Noise")

