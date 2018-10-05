# install.packages("XML")
# library(XML)

# ruta
url_xml = "repaso-r/data/cd_catalog.xml"
# apuntador
xmldoc = xmlParse(url_xml) # XMLInternalDocument
# sacar el nodo raíz
rootNode = xmlRoot(xmldoc)
# ver el primer elemento dentro del root
rootNode[1]

# crea una fila por cada elemento encontrado dentro de cada cd (una matriz de valores)
cds_data <- xmlSApply(rootNode, function (x) xmlSApply(x, xmlValue))
# tranponemos la matriz y quitamos los nombres de las filas (creamos un dataframe)
cds.catalog <- data.frame(t(cds_data), row.names = NULL)
head(cds.catalog, 2)
cds.catalog[1:5,]

# xpathSAply()
# getNodeSet()


# TRABAJANDO DESDE UN HTML

# ruta del html
url_html <- "repaso-r/data/WorldPopulation-wiki.htm"
# sacar todas las tablas del html
tables <- readHTMLTable(url_html)
names(tables)
# sacar la sexta (6) tabla (doble corchete porque es lista de listas)
most_populated = tables[[6]]
# mostrar las 3 primeras filas de la tabla
head(most_populated, 3)

# no sacar todas las tablas, sino sacar directamente la que quiero
custom_table <- readHTMLTable(url_html, which = 6)
