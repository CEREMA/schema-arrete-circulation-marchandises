## Conventions de nommage
Dans ce schéma, les champs sont écrits en majuscules. Le préfixe indique la famille du champ. Ces familles sont visualisables sur le diagramme des champs ci-dessous : 

<p align=center><img with=60% src=https://raw.githubusercontent.com/CEREMA/schema-arrete-circulation/master/mindmaps/arrete-circulation-marchandises.jpeg></p>

## Arrêtés, règlements et articles
Un arrêté comprend plusieurs articles. Voire il arrive que des sous-articles soient compris dans un article. On peut ainsi voir l'article 4 et le sous-article 4 bis. Le règlement est contenu, soit dans l'article, soit dans le sous-article si ce dernier existe.

Dans le schéma :

- les infos relatives à l'**arrêté** (référence, date de création,...) sont dans les champs de préfixe `ARR_`.  
- Les infos relatives au **règlement** (article ou sous-article qui le contient, autorisation ou interdiction) sont les champs de préfixe `REGL_`. 

Le **considérant** (`ARR_CONSIDERANT`) d'un arrêté est la justification, la considération selon laquelle la règlementation s'applique (limitation du bruit à certaines heures, heures de marché,...). Ce dernier apparaît explicitement dans un arrêté sous la forme _Considérant (...)_

## Géométrie
Dans ce schéma, le champ [GEOM_WKT](https://github.com/CEREMA/schema-arrete-permanent-circulation/blob/master/schema-page.md#g%C3%A9om%C3%A9trie-au-format-wkt---propri%C3%A9t%C3%A9-geom_wkt) permet d'intégrer la géométrie de la voie, ou de la portion de voie réglementée au format WKT. Le support du WKT (Well Known Text) a été préféré au JSON car davantage utilisé dans les services SIG et de digitalisation.

On peut utiliser [l'assistant](https://cerema-med.shinyapps.io/groom-groom) pour géoréférencer des rues et en récupérer la géométrie WKT (disponible que sur PACA et Île-de-France pour le moment).

## Duplication
Dans ce schéma, chaque entité (ligne du tableau) concerne une voie et un règlement associé. 

Sachant qu'un règlement peut concerner plusieurs voies et qu'une voie peut posséder plusieurs règlements, la donnée finale prendra la forme d'une donnée "aplatie" avec une duplication des lignes le long des multiples voies associées à un règlement, et le long des multiples règlements associés à une voie.
 
Ci-dessous, le règlement 1 s'applique à deux voies : les voies 1 et 2. Cela peut être le cas si un règlement s'applique à une aire piétonne (celle-ci étant définie par ses voies)
 
 Voie | Réglement |
 -- | -- |
 Voie 1 | Regl1 |
 Voie 2| Regl1 |
 
 
 Ci-dessous, 2 règlements s'appliquent à la voie 3. Cela peut être le cas si un premier règlement interdit les poids lourds, et un autre autorise ceux de livraison.

 Voie | Réglement |
 -- | -- |
 Voie 3| Regl1 |
 Voie 3| Regl2 |

Ainsi, il se peut que vous deviez dupliquer certaines informations dans votre tableau lorsque vous saisirez des données. 

Cela est notamment dû au fait que nous avons souhaité que tout un chacun puisse produire les données d'arrêtés sous la forme d'un seul fichier. L'adoption d'un modèle de données relationnel, avec plusieurs tableaux de saisie ou bien d'un format de fichiers arborescent type JSON aurait permis d'éviter cette duplication, mais aurait d'un autre côté rendu la saisie plus complexe et moins accessible.
