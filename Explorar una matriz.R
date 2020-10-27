

#Revisaremos los códigos para:
    #1.- Explorar una matriz de datos.
    #2.- Obtener las estadísticas descriptivas y de dispersión.
    #3.- Generar algunos gráficos.
    #4.- Prueba de Normalidad

#Abrimos la matriz de datos flores y la pondremos dentro un
#objeto de igual nombre
install.packages("datos") #Este comando descarga el paquete
library(datos)  #Este comando abre el paquete

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


#calcularemos el error para la variable largo del sepalo

error_1<-(flores_1$Largo.Sepalo-mean(flores_1$Largo.Sepalo))
error_1