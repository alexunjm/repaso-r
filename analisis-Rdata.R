clientes <- c("Alex", "Andrea", "Martina")
fechas_como_texto <- c("2017-05-13", "2017-12-26", "2018-11-09")
fechas <- as.Date(fechas_como_texto)
pago <- c(123,12.5,156.7)

pedidos <- data.frame(clientes, fechas, pago)

save(pedidos, file = "repaso-r/data/pedidos.Rdata")
saveRDS(pedidos, file = "repaso-r/data/pedidos.rds")
