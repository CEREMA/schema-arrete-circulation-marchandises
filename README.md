# Schéma sur les arrêtés permanents de circulation

Ce schéma sur les arrêtés permanents de circulation a été construit en partenariat avec la Région Sud et la Fabrique de la Logistique portée par l'association OpenDataFrance.

[Voir la page sur la Fabrique de la Logistique d'OpenDataFrance](https://opendatafrance.gitbook.io/fablog/territoires/chantiers/partage-des-donnees/standardisation/arretes-de-circulation)

### `SECTION_REGL_ID`
- Titre : Identifiant de la section règlementée
- Description : Identifiant unique de la ligne.  
La ligne correspond à la voie ou la section de voie règlementée. Ce peut être une voie entière (la D9) ou une portion de voie (voir champ `SECTION_DEBUT` et `SECTION_FIN`).  
L'identifiant peut tout simplement être un identifiant auto-incrémenté (1, 2 ou 3,...).  
Si la section est issue d'OpenStreetMap, l'identifiant peut correspondre à la valeur osm_id de la voie règlementée (par exemple, 1326777). Si la section possède plusieurs règlements, l'identifiant peut être accompagné d'un suffixe incrémenté (par exemple 1326777-2 pour le second règlement associé à la voie).  
Il peut également être un identifiant propre à une structure ou une base de données (identifiant issu de la BDTOPO IGN, par exemple).
- Type : Chaîne de caractères
- Exemple : `1326777-3`
- Valeur : Obligatoire
- Contraintes : Unique

### `COLL_NOM`
- Titre : Nom de la Collectivité
- Description : Nom officiel de la Collectivité qui établit l'arrêté
- Type : Chaîne de caractères
- Exemple : Commune de Nîmes
- Valeur : Obligatoire

### `COLL_SIRET`
- Titre : Code SIRET de la Collectivité
- Description : Identifiant du Système d'Identification du Répertoire des Etablissements (SIRET) de la collectivité qui établit l'arrêté, composé de 9 chiffres SIREN + 5 chiffres NIC d’un seul tenant)
- Type : number, 14 chifffres 
- Pattern : `^\d{14}$`
- Exemple : `12345678900012`
- Valeur : Obligatoire

### `ARR_REF`
- Titre : Référence de l'arrêté
- Description : Référence ou numéro de l'arrêté auquel se réfère la règlementation. Si l'arrêté a été mis à jour, la référence doit être celle de l'arrêté mis à jour et non celle de l'arrêté originel.
- Type : Chaîne de caractères
- Exemple : `AP-13090-12`
- Valeur : Obligatoire

