## arrete-circulation-marchandises

Arrêtés permanents de circulation pour le transport de marchandises

Spécification du fichier d'échange relatif aux arrêtés permanents de circulation pour le transport de marchandises gérés par les collectivités.

- Schéma créé le : 04/30/21
- Site web : https://github.com/CEREMA/schema-arrete-circulation
- Version : 0.7.2
- Valeurs manquantes : `""`, `"NA"`, `"NaN"`, `"N/A"`
- Clé primaire : `ID`

### Modèle de données

|Nom|Type|Description|Exemple|Propriétés|
|-|-|-|-|-|
|ID (Identifiant de l'entité)|chaîne de caractères|Il s'agit de l'identifiant, unique, de la ligne du tableau.. [Vous pouvez créer des identifiants grâce à l'application Heidi d'Etalab](https://heidi.app.etalab.studio/).|133-3|Valeur obligatoire, Valeur unique|
|COLL_NOM (Nom de la collectivité à l'origine de l'arrêté)|chaîne de caractères|Nom de la collectivité.|Commune d'Aix-en-Provence|Valeur obligatoire|
|COLL_INSEE (Code INSEE)|chaîne de caractères|Code INSEE de la commune sur laquelle s'applique l'arrêté|13090|Valeur obligatoire, Taille minimale : 5, Taille maximale : 5, Motif : `^([013-9]\d|2[AB1-9])\d{3}$`|
|ARR_DATE (Date de l'arrêté)|date (format `%Y-%m-%d`)|Date de création ou de mise à jour de l'arrêté, au format ISO 8601 AAAA-MM-DD. Mettre `NC` si pas d'indication dans l'arrêté|2021-04-30|Valeur obligatoire|
|ARR_REF (Référence de l'arrêté)|chaîne de caractères|Référence ou numéro de l'arrêté auquel se réfère la règlementation. Si l'arrêté a été mis à jour, la référence doit être celle de l'arrêté mis à jour et non celle de l'arrêté originel. Si l'arrêté ne possède pas de référence, mettre la valeur `NC`|AP-13090-12|Valeur obligatoire|
|ARR_OBJET (Objet de l'arrêté)|chaîne de caractères|Objet ou titre de l'arrêté. Mettre `NC` si l'arrêté ne comprend pas d'objet.|Arrêté règlementant la circulation dans le quartier Mazarin et du palais de Justice|Valeur obligatoire|
|ARR_CONSIDERANT (Considérant de l'arrêté)|chaîne de caractères|Considérant est le justificatif de la mise en place de la règlementation. S'il y a plusieurs considérations, les séparer par le caractère '|'|Considérant la dangerosité que représente le trafic des PL aux abords des groupes scolaires|Valeur optionnelle|
|ARR_URL (Adresse internet de l'arrêté)|chaîne de caractères (format `uri`)|Adresse internet par laquelle accéder à l'arrêté, et donc au règlement.|https://carte.st-paul-les-dax.fr/wp-content/uploads/2020/06/AM-10248.pdf|Valeur optionnelle|
|REGL_ARTICLE (Article du règlement)|chaîne de caractères|N° de l'article associé au règlement lorsqu'il existe|'Article 4' ou 'Titre 2'|Valeur optionnelle|
|REGL_SOUS_ARTICLE (Sous-article du règlement)|chaîne de caractères|Un article peut se décomposer en plusieurs sous-articles, contenant chacun une règlementation particulière. Ces sous-articles ont des numérotations.|Sous-article 4 bis|Valeur optionnelle|
|REGL_MOTIF (Motif)|chaîne de caractères|Motif justifiant de la mise en place de la règle de circulation|Forte affluence|Valeur optionnelle|
|REGL_MODALITE (Modalité du règlement)|chaîne de caractères|Indique si l'arrêté interdit ou autorise|Autorise|Valeur obligatoire, Valeurs autorisées : Autorise, Interdit|
|VEH_TYPES (Types de véhicules)|chaîne de caractères|Types de véhicules. S'il y a plusieurs types, les séparer les valeurs par le caractère '|'. Les valeurs possibles sont : 'Poids lourds', 'Véhicules utilitaires légers', 'Vélo-cargos' et 'Tous véhicules'.|Poids lourds|Véhicules utilitaires légers|Valeur optionnelle, Motif : `(?:(?:^|\|)(Poids lourds|Véhicules utilitaires légers|Vélo-cargos|Tous véhicules))+$`|
|VEH_TONNAGE (Tonnage ou poids total autorisé en charge)|nombre réel|Tonnage ou poids total autorisé en charge, exprimé en tonnes.|7.5|Valeur optionnelle, Valeur minimale : 0, Valeur maximale : 45|
|VEH_USAGES (Types d'usage)|chaîne de caractères|Types d'usage de véhicule. S'il y a plusieurs usages, séparer les valeurs par le caractère '|'|Bennes à ordures ménagères|Véhicules de police|Valeur optionnelle|
|VEH_LONG (Longueur du véhicule)|nombre réel|Longueur maximale exprimée en mètres.|6.5|Valeur optionnelle, Valeur minimale : 0, Valeur maximale : 30|
|VEH_LARG (Largeur du véhicule)|nombre réel|Longueur maximale exprimée en mètres.|3.5|Valeur optionnelle, Valeur minimale : 0, Valeur maximale : 6|
|VEH_HAUT (Hauteur du véhicule)|nombre réel|Longueur maximale exprimée en mètres.|2.5|Valeur optionnelle, Valeur minimale : 0, Valeur maximale : 6|
|VEH_MOTORS (Types de motorisation)|chaîne de caractères|Types de motorisation. S'il y a plusieurs motorisations, les séparer par le caractère '|'. Les valeurs possibles sont : Electrique, Gaz Naturel pour Véhicules et Hydrogène.|Électrique|Hydrogène|Valeur optionnelle, Motif : `(?:(?:^|\|)(Electrique|Gaz Naturel pour Véhicules|Hydrogène))+$`|
|VEH_CQAS (Vignettes crit'air)|chaîne de caractères|Vignettes crit'air. Voir la [classification des vignettes Crit'Air](https://www.certificat-air.gouv.fr/docs/tableaux_classement.pdf) sur le site [certificat-air.gouv.fr](https://www.certificat-air.gouv.fr). Séparer les étiquettes CQA par le caractère '|'|1|2|3|Valeur optionnelle, Motif : `(?:(?:^|\|)(100% électrique et Véhicules à hydrogène|1|2|3|4|5|Véhicule non classé))+$`|
|PERIODE_JH (Jours et heures de circulation)|chaîne de caractères|Jours et heures de circulation autorisés pour la circulation exprimés selon le format OpeningHours d'OpenStreetMap ([https://wiki.openstreetmap.org/wiki/Key:opening_hours](https://wiki.openstreetmap.org/wiki/Key:opening_hours)). Ce format permet d'indiquer les week-ends (we), les jours fériés (PH) et les vacances scolaires (SH). Par exemple `Mo-Fr 09:00-17:00; PH 10:00-12:00; PH Su off` signifie : 'Du lundi au vendredi de 9h à 17h sauf les jours fériés où l'ouverture est de 10h à 12h, à l'exception des jours fériés tombant un dimanche'. `24/7` indique `Tous les jours`. [Utiliser groom-groom pour récupérer les jours et heures de circulation](https://cerema-med.shinyapps.io/groom-groom?action=opening_hours)|Mo-Fr 08:00-12:00,13:00-17:30; Sa 08:00-12:00; PH off|Valeur optionnelle|
|PERIODE_DEBUT (Entrée en vigueur des restrictions)|chaîne de caractères|Entrée en vigueur des restrictions (par exemple pour les Zones à Faible Émission).|'Début des vacances de la Toussaint' '23 Octobre'|Valeur optionnelle|
|PERIODE_FIN (Fin des restrictions)|chaîne de caractères|Fin des restrictions. Si elle existe, cela indique le caractère cyclique et non temporaire de la période de régulation.|'Fin des vacances de la Toussaint' ou '8 Novembre'|Valeur optionnelle|
|EMPRISE_DESIGNATION (Nom de la voie)|chaîne de caractères|Nom de la voie, ou de la zone associée à la section règlementée. La zone peut être une aire piétonne, un quartier, une zone ZFE ([voir le schéma des ZFE](https://schema.data.gouv.fr/etalab/schema-zfe/latest.html))|Avenue Philippe Solari, Commune d'Aix-en-Provence, Quartier Mazarin, 200046977-ZFE-001|Valeur obligatoire, Motif : `^[a-zA-Z0-9\-\–\'\’\s\d\u00C0-\u00FF\(\)]+$`|
|EMPRISE_DEBUT (Début de la section (libellé))|chaîne de caractères|Indication textuelle de l'endroit à partir duquel la règlementation s'applique, telle qu'écrite dans l'arrêté. Pour indiquer les coordonnées GPS, se référer au champ `GEOM_DEBUT`.|22 avenue Philippe Solari, Croisement de l'avenue Philippe Solari avec la rue Gaston de Saporta|Valeur optionnelle|
|GEOM_DEBUT (Début de la section (coordonnées))|point géographique|Coordonnées GPS du début de la section. Se réfère à `EMPRISE_DEBUT`. S'écrit sous la forme 'long,lat' (5 ou 6 décimales sont conseillées).|5.42101,43.53591|Valeur optionnelle|
|EMPRISE_FIN (Fin de la section (libellé))|chaîne de caractères|Indication textuelle de l'endroit au bout duquel la règlementation s'applique, telle qu'écrite dans l'arrêté. Pour indiquer les coordonnées GPS, se référer au champ `GEOM_FIN`.|34 bis avenue Philippe Solari, Intersection de l'avenue Philippe Solari avec le boulevard des Charmettes|Valeur optionnelle|
|GEOM_FIN (Fin de la section (coordonnées))|point géographique|Coordonnées GPS de la fin de la section. Se réfère à `EMPRISE_DEBUT`. S'écrit sous la forme 'long,lat' (5 ou 6 décimales sont conseillées).|5.42101,43.53591|Valeur optionnelle|
|EMPRISE_SENS (Direction ou sens de circulation)|chaîne de caractères|Direction ou sens de circulation associé à la règlementation. Pair : concerne la circulation le long des adresses à chiffre pair. `Nord` signifie vers le Nord, soit "vers le haut".|Deux sens, Impair, Nord|Valeur optionnelle, Valeurs autorisées : Pair, Impair, Nord, Sud, Est, Ouest, Deux sens|
|INTERV_DUREE (Durée maximale d'intervention)|heure|Durée maximale d'intervention (au niveau d'une aire piétonne, par exemple). L'entrée et la sortie dans une zone peuvent être horodatées à la délivrance d'un ticket lors de la traversée d'une borne de passage.|03:00:00|Valeur optionnelle|
|INTERV_HMAX (Heure maximale d'intervention)|heure|Heure max à partir de laquelle les véhicules doivent quitter l'aire piétonne.|22:00:00|Valeur optionnelle|
|GEOM_WKT (Géométrie au format WKT)|chaîne de caractères|Géométrie de la rue (ligne), ou de l'emprise (polygone) exprimée au format [WKT (Well Know Text](https://fr.wikipedia.org/wiki/Well-known_text) sous le système de projection WGS84 (EPSG:4326)|LineString(5.39340184 45.56538751, 5.41017215 45.56722934, 5.42510063 45.5679079)|Valeur optionnelle|
|GEOM_SOURCE (Source de la géométrie)|chaîne de caractères|Source de la donnée depuis laquelle la donnée a été extraite (OpenStreetMap, IGN,...).|BDTOPO IGN 2021|Valeur optionnelle|
