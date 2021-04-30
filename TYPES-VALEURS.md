## Types de valeurs (boolean, etc...)

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

### Horaires

     {
            "name":"horaires",
            "description":"Ce champ permet de renseigner, si l'information est connue, les jours et horaires d'ouverture de l'équipement",
            "example":"Mo-Fr 08:00-20:00",
            "type":"string",
            "constraints":{
                "required":false
            }
        },

### Boolean

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

### Texte

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


### identifiant uuid

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

### Entier

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

### flottant

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

### min et max

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