students.data <- read.fwf("repaso-r/data/student-fwf.txt",
                             widths = c(4,15,20,15,4),
                             col.names = c("id", "nombre", "email", "carrera", "año")
                             )
students.data_header <- read.fwf("https://raw.githubusercontent.com/joanby/r-course/master/data/tema1/student-fwf-header.txt",
                             widths = c(4,15,20,15,4),
                             header = T, sep = '\t',
                             skip = 2
                             )
students.data_no_emails <- read.fwf("repaso-r/data/student-fwf.txt",
                          widths = c(4,15,-20,15,4),
                          col.names = c("id", "nombre", "carrera", "año")
                          )
