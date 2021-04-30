## arrete-permanent-circulation

Schéma des arrêtés permanents de circulation

Spécification du fichier d'échange relatif aux arrêtés permanents de circulation gérés par les collectivités.

- Schéma créé le : 04/30/21
- Site web : https://github.com/CEREMA/schema-arrete-circulation
- Version : 0.1.1
- Valeurs manquantes : `""`, `"NA"`, `"NaN"`, `"NC"`, `"N/A"`
- Clé primaire : `SECTION_REGL_ID`

### Modèle de données


##### Liste des propriétés

| Propriété | Type | Obligatoire |
| -- | -- | -- |
| [SECTION_REGL_ID](#propriété-section_regl_id) | chaîne de caractères  | Oui |
| [COLL_NOM](#nom-de-la-collectivité---propriété-coll_nom) | chaîne de caractères  | Oui |
| [COLL_SIRET](#code-siret-de-la-collectivité---propriété-coll_siret) | chaîne de caractères  | Oui |
| [ARR_REF](#référence-de-l'arrêté---propriété-arr_ref) | chaîne de caractères  | Oui |
| [ARR_URL](#url-d'accès-de-l'arrêté---propriété-arr_url) | chaîne de caractères  | Non |
| [ARR_OBJET](#objet-de-l'arrêté---propriété-arr_objet) | chaîne de caractères  | Oui |
| [ARR_CONSIDERANT](#considérant-de-l'arrêté---propriété-arr_considerant) | chaîne de caractères  | Non |
| [ARR_DATE_CREATION](#date-de-création-de-l'arrêté---propriété-arr_date_creation) | date (format `%Y-%m-%d`) | Oui |
| [ARR_MAJ](#arrêté-mis-à-jour-?---propriété-arr_maj) | booléen  | Oui |
| [ARR_INSEE](#code-insee---propriété-arr_insee) | chaîne de caractères  | Oui |
| [REGL_ARTICLE](#article-du-règlement---propriété-regl_article) | nombre entier  | Non |
| [REGL_SOUS_ARTICLE](#sous-article-du-règlement---propriété-regl_sous_article) | chaîne de caractères  | Non |
| [REGL_MODALITE](#propriété-regl_modalite) | chaîne de caractères  | Oui |
| [ZONE_TYPE](#propriété-zone_type) | chaîne de caractères  | Non |
| [ZONE_REF](#nom-ou-identifiant-de-la-zone-associée-à-la-règlementation---propriété-zone_ref) | chaîne de caractères  | Non |
| [VEH_PTAC](#poids-total-autorisé-en-charge---propriété-veh_ptac) | nombre réel  | Non |
| [VEH_LONG](#longueur-du-véhicule---propriété-veh_long) | nombre réel  | Non |
| [VEH_LARG](#largeur-du-largeur---propriété-veh_larg) | nombre réel  | Non |
| [VEH_HAUT](#largeur-du-largeur---propriété-veh_haut) | nombre réel  | Non |
| [VEH_TYPE](#propriété-veh_type) | chaîne de caractères  | Non |
| [VEH_USAGE](#type-d'usage---propriété-veh_usage) | chaîne de caractères  | Non |
| [VEH_MOTOR](#type-de-motorisation---propriété-veh_motor) | chaîne de caractères  | Non |
| [VEH_CQA](#vignettes-crit'air---propriété-veh_cqa) | chaîne de caractères  | Non |
| [PERIODE_DEBUT](#date-d'entrée-en-vigueur-des-restrictions---propriété-periode_debut) | date  | Non |
| [PERIODE_JH](#jours-et-heures-de-circulation---propriété-periode_jh) | chaîne de caractères  | Non |
| [INTERV_DUREE](#durée-maximale-d'intervention---propriété-interv_duree) | heure  | Non |
| [INTERV_HMAX](#heure-maximale-d'intervention---propriété-interv_hmax) | heure  | Non |
| [SECTION_VOIE](#nom-de-la-voie---propriété-section_voie) | chaîne de caractères  | Oui |
| [SECTION_COTE](#côté-de-la-voie---propriété-section_cote) | chaîne de caractères  | Non |
| [SECTION_DEBUT](#début-de-la-section---propriété-section_debut) | chaîne de caractères  | Non |
| [SECTION_FIN](#fin-de-la-section---propriété-section_fin) | chaîne de caractères  | Non |
| [GEOM_JSON](#géométrie---propriété-geom_json) | GéoJSON (format `default`) | Non |
| [GEOM_SOURCE](#propriété-geom_source) | chaîne de caractères  | Non |

#### Propriété `SECTION_REGL_ID`

> *Description : Identifiant unique de la ligne. La ligne correspond à la voie ou la section de voie règlementée. Ce peut être une voie entière (la D9) ou une portion de voie (voir champ `SECTION_DEBUT` et `SECTION_FIN`). L'identifiant peut tout simplement être un identifiant auto-incrémenté (1, 2 ou 3,...). Si la section est issue d'OpenStreetMap, l'identifiant peut correspondre à la valeur osm_id de la voie règlementée (par exemple, 133). Si la section possède plusieurs règlements, l'identifiant peut être accompagné d'un suffixe incrémenté (par exemple 133-2 pour le second règlement associé à la voie). Il peut également être un identifiant propre à une structure ou une base de données (identifiant issu de la BDTOPO IGN, par exemple).<br/>Ex : 133-3*
- Valeur obligatoire
- Type : chaîne de caractères

#### Nom de la collectivité - Propriété `COLL_NOM`

> *Description : Nom de la collectivité.<br/>Ex : Commune d'Aix-en-Provence*
- Valeur obligatoire
- Type : chaîne de caractères

#### Code SIRET de la collectivité - Propriété `COLL_SIRET`

> *Description : Identifiant du [Système d'Identification du Répertoire des Etablissements](https://fr.wikipedia.org/wiki/Syst%C3%A8me_d%27identification_du_r%C3%A9pertoire_des_%C3%A9tablissements) (SIRET) de la collectivité sur le territoire de laquelle sont situés les équipements collectifs publics répertoriés dans le jeu de données. Il est composé de 9 chiffres SIREN + 5 chiffres NIC d’un seul tenant.<br/>Ex : 22940028800010*
- Valeur obligatoire
- Type : chaîne de caractères
- Motif : `^\d{14}$`

#### Référence de l'arrêté - Propriété `ARR_REF`

> *Description : Référence ou numéro de l'arrêté auquel se réfère la règlementation. Si l'arrêté a été mis à jour, la référence doit être celle de l'arrêté mis à jour et non celle de l'arrêté originel.<br/>Ex : AP-13090-12*
- Valeur obligatoire
- Type : chaîne de caractères

#### URL d'accès de l'arrêté - Propriété `ARR_URL`

> *Description : Adresse internet par laquelle accéder à l'arrêté, et donc au règlement.<br/>Ex : https://carte.st-paul-les-dax.fr/wp-content/uploads/2020/06/AM-10248.pdf*
- Valeur optionnelle
- Type : chaîne de caractères
- Motif : `^(https|http)?://(?:[a-z0-9\-]+\.)+[a-z]{2,6}(?:/[^/#?]+)+`

#### Objet de l'arrêté - Propriété `ARR_OBJET`

> *Description : Objet ou titre de l'arrêté<br/>Ex : Arrêté règlementant la circulation dans le quartier Mazarin et du palais de Justice*
- Valeur obligatoire
- Type : chaîne de caractères

#### Considérant de l'arrêté - Propriété `ARR_CONSIDERANT`

> *Description : Considérant est le justificatif de la mise en place de la règlementation<br/>Ex : Considérant la dangerosité que représente le trafic des PL aux abords des groupes scolaires*
- Valeur optionnelle
- Type : chaîne de caractères

#### Date de création de l'arrêté - Propriété `ARR_DATE_CREATION`

> *Description : Date de création ou de mise à jour de l'arrêté, au format ISO 8601 AAAA-MM-DD.<br/>Ex : 2021-04-30*
- Valeur obligatoire
- Type : date (format `%Y-%m-%d`)

#### Arrêté mis à jour ? - Propriété `ARR_MAJ`

> *Description : Spécifie si l'arrêté a été l'objet d'une mise à jour. Dans ce cas, remplir la nouvelle référence de l'arrêté dans `ARR_REF`.<br/>Ex : TRUE*
- Valeur obligatoire
- Type : booléen

#### Code INSEE - Propriété `ARR_INSEE`

> *Description : Code INSEE de la commune sur laquelle s'applique l'arrêté<br/>Ex : 75114*
- Valeur obligatoire
- Type : chaîne de caractères
- Entre 5 et 5 caractères
- Motif : `^[a-zA-Z0-9\-\'\s\d\u00C0-\u00FF]+$`

#### Article du règlement - Propriété `REGL_ARTICLE`

> *Description : N° de l'article associé au règlement lorsqu'il existe<br/>Ex : 4*
- Valeur optionnelle
- Type : nombre entier

#### Sous-article du règlement - Propriété `REGL_SOUS_ARTICLE`

> *Description : Un article peut se décomposer en plusieurs sous-articles, contenant chacun une règlementation particulière. Ces sous-articles ont des numérotations.<br/>Ex : 4 bis*
- Valeur optionnelle
- Type : chaîne de caractères

#### Propriété `REGL_MODALITE`

> *Description : Modalité<br/>Ex : Autorise*
- Valeur obligatoire
- Type : chaîne de caractères
- Valeurs autorisées : 
    - Autorise
    - Interdit

#### Propriété `ZONE_TYPE`

> *Description : Type de zone<br/>Ex : Quartier*
- Valeur optionnelle
- Type : chaîne de caractères
- Valeurs autorisées : 
    - Arrondissement
    - Commune entière
    - Zone à Faible Émission
    - Zone IRIS INSEE
    - Zone piétonne

#### Nom ou identifiant de la zone associée à la règlementation - Propriété `ZONE_REF`

> *Description : Nom ou identifiant de la zone associée à la règlementation (nom du quartier, arrondissement, identifiant ZFE, identifiant IRIS...).<br/>Ex : Quartier Mazarin*
- Valeur optionnelle
- Type : chaîne de caractères

#### Poids total autorisé en charge - Propriété `VEH_PTAC`

> *Description : Poids total autorisé en charge, exprimé en tonnes.<br/>Ex : 7.5*
- Valeur optionnelle
- Type : nombre réel
- Valeur entre 0 et 45

#### Longueur du véhicule - Propriété `VEH_LONG`

> *Description : Longueur maximale exprimée en mètres.<br/>Ex : 6.5*
- Valeur optionnelle
- Type : nombre réel
- Valeur entre 0 et 30

#### Largeur du Largeur - Propriété `VEH_LARG`

> *Description : Longueur maximale exprimée en mètres.<br/>Ex : 3.5*
- Valeur optionnelle
- Type : nombre réel
- Valeur entre 0 et 6

#### Largeur du Largeur - Propriété `VEH_HAUT`

> *Description : Longueur maximale exprimée en mètres.<br/>Ex : 2.5*
- Valeur optionnelle
- Type : nombre réel
- Valeur entre 0 et 6

#### Propriété `VEH_TYPE`

> *Description : Type de véhicule<br/>Ex : Poids lourds*
- Valeur optionnelle
- Type : chaîne de caractères
- Valeurs autorisées : 
    - Poids lourds
    - Véhicules utilitaires légers

#### Type d'usage - Propriété `VEH_USAGE`

> *Description : Type d'usage du véhicule<br/>Ex : ['Bennes à ordures ménagères', 'Véhicules de police']*
- Valeur optionnelle
- Type : chaîne de caractères

#### Type de motorisation - Propriété `VEH_MOTOR`

> *Description : Type de motorisation du véhicule.<br/>Ex : ['Électrique', 'Hydrogène']*
- Valeur optionnelle
- Type : chaîne de caractères

#### Vignettes crit'air - Propriété `VEH_CQA`

> *Description : Vignettes crit'air. Voir la [classification des vignettes Crit'Air](https://www.certificat-air.gouv.fr/docs/tableaux_classement.pdf) sur le site [certificat-air.gouv.fr](https://www.certificat-air.gouv.fr)<br/>Ex : ['1', '2', '3']*
- Valeur optionnelle
- Type : chaîne de caractères

#### Date d'entrée en vigueur des restrictions - Propriété `PERIODE_DEBUT`

> *Description : Date d'entrée en vigueur des restrictions (en particulier pour les Zones à Faible Émission),, au format ISO 8601 AAAA-MM-DD.<br/>Ex : 2021-04-30*
- Valeur optionnelle
- Type : date

#### Jours et heures de circulation - Propriété `PERIODE_JH`

> *Description : Jours et heures de circulation autorisés pour la circulation exprimés selon le format OpeningHours d'OpenStreetMap ([https://wiki.openstreetmap.org/wiki/Key:opening_hours](https://wiki.openstreetmap.org/wiki/Key:opening_hours)). Ce format permet d'indiquer aussi les jours fériés (PH pour Public Holidays).<br/>Ex : Mo-Fr 08:00-12:00,13:00-17:30; Sa 08:00-12:00; PH off*
- Valeur optionnelle
- Type : chaîne de caractères

#### Durée maximale d'intervention - Propriété `INTERV_DUREE`

> *Description : Durée maximale d'intervention (au niveau d'une aire piétonne, par exemple).<br/>Ex : 03:00:00*
- Valeur optionnelle
- Type : heure

#### Heure maximale d'intervention - Propriété `INTERV_HMAX`

> *Description : Heure max à partir de laquelle les véhicules doivent quitter l'aire piétonne.<br/>Ex : 22:00:00*
- Valeur optionnelle
- Type : heure

#### Nom de la voie - Propriété `SECTION_VOIE`

> *Description : Nom de la voie associée à la section règlementée. 'NC' si application à une commune, une ZFE (etc...). Voir pour cela le champ `ZONE_TYPE`..<br/>Ex : Avenue Philippe Solari*
- Valeur obligatoire
- Type : chaîne de caractères
- Motif : `^[a-zA-Z0-9\-\'\s\d\u00C0-\u00FF]+$`

#### Côté de la voie - Propriété `SECTION_COTE`

> *Description : Côté de la voie associé à la règlementation. Pair : concerne la circulation le long des adresses à chiffre pair.<br/>Ex : Deux côtés*
- Valeur optionnelle
- Type : chaîne de caractères
- Valeurs autorisées : 
    - Pair
    - Impair
    - Deux côtés

#### Début de la section - Propriété `SECTION_DEBUT`

> *Description : Début de la section. Adresse ou coordonnées GPS à partir desquelles la règlementaton commence. Coordonnées GPS conseillées. Si GPS, longitude entre -90 et 90 et latitude entre -180 et 180.<br/>Ex : 43.54007,5.44027*
- Valeur optionnelle
- Type : chaîne de caractères

#### Fin de la section - Propriété `SECTION_FIN`

> *Description : Fin de la section. Adresse ou coordonnées GPS auxquelles la règlementaton finit. Coordonnées GPS conseillées. Si GPS, longitude entre -90 et 90 et latitude entre -180 et 180.<br/>Ex : 43.54007,5.44027*
- Valeur optionnelle
- Type : chaîne de caractères

#### Géométrie - Propriété `GEOM_JSON`

> *Description : Géométrie de la ligne au format [GeoJSON](https://fr.wikipedia.org/wiki/GeoJSON) (de l'anglais Geographic JSON, signifiant littéralement JSON géographique, est un format ouvert d'encodage d'ensemble de données géospatiales simples utilisant la norme JSON (JavaScript Object Notation).<br/>Ex : None*
- Valeur optionnelle
- Type : GéoJSON (format `default`)

#### Propriété `GEOM_SOURCE`

> *Description : Source de la géométrie<br/>Ex : BDTOPO IGN 2021*
- Valeur optionnelle
- Type : chaîne de caractères
