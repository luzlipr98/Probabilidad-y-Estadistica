#En esta práctica vamos a trabajar con la matriz
#de datos "flores" que es la traducción de la matriz "iris".
#Revisaremos los códigos para:
    #1.- Explorar una matriz de datos.
    #2.- Obtener las estadísticas descriptivas y de dispersión.
    #3.- Generar algunos gráficos.
    #4.- Prueba de Normalidad.

#Abrimos la matriz de datos flores y la pondremos dentro de un
#objeto de igual nombre
install.packages("datos") #Este comando descarga el paquete
library(datos) #Este comando abre el paquete

flores<-(datos::flores)

#Vamos a explorar la matriz de datos con los siguientes comandos
?flores #ayuda
dim(flores) #dimensión
names(flores) #nombre de las variables
str(flores) #tipo de variable
anyNA(flores) #identificar datos perdidos
typeof(flores) #tipo de matriz de datos
View(flores) #visualización de la tabla (data frame)

#Convertiremos la matriz de datos a "data frame".
flores_1<-as.data.frame(flores)


#iniciaremos calculando los estadísticos descriptivos
summary(flores_1)

#calcularemos la moda, primero tenemos que instalar el
#paquete modeest y abrir la libreria
install.packages("modeest")
library(modeest)

#la función que utilizaremos para identificar la moda
#es mfv()
mfv(flores_1$Largo.Sepalo)
mfv(flores_1$Ancho.Sepalo)
mfv(flores_1$Largo.Petalo) #observación doble moda
mfv(flores_1$Ancho.Petalo)
mfv(flores_1$Especies) #observación

#calculamos la varianza de cada una de las variables
#cuantitativas
var(flores_1$Largo.Sepalo)
var(flores_1$Ancho.Sepalo)
var(flores_1$Largo.Petalo)
var(flores_1$Ancho.Petalo)

#calcularemos la desviación standar para cada una de las
#variables cuantitativas
sd(flores_1$Largo.Sepalo)
sd(flores_1$Ancho.Sepalo)
sd(flores_1$Largo.Petalo)
sd(flores_1$Ancho.Petalo)

#calculamos el error para la variable largo del sépalo
mean_1<-mean(flores_1$Largo.Sepalo)
error_1<-(flores_1$Largo.Sepalo-(mean_1))

#visualizamos el objeto error_1
error_1

mean_2<-mean(flores_1$Ancho.Sepalo)
error_2<-(flores_1$Ancho.Sepalo-(mean_2))
error_2

mean_3<-mean(flores_1$Largo.Petalo)
error_3<-(flores_1$Largo.Petalo-(mean_3))
error_3

mean_4<-mean(flores_1$Ancho.Petalo)
error_4<-(flores_1$Ancho.Petalo-(mean_4))
error_4

#coeficiente de variacion
#vamos a instalar el paquete FinCal y abrimos la librería
install.packages("FinCal")
library(FinCal)

#calculamos el coeficiente de variación
coefficient.variation(sd=sd(flores_1$Largo.Sepalo),
                      avg=mean(flores_1$Largo.Sepalo))
coefficient.variation(sd=sd(flores_1$Ancho.Sepalo),
                      avg=mean(flores_1$Ancho.Sepalo))
coefficient.variation(sd=sd(flores_1$Largo.Petalo),
                      avg=mean(flores_1$Largo.Petalo))
coefficient.variation(sd=sd(flores_1$Ancho.Petalo),
                      avg=mean(flores_1$Ancho.Petalo))

#Empezaremos a contruir gráficos

#Instalaremos el paquete tidyverse y RColorBrewer
#y abriremos la librería
install.packages("tidyverse")
library(tidyverse)

install.packages("RColorBrewer")
library(RColorBrewer)


#Grafico de Barras
#Construcción de la tabla con la que vamos a trabajar
attach(flores_1)
tabla_especies<-table(flores_1$Especies)

#visualizamos la variable x que contiene la columna de Especies
tabla_especies

#Especificamos la paleta de colores que vamos a utilizar
color=c("gold","darkorange","firebrick1")

#Construimos el gráfico de la variable x
barplot(tabla_especies,xlab="Especies", ylab="Frecuencias", 
        main="Gráfico de barras de Especies", col=color)


#Boxplot
boxplot<-ggplot(flores_1,aes(factor(Especies),
                             Largo.Sepalo, fill=Especies))+
  geom_boxplot()+
  ggtitle("Boxplot del Largo del Sepalo")+
  xlab("Especies")+
  ylab("Largo.Sepalo")

#Visualizamos el gráfico
boxplot


#Diagrama de dispersión 1
dispersion_1<-ggplot(flores_1, aes(x=Largo.Petalo, y=Largo.Sepalo, color=Especies))+
  geom_point()

#Visualizamos el gráfico
dispersion_1


#Diagrama de dispersion 2
attach(flores_1)
par(mfrow=c(1,1)) #volver a definir una ventana normal
dispersion_2<-plot(flores_1$Largo.Petalo,flores_1$Ancho.Petalo,pch=19,
                   col="purple",
                   xlab="Largo del pétalo",
                   ylab="Ancho del pétalo")

#Diagrama de dispersión 3
dispersion_3<-ggplot(flores_1, aes(x=flores_1$Largo.Sepalo, y=flores_1$Ancho.Sepalo,
                                   colour=Especies))+
  geom_point(alpha=.9)+
  xlab("Largo del sépalo")+
  ylab("Ancho del sépalo")

#Visualizamos el gráfico
dispersion_3

#Diagrama de dispersión múltiple
pairs(flores_1[,1:4],pch=19,
      col=c("blue","green","orange")[flores_1[,5]])


#Histograma 1, visualizando la variable largo de pétalo
ggplot(flores_1,aes(x=Largo.Petalo))+
  geom_histogram(binwidth = 0.1, col="black", fill="green", alpha=0.4)+
  xlab("Largo del pétalo")+
  ylab("Frecuencia")+
  ggtitle("Histograma del largo del pétalo")

#Histograma 2
par(mfrow=c(1,3))

hist(flores[1:50,3],main="Largo del pétalo (setosa)",
     xlab="",ylab="Frecuencias",col="red",breaks = "Sturges")+
  
hist(flores[51:100,3],main="Largo del pétalo (versicolor)",
       xlab="", ylab="Frecuencias", col="blue",breaks = "Sturges")

hist(flores[101:150,3],main="Largo del pétado (virginica)",
     xlab="",ylab="Frecuencias", col="green",breaks = "Sturges")
