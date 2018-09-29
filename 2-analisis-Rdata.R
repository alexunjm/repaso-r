clientes <- c("Alex", "Andrea", "Martina")
fechas_como_texto <- c("2017-05-13", "2017-12-26", "2018-11-09")
fechas <- as.Date(fechas_como_texto)
pago <- c(123,12.5,156.7)

pedidos <- data.frame(clientes, fechas, pago)

clientes_vip = clientes[c(2,3)]

save(pedidos, clientes_vip, file = "repaso-r/data/pedidos.Rdata")
saveRDS(pedidos, file = "repaso-r/data/pedidos.rds")

# limpiar datos después de guardar
remove(pedidos)


#cargar datos (sobreescribe sin previo aviso si ya existen)
load("repaso-r/data/pedidos.Rdata")

orders <- readRDS("repaso-r/data/pedidos.rds")

data("iris")
data("cars")

#guarda toda la información de la sesión actual
save.image("repaso-r/data/alldata.Rdata")

primos = c(1,2,3,5,7,11,13)
potenciasDe2 = c(2,4,8,16,32,64,128,256)

save(list = c("primos", "potenciasDe2"), file = "repaso-r/data/primos_y_potenciasDe2.Rdata")

# igual que load, pero saca warning si ya existen y quieres sobreescribir
attach("repaso-r/data/primos_y_potenciasDe2.Rdata")
