# Réordonne la liste des usages de véhicules

library(tidyverse)

# Usages du véhicule (VEH_USAGE) ----

s <- "Services publics,Livraison,Transport de gaz,Transport de carburant,Desserte locale : déménageur, convois funéraires,Riverains,Commerçant sédentaire,Commerçant nomade,Transport de fonds,Bennes à ordures ménagères,Véhicules municipaux,Véhicules de police,Véhicules de secours,Transports en commun,Véhicules munis d'une autorisation,Professions médicales,Taxis,Transport de matières dangereuses,Poids lourds d'urgence,Voitures de Transport avec Chauffeur"

## Function
firstup <- function(x) {
  substr(x, 1, 1) <- toupper(substr(x, 1, 1))
  x
}

## Séparation virgules
s2 <- strsplit(s, ",") %>% {.[[1]]} %>%  as.character %>% sort %>% trimws() %>% firstup
print(paste(s2, collapse=","))

## Référentiel
write.table(s2, "array-veh-usage-ref.txt", row.names = FALSE, col.names = FALSE, quote = FALSE)

## Liste
s3 <- sprintf('[%s]', paste(sprintf('"%s"', s2), collapse=","))
fileConn<-file("array-veh-usages-liste.txt")
writeLines(s3, fileConn)
close(fileConn)

## Liste
s4 <- paste(sprintf('"%s"', s2), collapse="\n")
fileConn<-file("array-veh-usages-liste2.txt")
writeLines(s4, fileConn)
close(fileConn)

## Regex Array
# ^(7j/7|lundi|mardi|mercredi|jeudi|vendredi|samedi|dimanche|jours fériés|événements){1}(\|(7j/7|lundi|mardi|mercredi|jeudi|vendredi|samedi|dimanche|jours fériés|événements))*$
s5 <- sprintf("^(%s){1}(\\\\|(%s)))*$", paste(s2, collapse="|"), paste(s2, collapse="|"))
fileConn<-file("array-veh-usages-regex.txt")
writeLines(s5, fileConn)
close(fileConn)

# VEH_MOTOR ----

s2 <- c("Électrique","Gaz Naturel pour Véhicules","Hydrogène")

## Référentiel
write.table(s2, "array-veh-motor-ref.txt", row.names = FALSE, col.names = FALSE, quote = FALSE)

## Liste
s3 <- sprintf('[%s]', paste(sprintf('"%s"', s2), collapse=","))
fileConn<-file("array-veh-motor-liste.txt")
writeLines(s3, fileConn)
close(fileConn)

## Regex Array
# ^(7j/7|lundi|mardi|mercredi|jeudi|vendredi|samedi|dimanche|jours fériés|événements){1}(\|(7j/7|lundi|mardi|mercredi|jeudi|vendredi|samedi|dimanche|jours fériés|événements))*$
s4 <- sprintf("^(%s){1}(\\\\|(%s))*$", paste(s2, collapse="|"), paste(s2, collapse="|"))
fileConn<-file("array-veh-motor-regex.txt")
writeLines(s4, fileConn)
close(fileConn)

# VEH_CQA ----

s2 <- c(as.character(1:5),"NC")

## Liste
s3 <- sprintf('[%s]', paste(sprintf('"%s"', s2), collapse=","))
fileConn<-file("array-veh-cqa-liste.txt")
writeLines(s3, fileConn)
close(fileConn)

## Regex Array
# ^(7j/7|lundi|mardi|mercredi|jeudi|vendredi|samedi|dimanche|jours fériés|événements){1}(\|(7j/7|lundi|mardi|mercredi|jeudi|vendredi|samedi|dimanche|jours fériés|événements))*$
s4 <- sprintf("^(%s){1}(\\\\|(%s))*$", paste(s2, collapse="|"), paste(s2, collapse="|"))
fileConn<-file("array-veh-cqa-regex.txt")
writeLines(s4, fileConn)
close(fileConn)