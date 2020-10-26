#Examinación de la unidad 1, inserta el código para
#activar lo que se te indica. Guarda tu script y envíalo
#por classroom antes del martes.
#Importante: En caso de detectar plagio, se te anulará
#el apartado correspondiente.


#Vas a trabajar con la matriz de datos
#"millas" que se te proporciona a continuación.

millas<-datos::millas

#Realizar los siguientes pasos:


#1.- Explora la matriz de datos millas 
#valor: 5 puntos por comando correcto.
?millas #ayuda
dim(millas) #dimensión
names(millas) #nombres de las variables
str(millas) #tipo de variable
anyNA(millas) #identificar datos perdidos
typeof(millas) #tipo de matriz de datos
View(millas) #visualización de la tabla (data frame)

#Convertiremos la matriz de datos a "data frame".
millas_1<-as.data.frame(millas)


#2.- Determina las medidas estadísticas descriptivas
#y de variablidad
#Importante: no calcules los errores.
#Valor: 5 puntos por comando correcto.
summary(millas_1)

#calcularemos la moda
library(modeest)

mfv(millas_1$fabricante)
mfv(millas_1$modelo)
mfv(millas_1$cilindrada)
mfv(millas_1$anio)
mfv(millas_1$cilindros)
mfv(millas_1$transmision)
mfv(millas_1$traccion)
mfv(millas_1$ciudad)
mfv(millas_1$autopista)
mfv(millas_1$combustible)
mfv(millas_1$clase)

#calcularemos la varianza de cada una de las variables cuantitativas
var(millas_1$cilindrada)
var(millas_1$anio)
var(millas_1$cilindros)
var(millas_1$ciudad)
var(millas_1$autopista)

#calcularemos la desviación standar de las variables cuantitativas
sd(millas_1$cilindrada)
sd(millas_1$anio)
sd(millas_1$cilindros)
sd(millas_1$ciudad)
sd(millas_1$autopista)

#coeficiente de variacion
install.packages("FinCal")
library(FinCal)

#calcularemos el coeficiente de variación
coefficient.variation(sd=sd(millas_1$cilindrada),
                      avg=mean(millas_1$cilindrada))
coefficient.variation(sd=sd(millas_1$anio),
                      avg=mean(millas_1$anio))
coefficient.variation(sd=sd(millas_1$cilindros),
                      avg=mean(millas_1$cilindros))
coefficient.variation(sd=sd(millas_1$ciudad),
                      avg=mean(millas_1$ciudad))
coefficient.variation(sd=sd(millas_1$autopista),
                      avg=mean(millas_1$autopista))

install.packages("tidyverse")
library(tidyverse)

install.packages("RColorBrewer")
library(RColorBrewer)

#3.- Construye:

#A) Un gráfico de dispersión con las variables cilindrada y autopista
    #el color lo indica la variable clase. 
    #Valor Total: 20 puntos
    #(10 puntos por comando activado correcto).
    #(10 punto por la generación del gráfico).

dispersion_L<-ggplot(millas_1, aes(x=cilindrada, y=autopista, color=clase))+
    geom_point()
dispersion_L

#B) Un gráfico boxplot con las variables transmisión y ciudad
    #El color lo indica la variable transmisión    
    #El título del gráfico es Transmisión de autos en ciudad
    #Coloca la etiqueta "Transmisión" en el eje x 
    #Coloca la etiqueta "Ciudad" en el eje y 
    #Valor Total: 20 puntos
    #(10 puntos por comando activado correcto).
    #(10 punto por la generación del gráfico del gráfico).

boxplot_L<-ggplot(millas_1,aes(factor(transmision), 
                             ciudad, fill=transmision))+
    geom_boxplot()+
    ggtitle("Boxplot de la Transmisión de autos en ciudad")+
    xlab("Transmisión")+
    ylab("Ciudad")
boxplot_L

#C) Un gráfico de barras para la variable "cilindros" 
    #Valor Total: 20 puntos
    #(10 puntos por comando activado correcto).
    #(10 punto por la generación del gráfico).

attach(millas_1)
tabla_cilindros<-table(millas_1$cilindros)
tabla_cilindros

#especificamos colores
color=c("darkorchid","dodgerblue1","darkturquoise","darkorchid1")

#construimos el gráfico
barplot(tabla_cilindros,xlab="cilindros", ylab="Frecuencias", 
        main="Gráfico de barras de cilindros", col=color)
