
#Distribución de probabilidad

pnorm(2.5)

pnorm(40,mean=30, sd=4, lower.tail=TRUE)

pnorm(-2.25)

pnorm(21,mean=30, sd=4, lower.tail=TRUE)

pnorm(35,mean=30, sd=4, lower.tail=TRUE) - pnorm(30,mean=30, sd=4, lower.tail=TRUE)

pnorm(15)

pnorm(75,mean=45, sd=2, lower.tail=TRUE)

pnorm(-16)

pnorm(13,mean=45, sd=2, lower.tail=TRUE)

pnorm(82,mean=45, sd=2, lower.tail=TRUE) - pnorm(60,mean=45, sd=2, lower.tail=TRUE)

#Ejercicio 2
n=1000
hist(rnorm(100,500,100),20, col="blue")
abline(v=585, col=2)

pnorm(585,mean=500, sd=100)

hist(rnorm(2600,1000,100),20, col="green")
abline(v=1185, col=2)

pnorm(1185,mean=1000, sd=100)

#Ejercicio 3

set.seed(10)
x <- rnorm(100,10) 
Media <- 10
test <- t.test(x, mu=Media) 
print(test)
