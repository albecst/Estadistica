#a)
VariedadA <- table(DatosA$VariedadA)
VariedadB <- table(DatosB$VariedadB)
pie(VariedadA, col=c("yellow", "white", "pink"), main = "Diagrama de sectores de la VariedadA")
pie(VariedadB, col=c("yellow", "white", "pink"), main = "Diagrama de sectores de la VariedadB")

#b)
AlturaA <- DatosA$AlturaA
AlturaB <- DatosB$AlturaB
histA <- hist(AlturaA, col=c("red"), main = "Histograma de la variable altura A")
histB <- hist(AlturaB, col=c("red"), main = "Histograma de la variable altura B")

#c)
DiametroA <- DatosA$DiametroA
DiametroB <- DatosB$DiametroB
boxplot(DiametroA, xlab = "Diámetros", main = "Gráfico Caja y Bigotes de la variable Diámetros A")
#Los datos atípicos son x>13 y x<9