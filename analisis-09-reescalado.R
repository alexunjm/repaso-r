install.packages("scales")
library(scales)

estudiantes <- read.csv("repaso-r/data/data-conversion.csv")

estudiantes$Income.rescaled <- rescale(estudiantes$Income)
# rescaled es equivalente a realizar el siguiente cálculo
(estudiantes$Income - min(estudiantes$Income))/
  (max(estudiantes$Income) - min(estudiantes$Income))

## valores reescalados de 0 a 100
rescale(estudiantes$Income, to = c(0, 100))


rescale.many <- function(dataframe, cols){
  names <- names(dataframe)
  for(col in cols){
    name <- paste(names[col], "rescaled", sep = ".")
    dataframe[name] <- rescale(dataframe[,col]) 
  }
  cat(paste("Hemos reescalado ", length(cols), " variable(s)"))
  dataframe
}


estudiantes <- rescale.many(estudiantes, c(1,4))
