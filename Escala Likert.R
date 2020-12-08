
#Análisis de datos en escala Likert

install.packages("likert")
install.packages("ggplot2")
library(likert)
library(ggplot2)

#Utilizaremos la matriz de datos de los resultados de PISA en 2009
#precargada en el paquete likert, mediante el comando data

data("pisaitems")

#Renombramos la matriz para mejor uso
pisa<-pisaitems

#Exploramos la matriz de datos
dim(pisa) #dimensión
names(pisa) #nombre de las variables
typeof(pisa) #tipo de matriz
str(pisa) #tipo de variable

#Visualizamos los valores que componen una variable
head(pisa$CNT)
head(pisa$ST24Q01)

#Buscamos los valores perdidos
anyNA(pisa)

#Numero total de datos perdidos en la matriz de datos
sum(is.na(pisa))

#Eliminamos las filas con datos perdidos
#y creamos una nueva matriz
pisa2<-na.omit(pisa)

#Verificamos que la nueva matriz no tenga valores perdidos
anyNA(pisa2)

head(pisa2)

#Trabajamos con nuestra nueva matriz de datos


#VARIABLE 24

#Agrupamos los items
names(pisa2)
items24<-pisa2[,2:12] 
head(items24[1:6,1:6])

#Renombramos las etiquetas de respuesta
levels(items24)<-c("Completamente en desacuerdo",
                   "En desacuerdo",
                   "De acuerdo",
                   "Completamente de acuerdo")

#Colocar los nombres a los indicadores
names(items24)<-c("Leo si es necesario",
                  "Leer es de mis pasatiempos favoritos",
                  "Me gusta hablar de libros con otras personas",
                  "Encuento dificil terminar un libro",
                  "Me siento feliz sí recibo un libro como regalo",
                  "Para mi, leer es una pérdida de tiempo",
                  "Disfruto ir a una librería o bilioteca",
                  "Leo sólo para obtener la información que necesito",
                  "No puedo estar sentado leyendo por más de 5 minutos",
                  "Me gusta expresar mi opinion sobre un libro cuando lo he leído",
                  "Me gusta intercambiar libros con mis amigas-os")

l24<-likert(items24)

#Generamos el grafico de barras
plot(l24,type="bar",centered=FALSE)

#Grafico de barras con porcentajes
install.packages("plyr")
library(plyr)

plot(l24,type="bar",centered=TRUE, plot.percents=TRUE)

#Gráfico de barras ordenado
plot(l24,group.order = colnames(items24))

#Gráfico de densidad
likert.density.plot(l24,facet=TRUE,bw=0.5, 
                    legend = "Gráfico de densidad")

#Gráfico de calor
plot(l24, type="heat")


#VARIABLE 25

#Agrupamos los items
items25<-pisa2[,substr(names(pisa2),1,5)=='ST25Q']


#Identificamos las respuestas de agrupamiento
#y generamos una nueva variable.
names(items25)<-c("Magazines","Comics books","Fiction",
                  "Non-Fiction books","Newspapers")
l25<-likert(items25)

#visualizamos los niveles en los que se agrupan
#los indicadores
head(l25)

#Generamos el gráfico de barras de las respuestas el conjunto
plot(l25, type="bar", centered=FALSE)

#Grafico de barras con porcentajes
plot(l25,type="bar",centered=TRUE, plot.percents=TRUE)

#Grafico de media y sd
#Activar la funcion plot.likert
#se encuentra en un script alterno.
plot.likert(as.numeric(pisa2$ST24Q01),
            left="Completamente en desacuerdo",
            right="Completamente de acuerdo",
            plot.median=TRUE,
            plot.sd=TRUE)

FIN DEL SCRIPT