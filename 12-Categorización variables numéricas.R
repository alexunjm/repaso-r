students <- read.csv("data/data-conversion.csv")

breakPoints <- c(-Inf, 10000, 31000, Inf)
names <- c("low", "average", "high")

# de forma manual
# clasificación cerrada por la derecha (from, to]
# si no pasamos los labels, se ve claramente el intervalo
students$Income.cat <- cut(students$Income, breaks = breakPoints, labels = names)
students$Income.cat2 <- cut(students$Income, breaks = breakPoints)

# dejara a R la decisión y que sea automática
students$Income.cat3 <- cut(students$Income,
                            breaks = 4,
                            c("lv1", "lv2", "lv3", "lv4")
                            )

#categórica a numérica
install.packages("dummies")
library("dummies")

students.dummy <- dummy.data.frame(students, sep=".")
# solo 1 col
dummy(students$State, sep=".")


students.dummyG <- dummy.data.frame(students, names = c("Gender"), sep=".")
