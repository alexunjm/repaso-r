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


#cargar datos
load("repaso-r/data/pedidos.Rdata")

orders <- readRDS("repaso-r/data/pedidos.rds")

data("iris")
data("cars")
