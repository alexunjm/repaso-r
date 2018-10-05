family.salary = c(40000, 60000, 70000, 80000, 50000, 70000, 80000)
family.size = c(4, 3, 2, 5, 5, 4, 5)
family.car = c("Lujo", "Compacto", "Utilitario", "Lujo", "Compacto", "Utilitario", "Lujo")

family <- data.frame(family.salary, family.size, family.car)

#unique(family)#devuelve objeto del mismo tipo sin duplicaciones

family.unique <- unique(family)

duplicated(family)

family[duplicated(family),]#solo los duplicados
