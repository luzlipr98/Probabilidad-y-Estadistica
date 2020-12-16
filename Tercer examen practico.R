
#Probabilidad de escoger una respuesta de 5 posibles
p= 1/5

#Espacio muestral (12 preguntas en total)
n=12

#Probabilidad de tener 4 respuestas correctas elegidas aleatoriamente
k= 4

dbinom(4, size = 12, prob=0.2)

#Probabilidad de escoger una respuesta de 5 posibles
p= 1/5

#Espacio muestral (12 preguntas en total)
n=12

#Probabilidad de tener cuatro o menos respuestas correctas aleatoriamente

#Probabilidad de escoger una respuesta de 5 posibles
p= 1/5

#Espacio muestral (12 preguntas en total)
n=12

#Probabilidad de tener 4 respuestas correctas elegidas aleatoriamente
k= 0,1,2,3,4

sum(dbinom(0:4, 12, 0.2))

#Probabilidad de tener 2 respuestas correctas elegidas aleatoriamente
k= 2

dbinom(2, size=12, prob=0.2)

#Probabilidad de tener 3 respuestas correctas elegidas aleatoriamente
k= 3

dbinom(3, size=12, prob=0.2)



#EJERCICIO DEL IPHONE
#Probabilidad de que salga uno de la caja
p=0.005

#Espacio muestral
n= 25

#Probabilidad de que salga defectuoso
k= 1

dbinom(1, size=25, prob=0.005)


#Probabilidad de que 35 alumnos lleguen en 15 minutos a la entrada de la escuela
#x= número de alumnos
#lamda= tiempo de llegada.
x=35
lamda=15

dpois(35,15)

#Probabilidad de que 50 alumnos lleguen en 15 minutos a la entrada de la escuela
#x= número de alumnos
#lamda= tiempo de llegada.
x=50
lamda=15

dpois(50,15)

#Probabilidad de que 34 alumnos lleguen en 5 minutos a la entrada de la escuela
#x= número de alumnos
#lamda= tiempo de llegada.
x=34
lamda=05

dpois(34,05)

#Probabilidad de que 60 alumnos se encuentren en la salida de la escuela en 5 minutos.
#x= número de alumnos
#lamda= tiempo en la salida.
x=60
lamda=05

dpois(60,05)

#Probabilidad de que 120 alumnos se encuentren en la salida de la escuela en 5 minutos.
#x= número de alumnos
#lamda= tiempo en la salida.
x=120
lamda=05

dpois(120,05)
