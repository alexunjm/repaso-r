housing.data <- read.csv("data/housing-with-missing-value.csv",
                         header = TRUE,
                         stringsAsFactors = FALSE)
install.packages("Hmisc")
library("Hmisc")

housing.data.copy1 <- housing.data
housing.data.copy1$ptratio <- impute(housing.data.copy1$ptratio, mean)
housing.data.copy1$rad <- impute(housing.data.copy1$rad, mean)

summary(housing.data.copy1)

housing.data.copy2 <- housing.data
housing.data.copy2$ptratio <- impute(housing.data.copy2$ptratio, median)
housing.data.copy2$rad <- impute(housing.data.copy2$rad, median)

summary(housing.data.copy2)

housing.data.copy3 <- housing.data
housing.data.copy3$ptratio <- impute(housing.data.copy3$ptratio, 18)
housing.data.copy3$rad <- impute(housing.data.copy3$rad, 7)

summary(housing.data.copy3)

# análisis importante de los datos faltantes
install.packages("mice")
library("mice")
md.pattern(housing.data)


install.packages("VIM")
library("VIM")
aggr(housing.data)

aggr(housing.data, col=c("green", "red"), numbers = TRUE )

aggr(housing.data,
     col=c("green", "red"),
     numbers = TRUE,
     sortVars = TRUE,
     labels = names(housing.data), 
     cex.axis = 0.7 #tamaño de la fuente para que quepan las variables
)

aggr(housing.data,
     col=c("green", "red"),
     numbers = TRUE,
     sortVars = TRUE,
     labels = names(housing.data), 
     cex.axis = 0.7, #tamaño de la fuente para que quepan las variables
     gap = 1, #standard 5
     ylab = c("histograma de NAs", "Patron") #nombres de los ejes
)
