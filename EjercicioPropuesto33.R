#a)
media = mean(datos$potencia, na.rm = TRUE)
mediana = median(datos$potencia, na.rm = TRUE)
Percentil47 = quantile(datos$potencia, probs = c(0.47,0.54,0.82))

#b)
desv_tipica = sd(datos$potencia, na.rm = TRUE)*(151-1)/151
range(datos$potencia)
var = var(datos$potencia, na.rm = TRUE)*(151-1)/151

#c)
k = 10
A = diff(range(datos$potencia))/k
Li = min(datos$potencia)
L = Li+A*(0:k)
marcas = (L[1:k]+L[1:k+1])/2
potencia_agrupada = cut(datos$potencia, breaks=L, right=FALSE)
fabs = table(potencia_agrupada)

#d)
#f.absolutas
hist(datos$potencia, col = "red", main = "Potencias")

#f.absolutas.acumuladas
#Hay que usar cumsum(abs)
