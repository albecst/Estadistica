datos <- c(3, 15, 24, 28, 33, 35, 38, 42, 23, 38, 36, 34, 29, 25, 17, 7, 34, 36, 39, 44, 31, 26, 20, 11, 13, 22, 27, 47, 39, 37, 34, 32, 35, 28, 38, 41, 48, 15, 32, 13)

#Ejemplo var3
k=5
A= diff(range(datos))/k
L1= min(datos)
L = L1+A*(0:k)
marcas = (L[1:k]+L[1:k+1])/2 
datos_agrupados = cut(datos, breaks=L, right=FALSE)
fabs = table(datos_agrupados)

#Agrupando los datos en 10 intervalos de amplitud 5
k=10
A=5
Li=min(datos)
L=Li+A*(0:k)
marcas= (L[1:k]+L[1:k+1])/2
datos_agrupados2 = cut(datos, breaks=L, right=FALSE)
fabs=table(datos_agrupados2)


#b)
hist(datos, col = c("red"), main = "Puntuaciones Física")