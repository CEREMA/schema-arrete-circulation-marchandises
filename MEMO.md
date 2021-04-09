# Schéma arrêté de circulation

## TableSchema

Réordonner les colonnes

Liste de valeurs

Valeurs conseillées ?

valeurs multiples

utilise "maxLength": 18

## Réflexions sur le standard

Autorisé et interdit ?

## Standard

| CHAMP                         | CIRC ? |             | TYPE                  | DESC                                             | VALEURS POSSIBLES                                            | REGEX |
| ----------------------------- | ------ | ----------- | --------------------- | ------------------------------------------------ | ------------------------------------------------------------ | ----- |
| ARRETE_ID                     |        |             | String                | Référence de l'arrêté                            |                                                              |       |
| ARRETE_URL                    |        |             |                       |                                                  |                                                              |       |
| REGLEMENT                     |        |             | String                | Référence du réglement (N° de l'article, alinéa) |                                                              |       |
| TOUTE_COMMUNE                 |        |             | Boolean               | Application à toute la commune                   |                                                              |       |
| INTERDIT_PL                   |        |             | Boolean               | Interdiction aux poids lourds                    |                                                              |       |
| INTERDIT_PTAC (prévoir autre) |        |             | Valeurs conseillées ? | Poids total autorisé en charge                   | > 3.5 T,> 7.5 T,> 9 T,> 19 T                                 |       |
| INTERDIT_LONGUEUR             |        |             |                       | Longueur interdite                               |                                                              |       |
| INTERDIT_LARGEUR              |        |             |                       | Largeur interdite                                |                                                              |       |
| INTERDIT_USAGE (liste)        |        | Liste ?     |                       | Usage interdit                                   | Services publics,Livraison,Transport de gaz,Transport de carburant,Desserte locale : déménageur, convois funéraires,Riverains,Commerçant sédentaire,Commerçant nomade,Transport de fonds,Bennes à ordures ménagères,Véhicules municipaux,Véhicules de police,Véhicules de secours,Autres cas,Transports en commun,Véhicules munis d'une autorisation,Professions médicales,Taxis,Transport de matières dangereuses,Poids lourds d'urgence |       |
| INTERDIT_SURFACE              |        |             | Numeric               | Surface maximale                                 |                                                              |       |
| AUTORISE_PL                   |        | supprimer ? |                       | Autorisation aux poids lourds                    |                                                              |       |
| AUTORISE_VEH_LIV              |        |             | Boolean               | Autorisation aux véhicules de livraison          |                                                              |       |
| AUTORISE_PTAC                 |        | supprimer ? |                       | Poids Total Autorisé en Charge                   | > 3.5 T,> 7.5 T,> 9 T,> 19 T                                 |       |
| AUTORISE_LONGUEUR             |        |             | Integer               | Longueur autorisée                               |                                                              |       |
| AUTORISE_LARGEUR              |        |             | Integer               | Largeur autorisée                                |                                                              |       |
| AUTORISE_USAGE                |        |             |                       | Usage autorisé                                   |                                                              |       |
| AUTORISE_TOUTES_MOTOR         |        |             | Boolean               | Toutes motorisations autorisées                  |                                                              |       |
| AUTORISE_TYPE_MOTOR           |        |             |                       |                                                  | Électrique,Gaz Naturel pour Véhicules,Hybride,Hydrogène      |       |
| PERIODE_LUNDI                 |        |             | Boolean               |                                                  |                                                              |       |
| PERIODE_MARDI                 |        |             | Boolean               |                                                  |                                                              |       |
| PERIODE_MERCREDI              |        |             | Boolean               |                                                  |                                                              |       |
| PERIODE_JEUDI                 |        |             | Boolean               |                                                  |                                                              |       |
| PERIODE_VENDREDI              |        |             | Boolean               |                                                  |                                                              |       |
| PERIODE_SAMEDI                |        |             | Boolean               |                                                  |                                                              |       |
| PERIODE_DIMANCHE              |        |             | Boolean               |                                                  |                                                              |       |
| PERIODE_JOURS_FERIES          |        |             | Boolean               |                                                  |                                                              |       |
| PERIODE_JOURS_HORAIRES        |        |             | String                |                                                  | "Mo-Fr 08:00-20:00"                                          |       |
| HORAIRE_MATIN_DEBUT           |        | supprimer   |                       |                                                  |                                                              | xxx   |
| HORAIRE_MATIN_FIN             |        | supprimer   |                       |                                                  |                                                              |       |
| HORAIRE_APM_DEBUT             |        | supprimer   |                       |                                                  |                                                              |       |
| HORAIRE_APM_FIN               |        | supprimer   |                       |                                                  |                                                              |       |
| HORAIRE_DUREE_MAX             |        | supprimer   |                       |                                                  |                                                              |       |
| HORAIRE_HEURE_LIMITE          |        | supprimer   |                       |                                                  |                                                              |       |
| AUTOR_DELAI_DEMANDE           | n      |             |                       |                                                  |                                                              |       |
| AUTOR_STATIONNEMENT           | n      |             |                       |                                                  |                                                              |       |
| RETRAIT_TICKET                | n      |             | Boolean               |                                                  |                                                              |       |
| VOIE_ID                       |        |             | Integer               |                                                  |                                                              |       |
| VOIE_NOM                      |        |             | String                |                                                  |                                                              |       |
| VOIE_DEPUIS_ADRESSE           |        |             | String                |                                                  |                                                              |       |
| VOIE_VERS_ADRESSE             |        |             | String                |                                                  |                                                              |       |
| ZONE                          |        |             | String                |                                                  |                                                              |       |
| COMMUNE_INSEE                 |        |             | String                |                                                  |                                                              | xxx   |
| GEOMETRY_WKT                  |        |             | String                |                                                  |                                                              | xxx   |



# Créer schéma schema.data.gouv.fr
Créer le schéma sur github cerema

Exemple de schéma etalab
https://github.com/etalab/schema-decp-dpa

Exemple de json schema odf

	equipements:
	  url: https://git.opendatafrance.net/scdl/equipements.git
	  type: tableschema
	  email: scdl@opendatafrance.email

https://git.opendatafrance.net/scdl/equipements

Aller sur https://github.com/etalab/schema.data.gouv.fr/blob/master/aggregateur/repertoires.yml

Y référencer le schéma :

	subventions:
	  url: https://git.opendatafrance.net/scdl/subventions.git
	  type: tableschema
	  email: scdl@opendatafrance.email


# Schéma Arrêté de circulation

- identifiant de l'arrêté
- date de l'arrêté
- véhicules autorisés
- véhicules interdits
- jours
- tonnage


Préfixe CIRC

---
# Ressources

https://guides.etalab.gouv.fr/producteurs-schemas/phase-construction/#documenter-votre-schema-de-donnees

https://opendatafrance.gitbook.io/scdl/modeles

	XXX_ADD_VOIE1
	XXX_ADD_COMMUNE
	XXX_LONG
	XXX_LAT


https://opendatafrance.gitbook.io/fablog/territoires/chantiers/partage-des-donnees/standardisation

## Aires de livraison
https://opendatafrance.gitbook.io/fablog/territoires/chantiers/partage-des-donnees/standardisation/zones-de-livraison

	ALIV_ID
	ALIV_X
	ALIV_Y
	ALIV_SURFACE
	ALIV_LONGUEUR
	ALIV_LARGEUR
	ALIV_HAUTEUR
	ALIV_NBPLACE
	ALIV_ADRESSE
	ALIV_ZONE
	ALIV_ASP
	ALIV_SIGNALISATION
	ALIV_TYPE
	ALIV_ACCESS
	ALIV_CAT
	ALIV_TONNAGE
	ALIV_HORAIRE
	ALIV_TARIFICATION
	ALIV_PRIX
	ALIV_EQUIP
	ALIV_IRVE
	**ALIV_ARRETE**


## Arrêtés de circulation
https://opendatafrance.gitbook.io/fablog/territoires/chantiers/partage-des-donnees/standardisation/arretes-de-circulation

	COLL_NOM
	COLL_SIRET
	ARR_ID
	ARR_DATE
	ARR_TYPE
	ARR_OBJET
	ARR_ADRESSE_1
	ARR_ADRESSE_2
	ARR_TRAV_DEB
	ARR_TRAV_FIN
	ARR_TRAV_FIN_MODIFIEE
	ARR_OPERATEUR_SIREN
	ARR_OPERATEUR_NOM
	ARR_IMPACT_1
	ARR_IMPACT_2
	**ARR_URL**

# Exemples

## Valeurs

source : https://git.opendatafrance.net/scdl

### Listes de valeurs avec enum
		 {
		      "name": "EQUIP_THEME",
		      "title": "Thème de classement de l'équipement",
		      "description": "Les entrées de la [nomenclature des équipements collectifs publics](https://docs.google.com/spreadsheets/d/157WPWMUDC6w58Aep1dgWzzunKEjzSd-QmyuEHa8RFqc) sont divisées en 10 grandes familles. Les intitulés de ces grandes familles sont utilisés pour classer les équipements par thème. Ce champ doit donc être renseigné à partir d'une des valeurs suivantes : 'Equipement administratif', 'Equipement de justice', 'Equipement sanitaire', 'Equipement social et d'animation', 'Equipement sportif et de loisirs', 'Equipement d'enseignement', 'Equipement cultuel', 'Equipement culturel', 'Equipement de mobilité', ou 'Autre équipement'.",
		      "type": "string",
		      "example": "Equipement administratif",
		      "constraints": {
		        "required": true,
		        "enum": [
		          "Equipement administratif",
		          "Equipement de justice",
		          "Equipement sanitaire",
		          "Equipement social et d'animation",
		          "Equipement sportif et de loisirs",
		          "Equipement d'enseignement",
		          "Equipement cultuel",
		          "Equipement culturel",
		          "Equipement de mobilité",
		          "Autre équipement"
		        ]
		      }
		    },

### Regexes et types de champs
Chiffres
	
	{
	      "name": "COLL_SIRET",
	      "title": "Code SIRET de la collectivité",
	      "description": "Identifiant du [Système d'Identification du Répertoire des Etablissements](https://fr.wikipedia.org/wiki/Syst%C3%A8me_d%27identification_du_r%C3%A9pertoire_des_%C3%A9tablissements) (SIRET) de la collectivité sur le territoire de laquelle sont situés les équipements collectifs publics répertoriés dans le jeu de données. Il est composé de 9 chiffres SIREN + 5 chiffres NIC d’un seul tenant.",
	      "type": "string",
	      "example": "22940028800010",
	      "constraints": {
	        "required": true,
	        "pattern": "^\\d{14}$"
	      }
	    }

Nom
	
	 {
	      "name": "ADR_NOMVOIE",
	      "title": "Nom complet de la voie",
	      "description": "Ce champ contient la concaténation du type et du nom de la voie ou le nom d'un lieu-dit, exprimés en majuscules et minuscules accentuées.",
	      "type": "string",
	      "example": "Avenue Ardouin",
	      "constraints": {
	        "required": true,
	        "minLength": 3,
	        "pattern": "^[a-zA-Z0-9\\-\\'\\s\\d\\u00C0-\\u00FF]+$"
	      }
	    },

Commune

	    {
	      "name": "ADR_COMMUNE",
	      "title": "Commune",
	      "description": "Elément de l'adresse qui désigne le nom de la commune où est implanté l'équipement collectif public.",
	      "type": "string",
	      "example": "Le Plessis-Trévise",
	      "constraints": {
	        "required": true,
	        "pattern": "^[A-Za-z\\s\\-\\u00C0-\\u00FF]+$"
	      }
	    },

underscores

	  {
	      "name": "ADR_CLE_INTEROP",
	      "title": "Clé d'interopérabilité de l'adresse",
	      "description": "Cette clé est identique à celle décrite dans le modèle [Base adresse locale](https://scdl.opendatafrance.net/docs/schemas/scdl-adresses.html). Elle combine le [code INSEE de la commune](https://fr.wikipedia.org/wiki/Code_Insee) sur 5 caractères (incluant 'A' ou 'B' pour la Corse) + le code de voie issu du [FANTOIR](https://fr.wikipedia.org/wiki/FANTOIR) de la DGFiP sur 4 caractères + le numéro d’adresse sur 5 caractères préfixé par des zéros + un suffixe s'il existe, qui peut être un indice de répétition ('bis', 'ter', 'qua', 'qui', etc... codés sur 3 caractères) et/ou un complément ('a', 'b', 'c', 'a1', 'b2', 'lesmimosas', etc... sans limitation du nombre de caractères). Chaque élément est séparé par un tiret du bas et les lettres sont en minuscules.",
	      "type": "string",
	      "example": "94059_0040_00036",
	      "constraints": {
	        "minLength": 16,
	        "pattern": "^[A-Za-z0-9_]+$"
	      }
	    },

complexe

	    {
	      "name":"id",
	      "description":"L'identifiant unique du parking, délivré par le Point d’accès national. `INSEE-P-xxx` où `INSEE` est le code INSEE de la commune et `xxx` est le numéro d’ordre sur 3 chiffres.",
	      "example":"75114-P-001",
	      "type":"string",
	      "constraints":{
	        "required":true,
	        "pattern":"^([013-9]\\d|2[AB1-9])\\d{3}-P-\\d{3}$"
	      }
	    },

complexe 2

	{
	        "name":"id_lieu",
	        "description":"Identifiant du lieu de covoiturage, délivré par le point d'accès national selon la règle INSEE-P-XXX où INSEE est le code INSEE de la commune et XXX est le numéro d’ordre d'arrivée dans la base sur 3 chiffres, commençant par 001",
	        "example":"35238-C-001 pour la première aire référencée dans la commune de code INSEE 35238",
	        "type":"string",
	        "constraints":{
	            "required":true,
	            "pattern":"^([013-9]\\d|2[AB1-9])\\d{3}-C-\\d{3}$"
	        }
	    },

code insee

    {
      "name":"insee",
      "description":"Le code INSEE de la commune où le parking est localisé.",
      "example":"75114",
      "type":"string",
      "constraints":{
        "required":true,
        "pattern":"^([013-9]\\d|2[AB1-9])\\d{3}$"
      }
    },

dates

  	{
  	        "name":"date_maj",
  	        "description":"Date de dernière mise à jour des données. Notation ISO 8601, format AAAA-MM-DD",
  	        "example":"2016-10-31",
  	        "type":"date",
  	        "format":"%Y-%m-%d",
  	        "constraints":{
  	            "required":true
  	        }
  	    },

horaires

     {
            "name":"horaires",
            "description":"Ce champ permet de renseigner, si l'information est connue, les jours et horaires d'ouverture de l'équipement",
            "example":"Mo-Fr 08:00-20:00",
            "type":"string",
            "constraints":{
                "required":false
            }
        },

NA

    {
      "name":"hauteur_max",
      "description":"Hauteur maximale autorisée à la fois pour l'accès au parking et pour le stationnement du véhicule, en centimètres. S'il n'y a pas de hauteur maximale, il est possible de renseigner ce champs avec la valeur `N/A`.",
      "example":"290",
      "type":"string",
      "constraints":{
        "required":true,
        "pattern":"^(\\d+|N\/A)$"
      }
    },

### Types de valeurs (boolean, etc...)

boolean

	{
	      "name":"gratuit",
	      "description":"Indiquer si la gratuité est applicable à tous les usagers (hors abonnés, résidents, PMR). Il est possible d'indiquer dans le champ `info` toute information supplémentaire relative aux particularités et exceptions (par exemple : \"Gratuité le samedi matin de 9h à 13h\").",
	      "example":"true",
	      "type":"boolean",
	      "trueValues":[
	        "true",
	        "True",
	        "TRUE",
	        "1",
	        "vrai",
	        "Vrai",
	        "VRAI"
	      ],
	      "falseValues":[
	        "false",
	        "False",
	        "FALSE",
	        "0",
	        "faux",
	        "Faux",
	        "FAUX"
	      ],
	      "constraints":{
	        "required":true
	      }
	    },

texte

    {
      "name": "EQUIP_NOM",
      "title": "Nom complet de l'équipement",
      "description": "Ce champ permet de nommer l'équipement collectif public par son nom d'usage complet afin de préciser ou compléter, si nécessaire, le terme utilisé pour désigner le type, dans la limite de 256 caractères maximum.",
      "type": "string",
      "example": "Hôtel de ville du Plessis-Trévise",
      "constraints": {
        "required": true
      }
    },


identifiant uuid

	   {
	      "name": "EQUIP_UID",
	      "title": "Identifiant unique de l'équipement",
	      "description": "Cet identifiant unique est constitué du [code INSEE de la commune](https://fr.wikipedia.org/wiki/Code_Insee) où est implanté l'équipement sur 5 caractères (incluant 'A' ou 'B' pour la Corse) suivi du code d'identification de l'équipement (EQUIP_CODE), séparés par un tiret du milieu. Il s'agit donc d'une chaîne de 18 caractères qui permet d'identifier chacun des équipements référencés de manière univoque.",
	      "type": "string",
	      "format": "uuid",
	      "example": "94059-01010401-001",
	      "constraints": {
	        "required": true,
	        "maxLength": 18
	      }
	    },

Entier

	{
	      "name": "ERP_CATEGORIE",
	      "title": "Catégorie d'Etablissement Recevant du Public",
	      "description": "Les [Etablissements Recevant du Public](https://fr.wikipedia.org/wiki/%C3%89tablissement_recevant_du_public_en_droit_fran%C3%A7ais) (ERP) sont classés par catégorie en fonction de leur capacité d'accueil. La catégorie est symbolisée par un chiffre de 1 à 5 dans le respect de [l'article R123-19 du Code de la construction et de l'habitation](https://www.legifrance.gouv.fr/affichCodeArticle.do?cidTexte=LEGITEXT000006074096&idArticle=LEGIARTI000006896108). Si l'équipement collectif public est un ERP, ce champ peut être renseigné.",
	      "type": "integer",
	      "example": "5",
	      "constraints": {
	        "minimum": 1,
	        "maximum": 5
	      }
	    },

flottant

	  {
	      "name": "EQUIP_LAT",
	      "title": "Latitude",
	      "description": "Coordonnée de latitude exprimée en [WGS 84](https://fr.wikipedia.org/wiki/WGS_84) permettant de localiser l'équipement collectif public. Le signe de séparation entre les parties entière et décimale du nombre est le point.",
	      "type": "number",
	      "example": "48.808989",
	      "constraints": {
	        "required": true
	      }
	    },

min et max

    {
      "name":"Xlong",
      "description":"La longitude en degrés décimaux (point comme séparateur décimal, avec au moins 4 chiffres après le point décimal) de la localisation de l'entrée du lieu exprimée dans le système de coordonnées WGS84.",
      "example":"1.452323",
      "type":"number",
      "constraints":{
        "required":true,
        "minimum":-180,
        "maximum":180
      }
    },

## Exemples de schémas

http://schema.data.gouv.fr/etalab/schema-irve/latest.html

http://schema.data.gouv.fr/etalab/schema-lieux-covoiturage/latest.html

http://schema.data.gouv.fr/etalab/schema-stationnement/latest.html
http://schema.data.gouv.fr/schemas/etalab/schema-stationnement/0.1.4/schema.json

### OpenDataFrance

https://git.opendatafrance.net/scdl/equipements



# Guides

## TableSchema

https://specs.frictionlessdata.io/table-schema/#types-and-formats

## Guide Etalab

https://guides.etalab.gouv.fr/producteurs-schemas/