### `ARR_URL`
- Titre : URL de l'arrêté
- Description : URL par laquelle accéder à l'arrêté, et donc au règlement
- Type : Chaîne de caractères
- Exemple : [https://carte.st-paul-les-dax.fr/wp-content/uploads/2020/06/AM-10248.pdf](https://carte.st-paul-les-dax.fr/wp-content/uploads/2020/06/AM-10248.pdf)
- Valeur : Facultatif (dépend de la politique de la collectivité sur la publication des actes numérisés au format pdf)

### `ARR_OBJET`
- Titre : Objet de l'arrêté
- Description : Titre de l'arrêté
- Type : Chaîne de caractères
- Exemple : `Arrêté règlementant la circulation dans le quartier Mazarin et du palais de Justice`
- Valeur : Obligatoire

### `ARR_CONSIDERANT`
- Titre : Considérant de l'arrêté
- Description : Considérant (justificatif de la mise en place de la règlementation)
- Type : Chaîne de caractères
- Exemple : `Considérant la dangerosité que représente le trafic des PL aux abords des groupes scolaires`
- Valeur : Facultatif

### `ARR_MAJ`
- Titre : Arrêté mis à jour ?
- Description : Mentionne si l'arrêté a été l'objet d'une mise à jour. Dans ce cas, remplir la nouvelle référence de l'arrêté dans `ARR_REF`.
- Type : Booléen
- Exemple : `Vrai`
- Valeur : Facultatif

### `ARR_INSEE`
- Titre : Code INSEE de la commune sur laquelle s'applique l'arrêté
- Description : Code INSEE de la commune sur laquelle s'applique l'arrêté
- Type : number, 5 chiffres
- Patern : `^[a-zA-Z0-9\-\'\s\d\u00C0-\u00FF]+$`
- Exemple : `13090`
- Valeur : Obligatoire

### `REGL_ARTICLE`
- Titre : Article associé au règlement
- Description : Article associé au règlement lorsqu'il existe
- Type : Entier
- Exemple : 1
- Valeur : Facultatif

### `REGL_SOUS_ARTICLE`
- Titre : Sous article associé au règlement
- Description : sous article associé au règlement lorsqu'il existe
- Type : Chaîne de caractères
- Exemple : `1 bis`
- Valeur : Facultatif

### `REGL_MODALITE`
- Titre : Modalité d'interdiction ou d'autorisation de l'arrêté
- Description : Spécifie si l'arrêté interdit ou autorisé
- Type : Chaîne de caractères
- Valeurs possibles : 
 
		Autorise 
		Interdit
- Exemple : `Autorise`

### `ZONE_TYPE`
- Titre : Type de zone associée à la règlementation
- Description : Type de zone associée à la règlementation. Si la zone est une commune (valeur 'Commune'), alors le règlement s'applique à toute la commune.
- Type : Chaîne de caractères
- Exemple : `Quartier`
- Valeur : Facultatif
- Valeurs possibles
		
		Arrondissement
		Commune entière
		Quartier
		Zone à Faible Émission
		Zone IRIS de l'INSEE
		Zone piétonne

### `ZONE_REF`
- Titre : Nom ou identifiant de la zone associée à la règlementation
- Description : Nom ou identifiant de la zone associée à la règlementation (nom du quartier, arrondissement, identifiant ZFE, identifiant IRIS...)
- Type : Chaîne de caractères
- Exemples : `Quartier Mazarin`, `75056-2`
- Valeur : Facultatif

### `VEH_PTAC`
- Titre : Poids total autorisé en charge
- Description : Poids total autorisé en charge, exprimé en tonne. Ex. > 3.5 T, > 7.5 T, > 9 T, > 19 T. Si valeur de 3.5, alors Poids Total Autorisé en Chargé égal à > 3.5 T
- Type : Décimal
- Exemple : 7.5
- Valeur : Obligatoire
- Valeur maximale : 45

### `VEH_LONG`
- Titre : Longueur maximale
- Description : Longueur maximale exprimée en mètres
- Type : Décimal
- Exemple : 6.5
- Valeur : Facultatif
- Valeur maximale : 30

### `VEH_LARG`
- Titre : Largeur maximale
- Description : Largeur maximale exprimée en mètres
- Type : Décimal
- Exemple : 3.5
- Valeur : Facultatif
- Valeur maximale : 6

### `VEH_HAUT`
- Titre : Hauteur
- Description : Hauteur maximale exprimée en mètres
- Type : Décimal ?
- Exemple : 3
- Valeur : Facultatif
- Valeur maximale : 6

### `VEH_TYPE`
- Titre : Type de véhicule
- Description : Type de véhicule
- Type : Chaîne de caractères
- Valeurs possibles : 

		Poids Lourds
		Véhicules Utilitaires Légers 
- Exemple : `Poids Lourds`
- Valeur : Facultatif

### `VEH_USAGE`
- Titre : Type d'usage
- Description : Type d'usage
- Type : Array (sélection multiple)
- Valeurs possibles : 

		Convois funéraires
		Bennes à ordures ménagères
		Commerçant nomade
		Commerçant sédentaire
		Desserte locale : déménageur,
		Livraison
		Poids lourds d'urgence
		Professions médicales
		Riverains
		Services publics
		Taxis
		Transport de carburant
		Transport de fonds
		Transport de gaz
		Transport de matières dangereuses
		Transports en commun
		Véhicules de police
		Véhicules de secours
		Véhicules municipaux
		Véhicules munis d'une autorisation
		Voitures de Transport avec Chauffeur
- Exemple : `Bennes à ordures ménagères`
- Valeur : Facultatif

### `VEH_CQA`
- Titre : Vignettes crit'air
- Description : Liste des vignettes Crit’Air, séparées par une virgule
- Type : Array
- Valeurs possibles : 

		1
		2
		3
		4
		5
		NC
- Exemple : 2
- Valeur : Facultatif

### `PERIODE_DEBUT`
- Titre : Date d'entrée en vigueur des restrictions
- Description : Date d'entrée en vigueur des restrictions (en particulier pour les Zones à Faible Émission), exprimée selon le format international ISO8601 
- Type : Date
- Exemple : `2021-04-01`
- Valeur : Facultatif

### `PERIODE_JH`
- Titre : Type d'usage
- Description : Jours et heures de circulation autorisés pour la circulation exprimés selon le format OpeningHours d'OpenStreetMap ([https://wiki.openstreetmap.org/wiki/Key:opening_hours](https://wiki.openstreetmap.org/wiki/Key:opening_hours)). Ce format permet d'indiquer aussi les jours fériés (PH pour Public Holidays).
- Type : Chaîne de caractères
- Exemple : `Mo-Fr 08:00-12:00,13:00-17:30; Sa 08:00-12:00; PH off`
- Valeur : Facultatif

### `INTERV_DUREE`
- Titre : Durée maximale d'intervention
- Description : Durée maximale d'intervention (au niveau d'une aire piétonne, par exemple)
- Type : Chaîne de caractères
- Pattern : `[0-9]+:[0-9]+`
- Exemple : `03:00`
- Valeur : Facultatif 

