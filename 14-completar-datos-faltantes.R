housing.data <- read.csv("data/housing-with-missing-value.csv",
                         header = TRUE,
                         stringsAsFactors = FALSE)
install.packages("Hmisc")
library("Hmisc")

housing.data.copy1 <- housing.data
housing.data.copy1$ptratio <- impute(housing.data.copy1$ptratio, mean)
housing.data.copy1$rad <- impute(housing.data.copy1$rad, mean)

summary(housing.data.copy1)
