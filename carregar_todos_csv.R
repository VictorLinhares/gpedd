
source("config.R")

carregar_todos_csv <- function() {
  arquivos <- list.files(path = "csv")
  arquivos <- arquivos[grepl("pagina\\d+\\.csv", arquivos)]
  i <- 0
  table <- FALSE
  iniciado <- FALSE
  for(i in arquivos) {
    if (iniciado == FALSE) {
      iniciado <- TRUE
      table <- read.csv(file = paste("csv/" , i, sep = ""), encoding = charset)
    } else {
      table <- rbind(table, 
                     read.csv(file = paste("csv/" , i, sep = ""), encoding = charset)
                     )
    }
  }
  return(table)
}
