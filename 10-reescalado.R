install.packages("scales")
library("scales")

students <- read.csv("data/data-conversion.csv")

#reescalado de forma lineal
students$Income.rescaled <- rescale(students$Income)
#equivalente a:
(students$Income - min(students$Income))/(max(students$Income)-min(students$Income))

#reescalado en otro rango de valores
students$Income.rescaled <- rescale(students$Income, to= c(0,100))

rescale.many <- function(dataframe, cols) {
  names <- names(dataframe)
  for(col in cols) {
    name <- paste(names[col], "rescaled", sep=".")
    dataframe[name] <- rescale(dataframe[,col])
  }
  cat(paste("Hemos reescalado ", length(cols), " variable(s)"))
  dataframe
}

students <- rescale.many(students, c(1, 4))
