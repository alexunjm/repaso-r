data <- read.csv("repaso-r/data/missing-data.csv", na.strings = "")
## creamos una nueva variable (columna) llamada Income.mean
## usando la función ifelse validamos si el dato de la columna Income es na, 
##  le ponemos la media de todos los datos, en caso contrario, dejamos el valor original
data$Income.mean <- ifelse(is.na(data$Income), mean(data$Income, na.rm = TRUE), data$Income)

## para las variables categóricas (no numéricas)
## se suele utilizar reemplazar los NA por un dato aleatorio extraido 
## de una muestra aleatoria de los demás datos que conocemos

### reemplazo aleatorio (impute: imputado)
rand.impute <- function(x) {# x vector de datos que puede contender valores NA
  #vector del mismo tamaño que x con booleanos T/F dependiendo si son NA
  missing <- is.na(x)
  # contamos cuantos valores son NA
  n.missing <- sum(missing)
  # datos con valores diferentes a NA en x
  x.obs <- x[!missing]
  # por defecto lo mismo entrado por parámetro
  imputed <- x
  # los valores de los datos faltantes los reemplazamos 
  # por los valores de una muestra de los que si conocemos
  imputed[missing] <- sample(x.obs, n.missing, replace = TRUE)
  return (imputed)
}

random.impute.data.frame <- function (dataframe, cols) {
  names <- names(dataframe)
  for(col in cols) {
    name <- paste(names[col], "imputed", sep = ".")
    dataframe[name] <- rand.impute(dataframe[,col])
  }
  dataframe
}

data <- read.csv("repaso-r/data/missing-data.csv", na.strings = "")
data$Income[data$Income == 0] <- NA # hacemos los ceros NA para que apliquen tmbn en la función
data.imputed <- random.impute.data.frame(data, c(1,2))
