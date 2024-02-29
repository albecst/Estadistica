datos <- read.table("C:/Users/alber/Desktop/estadistica felicidad.txt", header = TRUE) 

Calificaciones = datos$Calificaciones 

Tiempo_libre = datos$Tiempo_libre 

Horas_familia = datos$Horas_familia 

Edad = datos$Edad

Sueldo = datos$Sueldo

Mascotas = datos$Mascota

#Estudio bidimensional sueldo ~ Tiempo libre
plot(Tiempo_libre, Sueldo, pch = "x")
lmtiempo_libre_sueldo = lm(Sueldo ~ Tiempo_libre)
abline(lmtiempo_libre_sueldo, col = "blue", lwd = 2)

#Estudio bidimensional sueldo ~ Horas familia
plot(Horas_familia, Sueldo, pch = "x")
lmhoras_familia_sueldo = lm(Sueldo ~ Horas_familia)
abline(lmhoras_familia_sueldo, col = "blue", lwd = 2)

#Estudio bidimensional mascotas ~ Tiempo libre
plot(Tiempo_libre, Mascotas, pch = "x")
lmtiempo_libre_mascotas = lm(Mascotas ~ Tiempo_libre)
abline(lmtiempo_libre_mascotas, col = "blue", lwd = 2)

#Estudio bidimensional mascotas ~ Horas familia
plot(Horas_familia, Mascotas, pch = "x")
lmhoras_familia_mascotas = lm(Mascotas ~ Horas_familia)
abline(lmhoras_familia_mascotas, col = "blue", lwd = 2)

#Estudio bidimensional edad ~ Tiempo libre
plot(Tiempo_libre, Edad, pch = "x")
lmtiempo_libre_edad = lm(Edad ~ Tiempo_libre)
abline(lmtiempo_libre_edad, col = "blue", lwd = 2)

#Estudio bidimensional edad ~ Horas familia
plot(Horas_familia, Edad, pch = "x")
lmhoras_familia_edad = lm(Edad ~ Horas_familia)
abline(lmhoras_familia_edad, col = "blue", lwd = 2)

