## Procédure

Phases `Investigation > Concertation > Construction`

### Investigation
- Entrer en contact avec https://www.etalab.gouv.fr/contact en référençant le schéma

- En ouvrant un ticket sur GitHub ;
https://github.com/etalab/schema.data.gouv.fr/issues/new?template=referencer-un-schema.md

Voir par exemple ticket ODF akakerenos https://github.com/etalab/schema.data.gouv.fr/issues/63

En envoyant un e-mail à l'adresse schema@data.gouv.fr.

#### Schémas en cours d'investigation et de construction
http://schema.data.gouv.fr/documentation/schemas-investigation-construction

### Concertation
- concertation : utiliser **framapad**
- obtenir plein de **retours**
- éviter redondances

> Au sujet d'un schéma : préciser le nom d’une commune en plus de son code INSEE rend les données plus faciles à lire et à exploiter.

### Construction : phase technique
- **modèle** de départ : https://github.com/etalab/tableschema-template
- README : le contexte, les modalités de production des données, le cadre juridique, la finalité, les cas d’usage etc (ex. https://github.com/etalab/schema-stationnement/blob/master/README.md)
- Demander l'**intégration** du schéma : https://guides.etalab.gouv.fr/producteurs-schemas/integration-schema-datagouv/

#### Détails techniques
- Modifier le fichier repertoires.yml de https://github.com/etalab/schema.data.gouv.fr
> schéma generic possible

- Créer un dépot Git
- Y mettre le schema.json
- Y mettre un schema.md
- Y mettre un readme.md (ex. https://github.com/etalab/schema-stationnement/blob/master/README.md)
- CHANGELOG.md
- Y mettre un dossier examples avec valid / non valid
> S'appuyer sur l'expérience de SCDL

### Validation
- Valider le schéma de données sur schema.data.gouv.fr
- L'adresse aura la structure suivante https://schema.data.gouv.fr/{organisation}/{dépôt}/{version}.html.
- Les schémas valides sont dispos à l'adresse https://schema.data.gouv.fr/schemas/schemas.zip
- Le fichier yaml est celui-ci https://schema.data.gouv.fr/schemas/schemas.yml
- Le fichier schema.json est https://schema.data.gouv.fr/schemas/schemas.json

## Contacts
- schema@data.gouv.fr
- https://www.etalab.gouv.fr/contact