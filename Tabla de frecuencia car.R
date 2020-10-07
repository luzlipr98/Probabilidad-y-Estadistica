
#Tabla de frecuencia Cars

#1.- Leer la matriz de datos Cars
data(mtcars)

#1.2.- Exploracion de la matriz de datos
#nombres de las variables
names(mtcars)

#dimension de la matriz (cuantas observaciones y
#variables contiene)
dim(mtcars)

#tipo de variable
str(mtcars)

#detecta si hay valores perdidos
anyNA(mtcars)

#Visualizamos la variable hp de la matriz Cars
mtcars$hp

#2.- Revisamos el tipo de matriz de datos
typeof(mtcars)

#3.- Convertimos la matriz de datos a un data frame y despues
    #Agrupamos los valores para la variable hp
    #y se calcula la frecuencia absoluta
tabla_hp<-as.data.frame(table(hp = mtcars$hp))

#4.- Mostramos la tabla de contingencia para la variable hp
    #con su respectiva frecuencia absoluta
tabla_hp

#5.- Se construye la tabla de frecuencias completas redondeando
    #las frecuencias absolutas a 3 decimales
transform(tabla_hp,
          freqAc=cumsum(Freq),
          Rel= round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))

#6.- Agruparemos las variables en 10 clases y se
   #calcula la frecuencia absoluta
tabla_clases<-as.data.frame(table
                            (hp = factor
                              (cut(mtcars$hp,
                                   breaks = 9))))
#7.- Visualizamos la tabla de clases
tabla_clases

#8.- Construccion de la tabla de frecuencias completa redondeando
    #las frecuencias relativas a 3 decimales
transform(tabla_clases,
          freqAc=cumsum(Freq),
          Rel= round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))
