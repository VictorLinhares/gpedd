
source("load_json.R")
paginas.total <- 1137
paginas.registros <- paginas.total * 16


i <- 0
for( i in seq(paginas.total)) {
  print (i)
  # write.csv(x = table, file = past("csv/", "pagina_", i, ".csv"))
}
  
