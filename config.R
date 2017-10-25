library(curl)

charset <- "UTF-8"# "ISO-8859-1"
colunas <- c("Proposicao", "DataProtocolo", "Autor", "Ementa", "DtInformada", "Situacao", "Localizacao")
api_host <- "http://177.136.123.149/grid_prop/index.php"

http_handle <- new_handle()
handle_cookies(http_handle)