datos <- read.table("C:/Users/alber/Desktop/TablaR_02.txt", header = TRUE)
datos

datos[c(3,4),]

datos$Tensión_arterial[2] > datos$Tensión_arterial[5]

(datos$Pulso[1]+datos$Pulso[3]+datos$Pulso[4])/3

sqrt(datos$Tensión_arterial[4])

