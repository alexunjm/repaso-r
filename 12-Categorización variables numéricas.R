students <- read.csv("data/data-conversion.csv")

breakPoints <- c(-Inf, 10000, 31000, Inf)
names <- c("low", "average", "high")

students$Income.cat <- cut(students$Income, breaks = breakPoints, labels = names)
