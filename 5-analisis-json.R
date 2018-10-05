install.packages("jsonlite")
library(jsonlite)

# obtener un json desde un archivo en R
jsondata.1 <- fromJSON("repaso-r/data/students.json")
# sacar solo los nombres del array
jsondata.1$Name

jsondata.2 <- fromJSON("repaso-r/data/student-courses.json")

# debemos tener instalado curl en el sistema operativo
# sudo apt-get install libcurl4-openssl-dev
install.packages("curl")
library(curl)
#jsondata.2_web <- fromJSON("https://raw.githubusercontent.com/joanby/r-course/master/data/tema1/student-courses.json")

# json por get
url_finance = "http://www.floatrates.com/daily/usd.json"
jsondata.2_web <- fromJSON(url_finance)

currency.data = jsondata.2_web$list$resources$resource$fields
currency.data[1:5,]
currency.data[1:5,1:2]
currency.data[c(1,64,15),]

# prueba local
localurl = "http://localhost:3000/api"
jsondata.2_web <- fromJSON(localurl)
jsondata.2_web$status
