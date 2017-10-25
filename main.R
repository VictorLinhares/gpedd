
source("load_json.R")
source("carregar_todos_csv.R")

paginas.total <- 1137
paginas.registros <- paginas.total * 16

data_file <- "csv/dados.csv"


if (file.exists(data_file)) file.remove(data_file)
i <- 0
for( i in seq(paginas.total)) {
  data_file <- paste("csv/", "pagina", i, ".csv", sep = "")
  table <- readFromApi(i)
  write.csv(x = table, 
              file = data_file,
              fileEncoding = charset)
}

write.csv(x = carregar_todos_csv(),
          file = "todos.csv",
          fileEncoding = charset)
