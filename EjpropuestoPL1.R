#a)
GrupoA = read.table("C:/Users/alber/Desktop/GrupoA.txt", header = TRUE)
GrupoB = read.table("C:/Users/alber/Desktop/GrupoB.txt", header = TRUE)

#b)
pie(table(GrupoA$Gr_SangA), col = c("blue", "yellow", "pink", "green"), main = "Grupos sanguíneos")
pie(table(GrupoB$Gr_SangB), col = c("blue", "yellow", "pink", "green"), main = "Grupos sanguíneos")

#c)
hist(GrupoA$EstaturaA, col = "red", main = "Estaturas del grupo A", xlab = "Estatura", ylab = "Frecuencia absoluta")
hist(GrupoB$EstaturaB, col = "red", main = "Estaturas del grupo B", xlab = "Estatura", ylab = "Frecuencia absoluta")
boxplot(GrupoA$EstaturaA, main = "Estaturas del grupo A") #Sí, x = 1.90, 1.65, 1.66
boxplot(GrupoB$EstaturaB, main = "Estaturas del grupo B") #No

#d)
quantile(GrupoA$EstaturaA, probs = c(0.4), na.rm = TRUE) #El dato máx del 40% de alturas más pequeñas es el 1.788
quantile(GrupoB$EstaturaB, probs = c(0.7), na.rm = TRUE) #Es 1.79

#e) #Homogeneidad de Edad y Estatura (CV = desv_tipica/media)
Media_EdadA = mean(GrupoA$EdadA)
quasivarianza = var(GrupoA$EdadA, na.rm = TRUE)
varianza = quasivarianza * 19/20
desv_típica = sqrt(varianza)
CV_EdadA= desv_típica/Media_EdadA

Media_EstaturaA = mean(GrupoA$EstaturaA, na.rm = TRUE)
quasivarianza_EstaturaA = var(GrupoA$EstaturaA, na.rm = TRUE)
varianza_EstaturaA = quasivarianza_EstaturaA * 19/20
desv_típica_EstaturaA = sqrt(varianza_EstaturaA)
CV_AlturaA = desv_típica_EstaturaA/Media_EstaturaA

Media_EdadB = mean(GrupoB$EdadB)
quasivarianzaB = var(GrupoB$EdadB, na.rm = TRUE)
varianzaB = quasivarianzaB * 19/20
desv_típicaB = sqrt(varianzaB)
CV_EdadB= desv_típicaB/Media_EdadB

Media_EstaturaB = mean(GrupoB$EstaturaB, na.rm = TRUE)
quasivarianza_EstaturaB = var(GrupoB$EstaturaB, na.rm = TRUE)
varianza_EstaturaB = quasivarianza_EstaturaB * 19/20
desv_típica_EstaturaB = sqrt(varianza_EstaturaB)
CV_AlturaB = desv_típica_EstaturaB/Media_EstaturaB

#La edad es más homogénea en el grupo A
#La estatura es más homogénea en el grupo B

#f)
Estatura_MediaA = mean(GrupoA$EstaturaA, na.rm = TRUE)
Estatura_MediaB = mean(GrupoB$EstaturaB, na.rm = TRUE)
#Es mayor la estatura media del grupo B

Estatura_MedianaA = median(GrupoA$EstaturaA, na.rm = TRUE)
Estatura_MedianaB = median(GrupoB$EstaturaB, na.rm = TRUE)
#Son iguales las alturas medianas

#g)
EdadA = read.table("C:/Users/alber/Desktop/GrupoA.txt", header = TRUE)[,2]
k = 5
A = diff(range(EdadA))/k
Li = min (EdadA)
L = Li+A*(0:k)
MCi=(L[1:k]+L[1:k+1])/2
EdadA_agrupada = cut(EdadA, breaks = L, right = FALSE)
fabsA = table(EdadA_agrupada)
hist(EdadA,breaks = L, col = "red", main = "Edad del grupo A", xlab = "Edad", ylab = "Frecuencia absoluta")

EdadB = read.table("C:/Users/alber/Desktop/GrupoB.txt", header = TRUE)[,2]
k = 5
AB = diff(range(EdadB))/k
LiB = min(EdadB)
LB = LiB+AB*(0:k)
MCiB=(LB[1:k]+LB[1:k+1])/2
EdadB_agrupada = cut(EdadB, breaks = LB, right = FALSE)
fabsB = table(EdadB_agrupada)
hist(EdadB,breaks = LB, col = "gold", main = "Edad del grupo B", xlab = "Edad", ylab = "Frecuencia absoluta")



