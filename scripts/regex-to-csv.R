create_csv <- function(s) {
s1 <- gsub("^\\^\\((.*)\\)\\{1\\}.*$", "\\1", s)
s2 <- strsplit(s1, "\\|")[[1]]
df <- data.frame(id = 1:length(s2), valeurs = s2)
return(df)
}

# VEH_USAGE
s <- "^(Autocars|Convois funéraires|Bennes à ordures ménagères|Citernes|Commerçant nomade|Commerçant sédentaire|Desserte locale : déménageur|Livraison|Poids lourds d'urgence|Professions médicales|Riverains|Services publics|Taxis|Transport de carburant|Transport de denrées animales ou végétales|Transport de fonds|Transport de gaz|Transport de matières dangereuses|Transports en commun|Véhicules d'approvisionnement des marchés|Véhicules effectuant du transport exceptionnel au sens de l'article R.433-1 du code de la route et munis d'une autorisation préfectorale|Véhicules de police|Véhicules de secours|Véhicules de transport de matériaux|Véhicules de travaux|Véhicules municipaux|Véhicules munis d'une autorisation|Véhicules porte-voitures|Voitures de transport avec chauffeur){1}(\\|(Autocars|Citernes|Convois funéraires|Bennes à ordures ménagères|Commerçant nomade|Commerçant sédentaire|Desserte locale : déménageur|Livraison|Poids lourds d'urgence|Professions médicales|Riverains|Services publics|Taxis|Transport de carburant|Transport de denrées animales ou végétales|Transport de fonds|Transport de gaz|Transport de matières dangereuses|Transports en commun|Véhicules d'approvisionnement des marchés|Véhicules effectuant du transport exceptionnel au sens de l'article R.433-1 du code de la route et munis d'une autorisation préfectorale|Véhicules de police|Véhicules de secours|Véhicules de transport de matériaux|Véhicules de travaux|Véhicules municipaux|Véhicules munis d'une autorisation|Véhicules porte-voitures|Voitures de transport avec chauffeur)))*$"
df <- create_csv(s)
write.table(df, "veh_usage.csv", row.names = F, col.names = T, sep=",")
write.table(df, "../../arretes-marchandises/OUTIL-DEMONSTRATEUR-light/data/veh_usage.csv", row.names = F, col.names = T, sep=",")

# VEH_MOTOR
s <- "^(Électrique|Gaz Naturel pour Véhicules|Hydrogène){1}(\\|(Électrique|Gaz Naturel pour Véhicules|Hydrogène))*$"
df <- create_csv(s)
write.table(df, "veh_motor.csv", row.names = F, col.names = T, sep=",")
write.table(df, "../../arretes-marchandises/OUTIL-DEMONSTRATEUR-light/data/veh_motor.csv", row.names = F, col.names = T, sep=",")

# VEH_CQA
s <- "^(100% électrique et Véhicules à hydrogène|1|2|3|4|5|Véhicule non classé){1}(\\|(100% électrique et Véhicules à hydrogène|1|2|3|4|5|Véhicule non classé))*$"
df <- create_csv(s)
write.table(df, "veh_cqa.csv", row.names = F, col.names = T, sep=",")
write.table(df, "../../arretes-marchandises/OUTIL-DEMONSTRATEUR-light/data/veh_cqa.csv", row.names = F, col.names = T, sep=",")

# VEH_TYPE
s <- "^(Poids lourds|Véhicules utilitaires légers|Vélo-cargos|Tous véhicules){1}(\\|(Poids lourds|Véhicules utilitaires légers|Vélo-cargos|Tous véhicules))*$"
df <- create_csv(s)
write.table(df, "veh_type.csv", row.names = F, col.names = T, sep=",")
write.table(df, "../../arretes-marchandises/OUTIL-DEMONSTRATEUR-light/data/veh_type.csv", row.names = F, col.names = T, sep=",")

# ZONE_TYPE
s <- c(
  "Arrondissement",
  "Commune entière",
  "Zone à Faible Émission",
  "Zone IRIS INSEE",
  "Aire piétonne"
)
df <- data.frame(id = 1:length(s), valeurs = s)
write.table(df, "zone_type.csv", row.names = F, col.names = T, sep=",")
write.table(df, "../../arretes-marchandises/OUTIL-DEMONSTRATEUR-light/data/zone_type.csv", row.names = F, col.names = T, sep=",")

# REGL_MODALITE
s <- c(
  "Autorise",
  "Interdit"
)
df <- data.frame(id = 1:length(s), valeurs = s)
write.table(df, "regl_modalite.csv", row.names = F, col.names = T, sep=",")
write.table(df, "../../arretes-marchandises/OUTIL-DEMONSTRATEUR-light/data/regl_modalite.csv", row.names = F, col.names = T, sep=",")
