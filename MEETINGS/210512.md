>Réunion du 12 Mai avec Etalab

### ODJ
- le schéma
- autorise / interdit
- géométrie
- duplication de lignes
- type Array
- examples
- Appel à contributions
- La suite ?
- saisie géométrique

### Notes
- Ajout de CI
- IRVE : champ Opening Hours : s'en inspirer avec la regex
- dépend de frictionless
- Schéma autour des vélos qui l'implémente
- Prochaine version min de frictionless

### TODO
Rajouter exemple-valide


### Tests
run: |
        frictionless validate --type schema schema.json
        frictionless validate --schema schema.json exemple-valide.csv

### Format URL
Format URI pour les URLs
https://github.com/etalab/schema-stationnement-cyclable/blob/a8d9c1b6cd77ab07f06f413715c9df5e51e5d11a/schema.json#L427

### Format JSON pour les type Array
	"[""val1"",""val2""]"

- type Array multivalues
- Array doit être de forme JSON : \"["val1",  "val2"]\". Double quotes doublées

### ID
uuid, id d'OSM, Si vous n'avez pas d'id : https://heidi.app.etalab.studio