## arrete-permanent-circulation

Schéma des arrêtés permanents de circulation

Spécification du fichier d'échange relatif aux arrêtés permanents de circulation gérés par les collectivités.

- Schéma créé le : 04/30/21
- Site web : https://github.com/CEREMA/schema-arrete-circulation
- Version : 0.1.1
- Valeurs manquantes : `""`, `"NA"`, `"NaN"`, `"NC"`, `"N/A"`
- Clé primaire : `SECTION_REGL_ID`

### Modèle de données

|Nom|Type|Description|Exemple|Propriétés|
|-|-|-|-|-|
|SECTION_REGL_ID|chaîne de caractères|Identifiant unique de la ligne. La ligne correspond à la voie ou la section de voie règlementée. Ce peut être une voie entière (la D9) ou une portion de voie (voir champ `SECTION_DEBUT` et `SECTION_FIN`). L'identifiant peut tout simplement être un identifiant auto-incrémenté (1, 2 ou 3,...). Si la section est issue d'OpenStreetMap, l'identifiant peut correspondre à la valeur osm_id de la voie règlementée (par exemple, 133). Si la section possède plusieurs règlements, l'identifiant peut être accompagné d'un suffixe incrémenté (par exemple 133-2 pour le second règlement associé à la voie). Il peut également être un identifiant propre à une structure ou une base de données (identifiant issu de la BDTOPO IGN, par exemple).|133-3|Valeur obligatoire, Valeur unique|
|COLL_NOM (Nom de la collectivité)|chaîne de caractères|Nom de la collectivité.|Commune d'Aix-en-Provence|Valeur obligatoire|
|COLL_SIRET (Code SIRET de la collectivité)|chaîne de caractères|Identifiant du [Système d'Identification du Répertoire des Etablissements](https://fr.wikipedia.org/wiki/Syst%C3%A8me_d%27identification_du_r%C3%A9pertoire_des_%C3%A9tablissements) (SIRET) de la collectivité sur le territoire de laquelle sont situés les équipements collectifs publics répertoriés dans le jeu de données. Il est composé de 9 chiffres SIREN + 5 chiffres NIC d’un seul tenant.|22940028800010|Valeur obligatoire, Motif : `^\d{14}$`|
|ARR_REF (Référence de l'arrêté)|chaîne de caractères|Référence ou numéro de l'arrêté auquel se réfère la règlementation. Si l'arrêté a été mis à jour, la référence doit être celle de l'arrêté mis à jour et non celle de l'arrêté originel.|`AP-13090-12`|Valeur obligatoire|
|ARR_URL (URL d'accès de l'arrêté)|chaîne de caractères|Adresse internet par laquelle accéder à l'arrêté, et donc au règlement.|https://carte.st-paul-les-dax.fr/wp-content/uploads/2020/06/AM-10248.pdf|Valeur optionnelle, Motif : `^(https|http)?://(?:[a-z0-9\-]+\.)+[a-z]{2,6}(?:/[^/#?]+)+`|
|ARR_OBJET (Objet de l'arrêté)|chaîne de caractères|Objet ou titre de l'arrêté|Arrêté règlementant la circulation dans le quartier Mazarin et du palais de Justice|Valeur optionnelle|
|ARR_CONSIDERANT (Considérant de l'arrêté)|chaîne de caractères|Considérant est le justificatif de la mise en place de la règlementation|Considérant la dangerosité que représente le trafic des PL aux abords des groupes scolaires|Valeur optionnelle|
|ARR_DATE_CREATION (Date de création de l'arrêté)|date (format `%Y-%m-%d`)|Date de création ou de mise à jour de l'arrêté, au format ISO 8601 AAAA-MM-DD.|2021-04-30|Valeur obligatoire|
|ARR_MAJ (Arrêté mis à jour ?)|booléen|Valeurs considérées comme vraies : ['true', 'True', 'TRUE', '1', 'vrai', 'Vrai', 'VRAI']Valeurs considérées comme fausses : ['false', 'False', 'FALSE', '0', 'faux', 'Faux', 'FAUX']Spécifie si l'arrêté a été l'objet d'une mise à jour. Dans ce cas, remplir la nouvelle référence de l'arrêté dans `ARR_REF`.|TRUE|Valeur obligatoire|
|ARR_INSEE (Code INSEE)|chaîne de caractères|Code INSEE de la commune sur laquelle s'applique l'arrêté|75114|Valeur obligatoire, Taille minimale : 5, Taille maximale : 5, Motif : `^[a-zA-Z0-9\-\'\s\d\u00C0-\u00FF]+$`|
|REGL_ARTICLE (Article du règlement)|nombre entier|N° de l'article associé au règlement lorsqu'il existe|4|Valeur optionnelle|
|REGL_SOUS_ARTICLE (Sous-article du règlement)|chaîne de caractères|Un article peut se décomposer en plusieurs sous-articles, contenant chacun une règlementation particulière. Ces sous-articles ont des numérotations.|4 bis|Valeur optionnelle|
|REGL_MODALITE|chaîne de caractères|Modalité|Autorise|Valeur obligatoire, Valeurs autorisées : Autorise, Interdit|
|ZONE_TYPE|chaîne de caractères|Type de zone|Quartier|Valeur optionnelle, Valeurs autorisées : Arrondissement, Commune entière, Zone à Faible Émission, Zone IRIS INSEE, Zone piétonne|
|ZONE_REF (Nom ou identifiant de la zone associée à la règlementation)|chaîne de caractères|Nom ou identifiant de la zone associée à la règlementation (nom du quartier, arrondissement, identifiant ZFE, identifiant IRIS...).|Quartier Mazarin|Valeur optionnelle|
|VEH_PTAC (Poids total autorisé en charge)|nombre réel|Poids total autorisé en charge, exprimé en tonnes.|7.5|Valeur optionnelle, Valeur minimale : 0, Valeur maximale : 45|
|VEH_LONG (Longueur du véhicule)|nombre réel|Longueur maximale exprimée en mètres.|6.5|Valeur optionnelle, Valeur minimale : 0, Valeur maximale : 30|
|VEH_LARG (Largeur du Largeur)|nombre réel|Longueur maximale exprimée en mètres.|3.5|Valeur optionnelle, Valeur minimale : 0, Valeur maximale : 6|
|VEH_HAUT (Largeur du Largeur)|nombre réel|Longueur maximale exprimée en mètres.|2.5|Valeur optionnelle, Valeur minimale : 0, Valeur maximale : 6|
|VEH_TYPE|chaîne de caractères|Type de véhicule|Poids lourds|Valeur optionnelle, Valeurs autorisées : Poids lourds, Véhicules utilitaires légers|
|VEH_USAGE (Type d'usage)|chaîne de caractères|Type d'usage du véhicule|['Bennes à ordures ménagères', 'Véhicules de police']||
|VEH_MOTOR (Type de motorisation)|chaîne de caractères|Type de motorisation du véhicule.|['Électrique', 'Hydrogène']||
|VEH_CQA (Vignettes crit'air)|chaîne de caractères|Vignettes crit'air. Voir la [classification des vignettes Crit'Air](https://www.certificat-air.gouv.fr/docs/tableaux_classement.pdf) sur le site [certificat-air.gouv.fr](https://www.certificat-air.gouv.fr)|['1', '2', '3']||
|PERIODE_DEBUT (Date d'entrée en vigueur des restrictions)|date|Date d'entrée en vigueur des restrictions (en particulier pour les Zones à Faible Émission),, au format ISO 8601 AAAA-MM-DD.|2021-04-30|Valeur optionnelle|
|PERIODE_JH (Jours et heures de circulation)|chaîne de caractères|Jours et heures de circulation autorisés pour la circulation exprimés selon le format OpeningHours d'OpenStreetMap ([https://wiki.openstreetmap.org/wiki/Key:opening_hours](https://wiki.openstreetmap.org/wiki/Key:opening_hours)). Ce format permet d'indiquer aussi les jours fériés (PH pour Public Holidays).|Mo-Fr 08:00-12:00,13:00-17:30; Sa 08:00-12:00; PH off|Valeur optionnelle|
|INTERV_DUREE (Durée maximale d'intervention)|heure|Durée maximale d'intervention (au niveau d'une aire piétonne, par exemple).|03:00:00|Valeur optionnelle|
|INTERV_HMAX (Heure maximale d'intervention)|heure|Heure max à partir de laquelle les véhicules doivent quitter l'aire piétonne.|22:00:00|Valeur optionnelle|
|SECTION_VOIE (Nom de la voie)|chaîne de caractères|Nom de la voie associée à la section règlementée. 'NC' si application à une commune, une ZFE (etc...). Voir pour cela le champ `ZONE_TYPE`..|Avenue Philippe Solari|Valeur obligatoire, Motif : `^[a-zA-Z0-9\-\'\s\d\u00C0-\u00FF]+$`|
|SECTION_COTE (Côté de la voie)|chaîne de caractères|Côté de la voie associé à la règlementation. Pair : concerne la circulation le long des adresses à chiffre pair.|Deux côtés|Valeur optionnelle, Valeurs autorisées : Pair, Impair, Deux côtés|
|SECTION_DEBUT (Début de la section)|chaîne de caractères|Début de la section. Adresse ou coordonnées GPS à partir desquelles la règlementaton commence. Coordonnées GPS conseillées. Si GPS, longitude entre -90 et 90 et latitude entre -180 et 180.|43.54007,5.44027|Valeur optionnelle|
|SECTION_FIN (Fin de la section)|chaîne de caractères|Fin de la section. Adresse ou coordonnées GPS auxquelles la règlementaton finit. Coordonnées GPS conseillées. Si GPS, longitude entre -90 et 90 et latitude entre -180 et 180.|43.54007,5.44027|Valeur optionnelle|
|GEOM_JSON (Géométrie)|GéoJSON|Géométrie de la ligne au format [GeoJSON](https://fr.wikipedia.org/wiki/GeoJSON) (de l'anglais Geographic JSON, signifiant littéralement JSON géographique, est un format ouvert d'encodage d'ensemble de données géospatiales simples utilisant la norme JSON (JavaScript Object Notation).|||
|GEOM_SOURCE|chaîne de caractères|Source de la géométrie|BDTOPO IGN 2021|Valeur optionnelle|
