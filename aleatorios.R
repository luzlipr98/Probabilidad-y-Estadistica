
#generar numero aleatorios para una muestra de 35 personas en una 
#población de 73 alumnas/os del 5to semestre de la LEP BENV

sample(x, side, replace=True/FALSE)

#Ejemplo
sample(1:73,35, replace = FALSE)
sample(1:70,34, replace=FALSE)


#Ejercicios

#1.1- Calcula el tamaño de muestra para una poblacion de 
#83 alumnas y alumnos que se encuentran en primer grado
#de la Licenciatura en Educación Primaria de la BENV.
N=83
m=39

#1.2.- Una vez que obtengas el tamaño de la muestra, 
#selecciona el número de lista de las personas que formaran
#parte de la muestra.
sample(1:83,39, replace = FALSE)

#1.3.- Crea un vector llamado muestra con los números de 
#lista de las personas que forman parte de la muestra.
muestra<-c(38, 10, 69, 25, 11, 47, 37, 33, 65, 36, 74,  7, 24,  4,
           59, 50, 43, 78, 73, 83, 71,  9, 39, 52, 75, 61,  6, 17,
           60, 54, 63, 48, 56, 34, 44, 51, 64, 42, 70)
View(muestra)

#2.- Repite el ejercicio anterios ahora para una poblacion
# de 90 alumnas y alumnos de integran el segundo año de la
#licenciatura en Educación Primaria de la BENV.
N=90
m=42

sample(1:90,42, replace = FALSE)

muestra_1<-c(22, 17, 54, 35, 59, 71, 70, 4, 37, 5, 67, 25, 85, 78, 27,
            62, 14, 21, 42, 40, 11, 52, 77, 75, 80, 20, 50, 66, 3, 26,
            76, 15, 45, 41, 87, 7, 48, 72, 28, 18, 31, 57)


#3.- Determina el número e identifíca a las personas que participarán
#en un estudio de seguimiento de egresados de la generación
#2015-2019 de las 5 licenciaturas de la BENV.

#Primaria: 78 personas egresadas.
N=78
m=36

sample(1:78,36, replace = FALSE)

muestra_prim<-c(66, 61, 75, 15, 67, 78, 33,  3, 24, 57, 22, 43, 32, 20,
                74, 70, 44,  6, 52, 48, 72, 17, 12, 63, 56,  9, 68,  2,
                36,  5, 62, 73,  4, 29, 34, 19)

#Preescolar: 84 personas egresadas.
N=84
m=38

sample(1:84,38, replace = FALSE)

muestra_prees<-c(68, 81,  2, 80, 21, 66, 78, 22, 36,  9, 14, 18, 41,  6,
                 65, 53, 34, 35, 74, 20, 49,  3, 44, 69, 32, 33, 56, 62,
                 8, 47, 77, 83, 13, 71, 70,  5, 59, 61)

#Física: 35 personas egresadas.
N=35
m=19

sample(1:35,19, replace = FALSE)

muestra_fis<-c(19,  4,  8, 12, 16, 24, 22, 33, 15,  9,  1,  5, 10, 29,
               30, 27, 14, 31, 21)

#Telesecundaria: 83 personas egresadas.
N=83
m=37

sample(1:83,37, replace = FALSE)

muestra_tele<-c(65, 16, 14,  2, 76, 20, 17, 82, 33, 43, 25, 15, 51, 6, 
                31, 18, 66, 70, 13, 80, 55, 73,  7, 41, 47, 34,  5, 39,
                74, 50, 12,  9, 67, 19, 42, 68, 23)

#Especial: 25 personas.
N=25
m=13

sample(1:25,13, replace = FALSE)

muestra_esp<-c(19, 20,  3, 10,  4,  2,  5, 22,  1, 12, 25, 13, 17)
