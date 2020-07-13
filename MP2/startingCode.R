


#Function to compute the fidelity of W relative to V (W and V are density matrices)
fidelity <- function(V,W){
	sum(diag( V %*% W ))
}

#Can convert a ket to density matrix
v <- ket(1,0)
V <- convert_ket2DM(v)

#Density matrices can be subject to more general forms of quantum noise
#Here apply a PauliNoise (of equal amounts X,Y,Z) with a strength of 0.01
W <- PauliNoise(p=V,e=0.01)
print(fidelity(W,W))


#Sample plotting
x_axis <- seq(0, 1, length.out=10)
l <- sin(x_axis)

#Uncomment me to save
#jpeg("ExamplePlot.jpg")

plot(x_axis,l,col="Blue",ylab="Meaningless Values",xlab="Arbitrary x axis",main="Example plot")

#Uncomment me to save
#dev.off()









