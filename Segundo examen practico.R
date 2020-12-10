
#Análisis de datos en escala Likert

#Como ya tenemos descargados el paquete likert y ggplot2
#sólo abrimos librería.
library(likert)
library(ggplot2)

#Utilizaremos de nuevo la matriz de datos de los resultados
#de PISA en 2009 precargada en el paquete likert
#mediante el comando data, para trabajar otra variable.

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
head(pisa$ST41Q01)

#Buscamos los valores perdidos
anyNA(pisa)

#Numero total de datos perdidos en la matriz de datos
sum(is.na(pisa))

#Eliminamos las filas con datos perdidos
#y creamos una nueva matriz
pisaL<-na.omit(pisa)

#Verificamos que la nueva matriz no tenga valores perdidos
anyNA(pisaL)

head(pisaL)

#Trabajamos con nuestra nueva matriz de datos

#VARIABLE 37

#Agrupamos los items
names(pisaL)
items37<-pisaL[,48:54]
head(items37[1:7,1:7])

#Renombramos las etiquetas de respuesta
levels(items37)<-c("Nunca o casi nunca",
                   "En algunas lecciones",
                   "En la mayoría de lecciones",
                   "En todas las lecciones")

#Colocar los nombres a los indicadores
names(items37)<-c("El profesor pide a los alumnos que expliquen el significado de un texto",
                  "El maestro hace preguntas que desafían a los estudiantes a comprender mejor un texto",
                  "El maestro les da a los estudiantes suficiente tiempo para pensar en sus respuestas",
                  "El maestro recomienda un libro o autor para leer",
                  "El maestro anima a los estudiantes a expresar u opinión sobre un texto",
                  "El maestro ayuda a los estudiantes a relacionar las historias que leen con sus vidas",
                  "El maestro muestra a los estudiantes cómo la información en los textos se basa en lo que ya saben")

l37<-likert(items37)

#Generamos el grafico de barras
plot(l37,type="bar",centered=FALSE)

#Grafico de barras con porcentajes
library(plyr)

plot(l37,type="bar",centered=TRUE, plot.percents=TRUE)

#Gráfico de barras ordenado
plot(l37,group.order = colnames(items37))

#Gráfico de densidad
likert.density.plot(l37,facet=TRUE,bw=0.5, 
                    legend = "Gráfico de densidad")

#Gráfico de calor
plot(l37, type="heat")

#FIN DEL SCRIPT