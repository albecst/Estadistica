#1)
Altura = c(1.71, 1.68, 1.58, 1.67, 1.71, 1.69, 1.67, 1.58, 1.61, 1.62, 1.72, 1.72, 1.68, 1.73, 1.58, 1.63, 1.70, 1.65, 1.65, 1.68)
Ciudad <- factor (c("Madrid", "Barcelona", "Bilbao", "Barcelona", "Bilbao", "Valencia", "Madrid", "Barcelona", "Bilbao", "Barcelona", "Bilbao", "Valencia", "Valencia", "Madrid", "Valencia", "Madrid", "Madrid", "Barcelona", "Bilbao", "Barcelona"), levels = c("Madrid", "Barcelona", "Bilbao", "Valencia"))
data.frame(Ciudad,Altura) #Para que lo veas ordenado

#2)
Media = mean(Altura)
Mediana = median(Altura)
RIQ = IQR(Altura, na.rm = FALSE)

#3)
quantile(Altura, probs = (0.6))
quantile(Altura, probs = (0.88))

#4)
quasivar = var(Altura, na.rm = FALSE)
var = quasivar * 19/20
dt = sqrt(var)

#5) Para saber si es homogénea, debemos calcular su coeficiente de variación.
CV = dt/Media
#Como podemos apreciar, a pesar de que el coeficiente de variación de Pearson es cercano a 0, no es 0, así que no podemos decir que la altura es homogénea en su totalidad.

#6)
diagrama_de_sectores = pie(table(Ciudad), col = c("red","yellow","orange","gold"), main = "Ciudades")

#7)
boxplot(Altura, xlab = "Alturas", main = "Gráfico Caja y Bigotes de la variable Altura", range = 0)
#No existe ningún dato atípico, este gráfico nos lo mostraría.

#8)
k = 5
A = diff(range(Altura))/k
L1 = min(Altura)
L = L1+A*(0:k)
marcas = (L[1:k]+L[1:k+1])/2 
Altura_agrupada = cut(Altura, breaks=L, right=FALSE, include.lowes = TRUE)

#9)
fabs = table(Altura_agrupada)
frel = prop.table(Altura)
fabsacu = cumsum(fabs)
frelacu = cumsum(frel)
TABLA <- data.frame(fabs)

#10)
hist(Altura, breaks=L, main = "Histograma de frecuencias absolutas")