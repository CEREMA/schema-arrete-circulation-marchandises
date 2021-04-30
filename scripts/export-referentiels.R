# Se connecte à la base de données GPKG et en exporte les tables référentielles

library(RSQLite)
library(sf)

con <- dbConnect(RSQLite::SQLite(), dbname = "../gitlab/arretes-marchandises/OUTIL-DEMONSTRATEUR/outputs/arretes-marchandises.gpkg")
the_tables <- dbListTables(con)
the_tables <- the_tables[grep("^type", the_tables)]

for(elt in the_tables) {
  print(elt)
  f <- st_read(con, layer = elt)
  row <- paste(sprintf('"%s"', sort(f$lib)), collapse=",\n")
  print(row)
  fileConn<-file(elt)
  writeLines(row, fileConn)
  close(fileConn)
}
