install.packages("RODBC")
install.packages("RJDBC")#performance regular

install.packages("ROracle")
install.packages("RMySQL")

library(RMySQL)

con <- dbConnect(MySQL(),
                 dbname = "cqdigitaldb",
                 host = "db01.cqdigital.co",
                 port = 3306,
                 username = "cqdigital",
                 password = "CQdigitalMaster2020"
                 )

llmDst <- dbReadTable(con, "llamada_destino")
querysp1 <- dbGetQuery(con, "select * from sin_problemas")
