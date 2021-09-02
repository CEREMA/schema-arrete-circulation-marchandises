Une première étape est de s'entourer de spécialistes du domaine, ici la logistique, ainsi que de spécialistes de la donnée, pour les aspects conception de la donnée.

Le premier modèle de schéma peut être élaboré par le biais d'un framacalc, et mis à jour en continu, au fur et à mesure des remarques.

## Un seul fichier
De prime abord, il nous semblait crucial de concentrer les informations relatives à l'arrêté dans un seul fichier

## CamelCase, pascalCase, ou champs en majuscules ?
Pour l'écriture des champs, un choix peut être réalisé entre le pascalCase, le CamelCase, utilisées dans le monde informatique, ou bien des écritures un peu plus conventionnelles.

Dans notre cas, nous avons choisi d'utiliser les majuscules, et un séparateur underscore _, et de ne pas mélanger majuscules et minuscules.

L'utilisation du tout majuscules permet de donner du "poids" au standard, en rappelant l'aspect règlementaire du domaine (arrêtés de circulation)

## Préfixes et groupes de champs
Nous avons apposé en préfixe le domaine associé à chaque champ, les domaines étant les suivants :

- l'arrêté (préfixe ARR)
- le règlement (REGL)
- les véhicules (VEH)
- l'emprise concernée par la règlementation (EMPRISE)
- la temporalité (PERIODE)
- la géométrie (GEOM)

Ainsi, la date d'un arrêté sera nommé ARR_DATE, sa référence ARR_REF

Les usages associés à un véhicules seront dans un champ VEH_USAGES

Le préfixes n'excèdent pas 4 caractères.

## Noms de champs au pluriel
Afin de faciliter la lecture du schéma, nous avons apposé un S aux champs acceptant des valeurs multiples. Comme délimiteur, nous avons opté pour la barre |

Nous ne pouvions utiliser la virgule, car celle-ci aurait pu appraître dans une des valeurs du champ VEH_USAGES (ex. xxx)

## Gestion des valeurs multiples
Un modèle relationnel aurait normalement été d'usage pour ce type de données. En effet, plusieurs règlements peuvent être associés à un arrêté, plusieurs rues peuvent être concernées par un règlement. Et d'ailleurs, une rue peut aussi être associée à plusieurs règlements.

### MCD

La concentration dans un seul fichier a du coup représenté un défi, et nous a demandés de recourir au maximum aux valeurs multiples. Pour les jours et horaires de circulation nous avons opté pour un champ unique au format Opening Hours.

## Opening Hours
Pour les jours et horaires de circulation, la question s'est posée de créer un champ JOUR, un champ HORAIRE, mais le format opening Hours nous a permis de faire l'économie de plusieurs champs.

## Modalité (Interdiction ou Autorisation)
Dans les arrêtés, certaines clauses mentionnent une interdiction stricte, ou une autorisation, ou bien, une interdiction à l'exception de ...

Dans nos premières réflexions, nous pensions dupliquer ces deux modalités (Interdiction, Autorisation) le long des différentes colonnes

Ainsi, pour le cas "Tous les poids lourds sont interdits de circuler sauf à l'exception de ceux de livraison", nous aurions eu

 VEH_TYPES_INTERDIT | VEH_USAGES_INTERDIT | VEH_TYPES_AUTORISE | VEH_USAGES_AUTORISE |
 ---- | ---- | ---- | ---- |
Poids lourds | | Poids lourds | Autorise

Mais le souci est que l'on aurait dû décliner ces modalités le long des autres colonnes : VEH_HAUTEUR, VEH_LARGEUR, VEH_TONNAGE, ce qui aurait considérablement augmenté le nombre de colonnes à remplir, et diminué fortement l'ergonomie de la saisie.

Le choix a donc été fait d'introduire le champ REGL_MODALITE, si bien que l'on a :

REGL_MODALITE | VEH_TYPES | VEH_USAGES |
 ---- | ---- | ---- |
Interdit | Poids lourds | 
Autorise | Poids lourds | Livraison

## Champ requis ou pas
Une option dans TableSchema permet de dire si un champ est requis (required : true) ou pas (required : false)

Pour faciliter la saisie, il est important de limiter au maximum le nombre de champs requis à ceux qui sont vraiment essentiels.

