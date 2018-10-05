housing.data <- read.csv("data/housing-with-missing-value.csv",
                     header = TRUE,
                     stringsAsFactors = FALSE)
#MUY IMPORTANTE!!
summary(housing.data)

## eliminar todas las observaciones que tienen algún NA
housing.data.1 <- na.omit(housing.data)
summary(housing.data.1)

## filtrado selectivo
## eliminar las na de algunas cols
drop_na <- c("rad") #estas no las borra

housing.data.2 <- housing.data[
  complete.cases(
    housing.data[,!(names(housing.data))%in% drop_na]
    ),]
summary(housing.data.2)

## Eliminar toda una col del dataframe (ACTUALIZA EL ORIGINAL)
housing.data$rad <- NULL
