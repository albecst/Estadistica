Altura = c(1.71,1.68,1.58,1.67,1.71,1.69,1.67,1.58,1.61,1.62,1.72,1.72,1.68,1.73,1.58,1.63,1.7,1.65,1.65,1.68)
Ciudad <- factor (c("Madrid", "Barcelona", "Bilbao", "Barcelona", "Bilbao", "Valencia", "Madrid", "Barcelona", "Bilbao", "Barcelona", "Bilbao", "Valencia", "Valencia", "Madrid", "Valencia", "Madrid", "Madrid", "Barcelona", "Bilbao", "Barcelona"), levels = c("Madrid", "Barcelona", "Bilbao", "Valencia"))

#a)
Media = mean(Altura)
Mediana = median(Altura)
RIQ = IQR(Altura, na.rm = FALSE)