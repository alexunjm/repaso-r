
housing <- read.csv("data/BostonHousing.csv")

#estandarización - distribución normal
# los datos alejados del c(-1, 1) se consideran "atípicos"
# resta el promedio y divide por la desviación
housing.z <- scale(housing)
# igual que
housing.z <- scale(housing, center = TRUE, scale = TRUE)

# NO TIENE CAMBIO ALGUNO DEL ORIGINAL
# no resta ni divide
housing.none <- scale(housing, center = FALSE, scale = FALSE)

#Ajustarle al promedio (RESTA EL PROMEDIO)
housing.mean <- scale(housing, center = TRUE, scale = FALSE)

#Ajustarle por la desviación típica (SOLO DIVIDE POR LA DESVIACIÓN TÍPICA)
#sd = sqrt(sum(x^2)/(n-1))
housing.sd <- scale(housing, center = FALSE, scale = TRUE)

scale.many = function(dataframe, cols) {
  names <- names(dataframe)
  for(col in cols) {
    name <- paste(names[col], "z", sep = ".")
    dataframe[name] <- scale(dataframe[,col])
  }
  cat(paste("Hemos normalizado ", length(cols), " variable(s)"))
  dataframe
}

housing <- scale.many(housing, c(1, 3, 5:8))
