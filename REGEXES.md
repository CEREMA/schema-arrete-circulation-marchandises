## Regexes et types de champs
### SIRET et chiffres
	
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

### Nom de voie
	
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

### Nom de Commune

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

### FANTOIR underscores

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

### Identifiant de parking

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

### Identifiant de lieu de covoiturage

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

### Code INSEE

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

### Dates

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

### NA

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

### Jours


### Disponibilité de l’appareil
https://schema.data.gouv.fr/arsante/schema-dae/latest/documentation.html

	^(7j/7|lundi|mardi|mercredi|jeudi|vendredi|samedi|dimanche|jours fériés|événements){1}(\|(7j/7|lundi|mardi|mercredi|jeudi|vendredi|samedi|dimanche|jours fériés|événements))*$

### Dispnibilité de l'appareil horaire
https://schema.data.gouv.fr/arsante/schema-dae/latest/documentation.html

	^(heures ouvrables|heures de nuit|24h/24){1}(\|(heures ouvrables|heures de nuit|24h/24))*$

### N° de téléphone
https://schema.data.gouv.fr/arsante/schema-dae/latest/documentation.html

	^(\+33|0|\+262|\+269|\+508|\+590|\+594|\+596|\+681|\+687|\+689)[1-9](\d\d){4}$

### URL de Photo
https://schema.data.gouv.fr/arsante/schema-dae/latest/documentation.html

	^https?://(?:[a-z0-9\-]+\.)+[a-z]{2,6}(?:/[^/#?]+)+\.(?:jpg|jpeg|gif|png)

### Valeurs séparées par une virgule
#### Public cible
	(?:(?:^|,)(Tout public|Allocataires|Demandeurs d'emploi|Étrangers|Familles|Jeunes|Personnes en situation de handicap|Séniors))+$

#### Modalités d'accès
	(?:(?:^|,)(Accès libre|Sur inscription ou rendez-vous|Public cible|Adhérents))+$

#### Modalités d'accompagnement
	(?:(?:^|,)(Individuel|Collectif))+$

	(?:(?:^|,)(Gratuit|Adhérent|Payant))+$

## N/A
https://schema.data.gouv.fr/etalab/schema-stationnement/latest/documentation.html

http://schema.data.gouv.fr/metis-reseaux/infos-travaux/latest.html

	^(\d+|N/A)$

https://git.opendatafrance.net/scdl/adresses/-/blob/master/schema.json

### Nom de la voie
`"^[a-zA-Z0-9\\-\\'\\s\\d\\u00C0-\\u00FF]+$"`

### Nom de la commune
`"^[A-Za-z\\s\\-\\u00C0-\\u00FF]+$"`

https://git.opendatafrance.net/scdl/plats-menus-collectifs/-/blob/master/schema.json

### Date de publi d'un plat
`"^\\d{4}-[01]\\d-[0-3]\\d([+-][0-2]\\d:[0-5]\\dZ?)?$"`

https://git.opendatafrance.net/scdl/marches-publics/-/blob/master/schema.json


### UID
`"^\\d{14}\\d{4}.{1,10}\\d{2}$"`

### Nom de l'acheteur
`"[A-Za-zÀÂÄÇÉÈÊËÎÏÔÖÙÛÜŸàâäçéèêëîïôöùûüÿÆŒæœ \\-']*"`


https://git.opendatafrance.net/scdl/menus-collectifs/-/blob/master/schema.json
datetime
`"^\\d{4}-[01]\\d-[0-3]\\d([+-][0-2]\\d:[0-5]\\dZ?)?$"`

https://git.opendatafrance.net/scdl/subventions/-/blob/master/schema.json
période
`"^[0-9]{4}\\-[0-9]{2}\\-[0-9]{2}(\\/[0-9]{4}\\-[0-9]{2}\\-[0-9]{2})?$"`

### Dates
https://git.opendatafrance.net/scdl/plats-menus-collectifs/-/blob/master/schema.json

	 "name":  "platPublicationDate",
	 "title":  "Date de publication de l'enregistrement d'un plat",
	 "description":  "Lors de la publication ce champ d'horodatage permet d'indiquer la date de publication de la donnée présente dans le fichier.",
	 "type":  "datetime",
	 "examples":  "2020-05-11T14:08:32Z",
	 "constraints":  {
	 "required":  true,
	 "pattern":  "^\\d{4}-[01]\\d-[0-3]\\d([+-][0-2]\\d:[0-5]\\dZ?)?$"
	 }
	 },

## Dates
        "dateNotification": {
          "title": "Date de la notification du marché",
          "description": "Date à laquelle le marché a été notifié au(x) titulaire(s), au format AAAA-MM-JJ.",
          "type": "string",
          "pattern": "^\\d{4}-[01]\\d-[0-3]\\d([+-][0-2]\\d:[0-5]\\dZ?)?$"
        },
        "datePublicationDonnees": {
          "title": "Date de la publication des données essentielles du marché",
          "description": "Date à laquelle les données essentielles du marché décrit ont été publiées pour la première fois. Cette date n'est donc pas mise à jour en cas de modification du marché.",
          "type": "string",
          "pattern": "^\\d{4}-[01]\\d-[0-3]\\d([+-][0-2]\\d:[0-5]\\dZ?)?$"
        },