library(curl)

charset <- "ISO-8859-1"
colunas <- c("Proposição", "Data Protocolo", "Ementa", "D. Informada", "Situação", "Localização")
api_host <- "http://177.136.123.149/grid_prop/index.php"

http_handle <- new_handle()
handle_cookies(http_handle)