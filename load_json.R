
library("httr")
library("rjson")
source("config.R")

headers <- c(
  'Content-Type: text/html; charset=ISO-8859-1'
)

readFromApi <- function(page = 0) {
  pageParameter = page * 15 + 1
  data <- postForm(api_host,
                   nmgp_opcao= "ajax_navigate", 
                   script_case_init="9291", 
                   script_case_session="sfcv1ga7bk41se5ki3lbaull15", opc="rec",parm= pageParameter,
                   .encoding = charset)
  
  table <- readHTMLTable(fromJSON(data)$setValue[[3]][[2]], header = TRUE)
  table <- as.data.frame(table)
  table <- tail(x = table, n = nrow(table) - 1) # remove header 
  colnames(table) <- colunas
  
  return(table)
}



