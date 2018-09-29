# read.csv2 es equivalente a read.csv(file, sep = ";", dec = ",")
# para tabulador sep = "\t"

# NA : not available
# para los strings NA : na.strings = "NA"
# manejar los strings como cadena de caracteres : stringsAsFactors = FALSE

# lectura de csv con header
auto <- read.csv("repaso-r/data/auto-mpg.csv", header = TRUE, sep = ",")
# nombres de las columnas
names(auto)
# mostrar los primeros 4 datos
head(auto, 4)

# lectura de csv sin cabecera
auto2 <- read.csv("repaso-r/data/auto-mpg-noheader.csv", header = FALSE, sep = ",")
head(auto2, 4)

# lectura de csv cabeceras personalizadas
auto3 <- 
  read.csv("repaso-r/data/auto-mpg-noheader.csv",
                  header = F, sep = ",",
                  col.names = c("numero", "millas_por_galeon",
                                "cilindrada", "desplazamiento",
                                "caballos_de_potencia", "peso",
                                "aceleración", "año", "modelo"
                                )
                  )
head(auto3, 2)

# lectura de csv desde internet
auto_from_internet = read.csv("https://raw.githubusercontent.com/joanby/r-course/master/data/tema1/WHO.csv")
head(auto_from_internet, 1)
names(auto_from_internet)
prueba <- head(auto_from_internet[c(1:10)], 5)
