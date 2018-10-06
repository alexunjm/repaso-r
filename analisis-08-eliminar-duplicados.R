familia.salario = c(40000, 60000, 50000, 80000, 60000, 70000, 60000)
familia.personas = c(4, 3, 2, 2, 3, 4, 3)
familia.carro = c("Lujo", "Compacto", "Utilitario", "Lujo", 
               "Compacto", "Compacto", "Compacto")

familia <- data.frame(familia.salario, familia.personas, familia.carro)

## eliminar duplicados
familia.unique <- unique(familia)

## vector T/F si es duplicado o no
duplicated(familia)

## sacamos solo los datos duplicados
familia[duplicated(familia),]
