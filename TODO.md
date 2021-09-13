### 13 Septembre
- [ ] v0.7.0 : champs EMPRISE_DEBUT_POINT, EMPRISE_FIN_POINT, champs ID en format UUID, utilisation du GeoJSON ?

### 2 Septembre
- [ ] Mettre plusieurs exemples entre crochets : [exemple1, exemple2]

### 31 Août
- Format plus simple pour les heures : pas le format time, mais character, type 22:00 au lieu de 22:00:00

### 10 Août
- [ ] Mettre EMPRISE_SENS après EMPRISE_FIN
- [x] Mettre ARR_DATE en required:false > on reste en true, mais on propose de mettre la valeur NC si pas renseigné

### 20 Juillet 2021
- [x] Parler du formatage UTF-8
- [x] Parler de la création du CSV et du délimiteur utilisé
- [x] Revoir le contenu de VEH_USAGES.csv
- [x] Réorganiser le repo avec des sous-dossiers pour faciliter la lecture

### schema.json
- [x] créer un exemple valide
- [ ] demander la nomination d'une ressource de type arrêté, une description du schéma
- [x] demander si Nicolas Berthelot souhaite être inclus dans la liste

### Fields
- [x] Mettre des points à la fin ?
- [x] Voir le regex des URLs
- [x] Obligé de mettre constraint required si false ?
- [x] Voir les autres contraintes (clé primaire, etc...)
- [x] Voir les valeurs par défaut => n'existe pas dans le table schema
- [x] number ou integer
- [x] max pour PTAC, etc...
- [x] lien vers les vignettes crit'air ?
- [x] type duration ? => trop compliqué niveau notation
- [x] revoir la regex des durées et des heures : limiter les heures et les minutes
- [x] mettre un lien vers le geojson
