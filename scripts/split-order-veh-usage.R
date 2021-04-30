# Réordonne la liste des usages de véhicules

library(tidyverse)

s <- "Services publics,Livraison,Transport de gaz,Transport de carburant,Desserte locale : déménageur, convois funéraires,Riverains,Commerçant sédentaire,Commerçant nomade,Transport de fonds,Bennes à ordures ménagères,Véhicules municipaux,Véhicules de police,Véhicules de secours,Transports en commun,Véhicules munis d'une autorisation,Professions médicales,Taxis,Transport de matières dangereuses,Poids lourds d'urgence,Voitures de Transport avec Chauffeur"

firstup <- function(x) {
  substr(x, 1, 1) <- toupper(substr(x, 1, 1))
  x
}

s2 <- strsplit(s, ",") %>% {.[[1]]} %>%  as.character %>% sort %>% trimws() %>% firstup

print(paste(s2, collapse=","))

s3 <- sprintf('[%s]', paste(sprintf('"%s"', s2), collapse=","))
fileConn<-file("array-veh-usages.txt")
writeLines(s3, fileConn)
close(fileConn)
