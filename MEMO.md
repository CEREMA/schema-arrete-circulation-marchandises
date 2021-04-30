# Schéma arrêté de circulation

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




## Notes

Livraison et circulation

stationnement sur aire de livraison

stationnement véhicule léger différent