### `INTERV_HMAX`
- Titre : Heure maximale à laquelle intervenir (au niveau d'une aire piétonne, par exemple)
- Description : Heure max à laquelle les véhicules doivent quitter l'aire piétonne, exprimée selon le format international ISO8601 (on pourrait prendre une convention plus simple, par hh:mm, 01:30 pour 1 heure 30 minutes?)
- Type : Chaîne de caractères
- Pattern : `[0-9]+:[0-9]+`
- Exemple : `22:00`
- Valeur : Facultatif 

### `SECTION_VOIE`
- Titre : Nom de la voie associée à la section règlementée
- Description : Nom de la voie associée à la section règlementée. 'NC' si application à une commune, une ZFE (etc...). Voir pour cela le champ zoneType.
- Type : Chaîne de caractères
- Exemple : Avenue Jean Dupont
- Valeur : Obligatoire

### `SECTION_COTE`
- Titre : Côté de la voie associé à la règlementation
- Description : Côté de la voie associé à la règlementation. Pair : concerne la circulation le long des adresses à chiffre pair.
- Type : Chaîne de caractères
- Valeurs possibles :

		Pair
		Impair
		Deux côtés
- Exemple : `Pair`
- Valeur : Facultatif

### `SECTION_DEBUT`
- Titre : Début de la section. 
- Description : Début de la section. Adresse ou coordonnées GPS depuis lesquelles la section règlementée commence. Coordonnées GPS conseillées
- Type : Chaîne de caractères
- Exemple : `43.54007,5.44027`
- Valeur : Facultatif

### `SECTION_FIN`
- Titre : Fin de la section. 
- Description : Fin de la section. Adresse ou coordonnées GPS depuis lesquelles la section règlementée commence. Coordonnées GPS conseillées
- Type : Chaîne de caractères
- Exemple : `42 bis avenue Jean Dupont`
- Valeur : Facultatif

### `GEOM_JSON`
 - Titre : Géométrie de la ligne au format GeoJSON 
- Description : Géométrie de la ligne au format GeoJSON (de l'anglais Geographic JSON, signifiant littéralement JSON géographique, est un format ouvert d'encodage d'ensemble de données géospatiales simples utilisant la norme JSON (JavaScript Object Notation).
- Type : Chaîne de caractères
- Exemple : 

		{ "type": "Feature", "geometry": { "type": "LineString", "coordinates": [ [102.0, 0.0], [103.0, 1.0], [104.0, 0.0], [105.0, 1.0] ] }
- Valeur : Facultatif

### `GEOM_SOURCE`
- Titre : Source de la géométrie
- Description : Source de la géométrie (OpenStreetMap, IGN,...) 
- Exemple : BDTOPO IGN 2021
- Valeur : Facultatif