Mais si certains champs sont essentiels, il s'avère qu'on ne peut trouver d'information à ces derniers. Ca peut être le cas de la référence de l'arrêté. Celle-ci permet d'identifier précisément un arrêté. Il est donc essentiel. Malgré tout, nous ne le trouvons pas toujours. Dans une situation intermédiaire comme celle-ci (requis mais n'existe pas toujours), on peut inviter l'utilisateur à indiquer la valeur NC qui signifie Non renseigné.

## Ordre des champs
L'ordre des champs est important ergonomiquement. Dans l'idéal, il doit suivre le sens de lecture du document duquel l'information est dématérialisée. Ainsi, si en en-tête, la référence et l'objet de l'arrêté apparaissent, alors cela a un sens de les positionner en premières colonnes du fichier à remplir.

Le format TableSchema est sensible à l'ordre des champs. Si par exemple, dans votre fichier, le champ COLL_INSEE apparaît après ARR_DATE, alors cela génèrera une erreur.

## Expressions régulières

## Géométrie et GEOM_WKT
Les données issues des arrêtés de circulation concernent le plus souvent des rues auxquelles s'appliquent des règlementations spécifiques.

Ainsi, l'objet principal est la rue. C'est d'ailleurs pourquoi le choix a été fait de ne pas rassembler les rues concernées par un même règlement dans un même champ, hormis le fait que cela les rend plus lisibles dans le fichier.

Si l'on suit le TableSchema, les données géographiques (où une ligne du tableau possède une géométrie) devraient être produites en GeoJSON. On retrouve ce format pour les ZFE (xxx) ou bien les IRVE (xxx).

## La géométrie dans les tableSchema
Malgré tout, il est possible d'encoder la géométrie dans un schema, même pour des fichiers CSV, notamment pour les points ([geopoint](https://specs.frictionlessdata.io/table-schema/#geopoint)), voire même tous les autres types de géométrie, mais en [geojson](https://specs.frictionlessdata.io/table-schema/#geojson)

## Edition en CSV, dans un tableur
Aussi, l'édition de GeoJSON ne peut se faire dans un tableur, contrairement à un fichier CSV, ce qui limiterait le périmètre potentiel des producteurs de données.

## WKT plus populaire dans le monde du SIG
Le WKT est une façon de formaliser la géométrie, la géographie bien plus commune dans le milieu de la géomatique que le JSON. Hors, nous sommes partis du postulat que ce seraient les géomaticiens à qui s'adresserait l'opération de géoréférencement des rues.

## WKT moins verbeux
Le WKT est aussi moins verbeux que le GeoJSON, et nous semble plus confortable à saisir dans un tableur type Excel.

Par ex. xxx

Par contre, TableSchema ne comprend pas dans ses spécifications la norme Well Known Text

> A noter que Google est à l'initiative d'un format appelé Google Encoded Polyline Algorithm Format permettant d'encoder de façon assez courte la géométrie de lignes (ce format est utilisé pour représenter des itinéraires, notamment)

## Une édition en deux temps
Nous sommes partis du principe que les fichiers de données pouvaient dans un premier temps être saisis, sans notion de géographie ou de géométrie de rues.

Nous avons imaginé que dans un second temps, la géométrie des rues pouvait être ajoutée aux fichiers par des réutilisateurs désireux de produire des cartes, intégrer des données dans leur SIG.

- article : mcd, mpd théorique
- création du schéma : required, NC, ordre des champs, S pour les champs multiples, majuscules, expressions régulières, séparateurs

# Assistant
Certains champs sont complexes à remplir dans le schéma, tels que GEOM_WKT qui contient la chaîne Well-Known-Text de la géométrie des rues.

Afin de lever des interrogations sur les identifiants (champs ID), nous proposons, dans la description du champ, d'utiliser le service heidi.xxx

Pour renseigner la géométrie de rues, nous avons développé un assistant qui permet de les donner à l'utilisateur lorsque celui-ci tape le nom d'une rue.

Cet assistant permet aussi d'assister la création de chaînes Opening Hours pour les jours et horaires de circulation.

# Propositions
Une proposition pourrait être d'intégrer Opening Hours comme format dans TableSchema, ainsi que le Well-Known-Text. En effet, l'intégration dans TableSchema de ces formats, permettrait d'automatiquement valider la conformité de champs à ces formats.


# Description des champs
La description des champs