1º)
datos <- read.table("C:/Users/alber/Desktop/notashoras.txt", header = TRUE)
estadistica = datos$Est
quimica = datos$Qui
geografia = datos$Geo
horas = datos$Horas

a)
df <- data.frame("Notas" = estadistica,"Notas" = quimica, "Notas" = geografia, horas)
#Cómo se cambia el nombre a un df???

b)
plot(estadistica, quimica ,pch="+", cex = 2)
lmEQ= lm(estadistica~quimica)
abline(lmEQ, col = "blue", lwd=2)