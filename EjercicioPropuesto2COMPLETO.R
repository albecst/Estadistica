#a)

RegA = read.table("C:/Users/alber/Desktop/RegiónA.txt", header = TRUE)
RegB = read.table("C:/Users/alber/Desktop/RegiónB.txt", header = TRUE)

#c)

DiámetroA <- c(8.3,8.6,8.8,10.5,10.5,10.8,11.0,11.1,11.2,11.3,11.4,11.4,11.7,12.0,12.9,12.9)
Cuantil03A = quantile (DiámetroA, probs = c(0.3))

#d)

AlturaB <- c(86,71,64,78,80,74,72,77,81,82,80,80,80,87)
Cuantil075B = quantile (AlturaB, probs = c(0.75))

#e)

VolumenA <- c(10.3,10.3,10.2,16.4,18.8,19.7,15.6,NA,22.6,19.9,24.2,21.0,21.4,21.3,19.1,22.2,33.8)
Media_VolumenA = mean(VolumenA, na.rm = TRUE)
Qvar_A = var(VolumenA, na.rm = TRUE)
Var_A = Qvar_A * 16/17
desv_tipicaA = sqrt(Var_A)
Coeficiente_VariaciónA = desv_tipicaA / Media_VolumenA

VolumenB <- c(27.4,25.7,24.9,NA,31.7,36.3,38.3,42.6,55.4,55.7,58.3,NA,51.0,77.0)
Media_VolumenB = mean(VolumenB, na.rm = TRUE)
Qvar_B = var(VolumenB, na.rm = TRUE)
Var_B = Qvar_B * 16/17
desv_tipicaB = sqrt(Var_B)
Coeficiente_VariaciónB = desv_tipicaB / Media_VolumenB
#Es más homogéneo el VolumenA, ya que tiene un valor más cercano a 0 que VolumenB

#f)

AlturaA <- c(70,65,63,72,81,83,66,75,80,75,79,76,76,69,75,74,85)
Media_AlturaA = mean(AlturaA, na.rm = TRUE)
Media_AlturaB = mean(AlturaB, na.rm = TRUE)
Media_AlturaB > Media_AlturaA
#La altura media es mayor en la región B

Mediana_AlturaA = median(AlturaA, na.rm = TRUE)
Mediana_AlturaB = median(AlturaB, na.rm = TRUE)
Mediana_AlturaA < Mediana_AlturaB
#La altura mediana menor se encuentra en la región A



