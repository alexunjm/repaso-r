
#datos faltantes

## para los espacios en blanco considerados strings
data <- read.csv('repaso-r/data/missing-data.csv', na.strings = "")

## para quitar de la muestra los datos que tengan valores faltantes
data.cleaned <- na.omit(data)

## validar si un dato es na
is.na(data[4,2])
is.na(data[4,1])

# validar en toda una columna los na
is.na(data$Income)

# limpiar solo los datos que en la columna income tengan na
data.income.cleaned <- data[!is.na(data$Income),]

## devuelve FALSE de los casos que tienen datos faltantes (al menos un dato faltante)
complete.cases(data)
## funciona de la misma forma que na.omit
data.cleaned.2 <- data[complete.cases(data),]

# convertir los ceros de income en na
data$Income[data$Income==0]
data$Income[data$Income==0] <- NA


#Medidas de centralización y dispersión
## si tiene NA no me saca el promedio
mean(data$Income)
## Elimina los NA para no tenerlos en cuenta en el promedio
mean(data$Income, na.rm = TRUE)

#desviación estandar
sd(data$Income)
sd(data$Income, na.rm = TRUE)
