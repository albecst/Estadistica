Raza <- c("Blanca","Negra","Blanca","Blanca","Negra","Negra","Negra","Blanca","Blanca","Blanca")

barplot (Raza2,col = c ("red", "blue"), xlab = "Raza", ylab = "Frecuencias absolutas")

pie (Raza2, col = c ("red", "blue"), main = "Diagrama de sectores para Raza")

hist (Edad2, col="red", main = "Histograma de Edad", ylab = "Frecuencia absoluta", xlab = "Edades")

var3 = read.table("C:/Users/alber/Desktop/"Ejercicio_guiado3.txt", header = FALSE) [,1]


edades <- read.table("C:/Users/alber/Desktop/cut.txt", header = FALSE) [,1]

edades <- cut(edades, breaks = c(0,5,11,18,30), labels = c("Primera infancia", "Infancia", "Adolescencia", "Juventud"))

barplot(table(edades), cex.names = 0.8, main="Personas por etapas de vida",
